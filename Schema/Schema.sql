CREATE SCHEMA IF NOT EXISTS TheBestDBEver;
SET SCHEMA 'thebestdbever';

DROP TABLE IF EXISTS thebestdbever.shift CASCADE;
CREATE TABLE IF NOT EXISTS thebestdbever.shift
(
    ShiftID   serial   NOT NULL,
    Date      date     NOT NULL,
    StartTime time     NOT NULL,
    Duration  interval NOT NULL,

    PRIMARY KEY (ShiftID)
);

-- UPDATE WOS TRIGGER IF POSITIONS ARE ADDED
DROP TYPE IF EXISTS thebestdbever.position CASCADE;
CREATE TYPE position AS ENUM (
    'Roast Chef',
    'Sous Chef',
    'Pastry Chef',
    'Executive Chef',
    'Hosts',
    'Manager',
    'Sommelier',
    'Runner',
    'Captain',
    'Waiter',
    'Busboy',
    'Back Waiter',
    'Bartender',
    'Barback'
    );

DROP TABLE IF EXISTS thebestdbever.employee CASCADE;
CREATE TABLE IF NOT EXISTS thebestdbever.employee
(
    SSN         char(9)                NOT NULL,
    FirstName   varchar(255)           NOT NULL,
    LastName    varchar(255)           NOT NULL,
    StartDate   date                   NOT NULL,
    PhoneNumber varchar(11)            NOT NULL,
    Pos         thebestdbever.position NOT NULL,

    PRIMARY KEY (SSN)
);

DROP TABLE IF EXISTS thebestdbever.works_on_shift;
CREATE TABLE works_on_shift
(
    shiftid      int        NOT NULL
        CONSTRAINT wos_shift___fk
            REFERENCES shift
            ON UPDATE CASCADE ON DELETE CASCADE,
    ssn          varchar(9) NOT NULL
        CONSTRAINT wos_SSN___fk
            REFERENCES employee
            ON UPDATE CASCADE ON DELETE CASCADE,
    HeadPosition thebestdbever.position,
    PRIMARY KEY (shiftid, ssn)
);


DROP TABLE IF EXISTS thebestdbever.customer;
CREATE TABLE customer
(
    CustomerID  SERIAL       NOT NULL,
    LastName    VARCHAR(255) NOT NULL,
    FirstName   VARCHAR(255),
    PhoneNumber VARCHAR(11)  NOT NULL,
    Comment     VARCHAR(255),
    VIP         BOOL,

    PRIMARY KEY (CustomerID)
);

DROP TABLE IF EXISTS thebestdbever.top;
CREATE TABLE top
(
    TopID    SERIAL       NOT NULL,
    Capacity INT          NOT NULL,
    Type     VARCHAR(255) NOT NULL,

    PRIMARY KEY (TopID)

);

DROP TABLE IF EXISTS thebestdbever.reservation;
CREATE TABLE reservation
(
    ReservationID serial NOT NULL,
    CustomerID    int    NOT NULL
        CONSTRAINT CID___fk
            REFERENCES thebestdbever.customer
            ON UPDATE CASCADE ON DELETE CASCADE,

    Date          date   NOT NULL,
    Time          time   NOT NULL,
    PartySize     INT    NOT NULL,
    Occasion      varchar(255),
    Comment       varchar(255),
    SeatedTime    time   NOT NULL,
    TopID         INT    NOT NULL
        CONSTRAINT TID___fk
            REFERENCES thebestdbever.top
            ON UPDATE CASCADE ON DELETE CASCADE,

    PRIMARY KEY (ReservationID)

);


DROP FUNCTION IF EXISTS wos_canon_pos;
-- This function gets the 'canonical' position from the given employee's position.
-- Making a single element of sub-specialities 'canon' just makes the checking
--  for HeadPositions easier.
-- Param: sommelierRequired - should be True for evening shifts.
CREATE OR REPLACE FUNCTION wos_canon_pos(empPos thebestdbever.position,
                                         sommelierRequired bool)
    RETURNS thebestdbever.position
AS
$$
DECLARE
    -- These are position subtype arrays.
    -- The canonical HeadPosition for each subtype is the first value in
    --  the array. Because of this Sommelier cannot be the first one in
    --  the waiter category.
    chefs          thebestdbever.Position[] = ARRAY ['Roast Chef', 'Sous Chef',
        'Pastry Chef', 'Executive Chef'];
    waiters        thebestdbever.Position[] = ARRAY ['Captain', 'Sommelier', 'Runner',
        'Waiter', 'Busboy', 'Back Waiter'];
    waitersNoSomm  thebestdbever.Position[] = ARRAY ['Captain', 'Runner',
        'Waiter', 'Busboy', 'Back Waiter'];
    bartenders     thebestdbever.Position[] = ARRAY ['Bartender', 'Barback'];
    waitersToCheck thebestdbever.position[] := waiters;
BEGIN
    -- This is how we handle Sommelier differently
    --  if sommelierRequired (it's a night shift).
    IF sommelierRequired THEN
        waitersToCheck := waitersNoSomm;
    end if;
    IF empPos = ANY (chefs) THEN
        RETURN chefs[1];
    ELSEIF empPos = ANY (waitersToCheck) THEN
        RETURN waiters[1];
    ELSEIF empPos = ANY (bartenders) THEN
        RETURN bartenders[1];
    ELSE
        -- We can just check against filled_pos because the
        --  rest of the positions don't have sub-specialties.
        -- This is the fall thru for Sommelier if sommelierRequired.
        RETURN empPos;
    END IF;
END;
$$ LANGUAGE plpgsql;

-- From our requirements document this addresses business requirements in 2.I, 2.II
CREATE OR REPLACE FUNCTION wos_trigger_check_pos_filled()
    RETURNS TRIGGER AS
$wos_trigger_check_all_pos_filled$
DECLARE
    new_pos           thebestdbever.position;
    sommelierRequired bool := TRUE;
BEGIN
--     RAISE NOTICE 'Begin %: Works On Shift Trigger- check all positions filled.', tg_name;
    IF NEW.HeadPosition IS NULL THEN
        -- We get the position from the employee ssn; however, for sub-specialties
        --  we make one of them 'cannon' that stand for all the sub-specialties in
        --  each parent specialty.

        SELECT time_ge(starttime, '16:00') as sReq INTO sommelierRequired FROM thebestdbever.shift WHERE shiftid = NEW.shiftid;
        new_pos :=
                wos_canon_pos(cast((SELECT e.pos
                                    FROM thebestdbever.employee as e
                                    WHERE e.ssn = NEW.ssn
                                    LIMIT 1) as thebestdbever.position),
                              sommelierRequired);

        -- We check if the position already is filled.
        --  If so we don't need to make this one the HeadPosition otherwise just set HeadPosition
        IF new_pos NOT IN
           (SELECT DISTINCT works_on_shift.HeadPosition FROM works_on_shift WHERE shiftid = NEW.shiftid) THEN
            RAISE NOTICE '::% - Setting employee as HeadPosition for shift. Data: %', tg_name, NEW;
            NEW.HeadPosition = new_pos;
        END IF;
    END IF;

--     RAISE NOTICE 'End %: Works On Shift Trigger - check all positions filled.', tg_name;
    RETURN NEW;
END ;
$wos_trigger_check_all_pos_filled$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER wos_trigger_check_wos_insert
    BEFORE INSERT
    ON works_on_shift
    FOR EACH ROW
EXECUTE FUNCTION wos_trigger_check_pos_filled();

------------------------------------------------------
-- Keep these at the bottom so any errors
--  are printed last in the console.
------------------------------------------------------
-- Code checks

do
$$
    DECLARE
        --Get the canon waiter, bartender, and chef
        waitCanon thebestdbever.position;
        barCanon  thebestdbever.position;
        chefCanon thebestdbever.position;
    BEGIN
        RAISE NOTICE 'Beginning Test Cases.';

        waitCanon := wos_canon_pos(empPos := 'Back Waiter', sommelierRequired := false);
        IF wos_canon_pos(empPos := 'Busboy', sommelierRequired := FALSE) <> waitCanon OR
           wos_canon_pos(empPos := 'Captain', sommelierRequired := FALSE) <> waitCanon OR
           wos_canon_pos(empPos := 'Runner', sommelierRequired := FALSE) <> waitCanon OR
           wos_canon_pos(empPos := 'Sommelier', sommelierRequired := FALSE) <> waitCanon OR
           wos_canon_pos(empPos := 'Waiter', sommelierRequired := FALSE) <> waitCanon THEN
            RAISE EXCEPTION 'Waiter mapping incorrect.';
        ELSE
            RAISE NOTICE '::Waiters passed.';
        END IF;

        barCanon := wos_canon_pos(empPos := 'Barback', sommelierRequired := false);
        IF wos_canon_pos(empPos := 'Bartender', sommelierRequired := FALSE) <> barCanon THEN
            RAISE EXCEPTION 'Bartender mapping incorrect.';
        ELSE
            RAISE NOTICE '::Bartenders passed.';
        END IF;

        chefCanon := wos_canon_pos(empPos := 'Sous Chef', sommelierRequired := false);
        IF wos_canon_pos(empPos := 'Roast Chef', sommelierRequired := FALSE) <> chefCanon OR
           wos_canon_pos(empPos := 'Pastry Chef', sommelierRequired := FALSE) <> chefCanon OR
           wos_canon_pos(empPos := 'Executive Chef', sommelierRequired := FALSE) <> chefCanon THEN
            RAISE EXCEPTION 'Chef mapping incorrect.';
        ELSE
            RAISE NOTICE '::Chefs passed.';
        END IF;

        RAISE NOTICE 'Tests complete.';
    END;
$$ LANGUAGE plpgsql;
