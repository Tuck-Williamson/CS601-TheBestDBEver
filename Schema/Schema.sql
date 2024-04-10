CREATE SCHEMA IF NOT EXISTS TheBestDBEver;
SET SCHEMA 'thebestdbever';

DROP TABLE IF EXISTS thebestdbever.shift CASCADE ;
CREATE TABLE IF NOT EXISTS thebestdbever.shift
(
    ShiftID serial NOT NULL,
    Date date NOT NULL,
    StartTime time NOT NULL,
    Duration interval NOT NULL,

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
    SSN char(9) NOT NULL,
    FirstName varchar(255) NOT NULL,
    LastName varchar(255) NOT NULL,
    StartDate date NOT NULL,
    PhoneNumber varchar(11) NOT NULL,
    Pos thebestdbever.position NOT NULL,

    PRIMARY KEY (SSN)
);

DROP TABLE IF EXISTS thebestdbever.works_on_shift;
CREATE TABLE works_on_shift
(
    shiftid        int        NOT NULL
        CONSTRAINT wos_shift___fk
            REFERENCES shift
            ON UPDATE CASCADE ON DELETE CASCADE,
    ssn            varchar(9) NOT NULL
        CONSTRAINT wos_SSN___fk
            REFERENCES employee
            ON UPDATE CASCADE ON DELETE CASCADE,
    HeadPosition thebestdbever.position,
    PRIMARY KEY (shiftid, ssn)
);

DROP FUNCTION IF EXISTS wos_get_filled_positions;
CREATE OR REPLACE FUNCTION wos_get_filled_positions(sId int) RETURNS TABLE (p thebestdbever.position)
AS
$$
BEGIN
    RETURN QUERY (SELECT works_on_shift.HeadPosition FROM works_on_shift WHERE shiftid = sId);
END;
$$ LANGUAGE plpgsql;
DROP FUNCTION IF EXISTS wos_position_filled;
CREATE OR REPLACE FUNCTION wos_get_filled_positions(sId int) RETURNS TABLE (p thebestdbever.position)
AS
$$
BEGIN
    RETURN QUERY (SELECT works_on_shift.HeadPosition FROM works_on_shift WHERE shiftid = sId);
END;
$$ LANGUAGE plpgsql;

SELECT wos_get_filled_positions(CAST(1 AS INT));

CREATE OR REPLACE FUNCTION wos_trigger_check_all_pos_filled()
    RETURNS TRIGGER AS
$wos_trigger_check_all_pos_filled$
DECLARE
    new_pos    thebestdbever.position;
    filled_pos  thebestdbever.position[];
--     none_filled bool;
    -- These are position subtype arrays.
    -- The canonical HeadPosition for each subtype is the first value in the array.
    chefs      thebestdbever.Position[] = ARRAY ['Roast Chef', 'Sous Chef', 'Pastry Chef', 'Executive Chef'];
    waiters    thebestdbever.Position[] = ARRAY ['Sommelier', 'Runner', 'Captain', 'Waiter', 'Busboy', 'Back Waiter'];
    bartenders thebestdbever.Position[] = ARRAY ['Bartender', 'Barback'];
BEGIN
    RAISE NOTICE 'Begin: Works On Shift Trigger- check all positions filled.';
    IF NEW.HeadPosition IS NULL THEN
        -- Store the new data's position, then load all filled positions.
        SELECT thebestdbever.employee.pos INTO new_pos FROM thebestdbever.employee WHERE ssn = NEW.ssn LIMIT 1;
        filled_pos := ARRAY [(SELECT works_on_shift.HeadPosition FROM works_on_shift WHERE shiftid = NEW.shiftid)];
--         none_filled := cardinality(filled_pos) = 0;
        RAISE WARNING ':: new position: %, filled: %', new_pos, filled_pos;
        RAISE WARNING 'WHEN % = ANY (%) AND NOT % = ANY (%) THEN', new_pos, chefs, chefs[1], filled_pos;

        -- Check to see if this position already has a head. If not then make this employee the head.
        CASE new_pos
            WHEN new_pos = ANY (chefs) AND NOT chefs[1] = ANY (filled_pos) THEN
                -- Chefs doesn't have a head - set the new row's HeadPosition to the canonical value for chefs.
                -- The canonical value is why we can just check chefs[0] NOT IN (filled_pos) instead of each
                -- item in filled_pos against chefs.
                NEW.HeadPosition := chefs[1];
            WHEN new_pos = ANY (waiters) AND NOT waiters[1] = ANY (filled_pos) THEN
                NEW.HeadPosition := waiters[1];
            WHEN new_pos = ANY (bartenders) AND NOT bartenders[1] = ANY (filled_pos) THEN
                NEW.HeadPosition := bartenders[1];
            WHEN NOT new_pos = ANY (filled_pos)
                THEN -- We can just check against filled_pos because the rest of the positions don't have sub-specialties
                NEW.HeadPosition := new_pos;
        END CASE;
    END IF;

    RAISE NOTICE 'End: Works On Shift Trigger - check all positions filled.';
    RETURN NEW;
END ;
$wos_trigger_check_all_pos_filled$ LANGUAGE plpgsql;

-- Plan B
CREATE OR REPLACE FUNCTION wos_trigger_check_all_pos_filled()
    RETURNS TRIGGER AS
$wos_trigger_check_all_pos_filled$
DECLARE
    new_pos    varchar;
    filled_pos  thebestdbever.position[];
    -- These are position subtype arrays.
    -- The canonical HeadPosition for each subtype is the first value in the array.
    chefs      thebestdbever.Position[] = ARRAY ['Roast Chef', 'Sous Chef', 'Pastry Chef', 'Executive Chef'];
    waiters    thebestdbever.Position[] = ARRAY ['Sommelier', 'Runner', 'Captain', 'Waiter', 'Busboy', 'Back Waiter'];
    bartenders thebestdbever.Position[] = ARRAY ['Bartender', 'Barback'];
BEGIN
    RAISE NOTICE 'Begin: Works On Shift Trigger- check all positions filled.';
    IF NEW.HeadPosition IS NULL THEN
        -- Store the new data's position, then load all filled positions.
        SELECT thebestdbever.employee.pos INTO new_pos FROM thebestdbever.employee WHERE ssn = NEW.ssn LIMIT 1;
        filled_pos := ARRAY [(SELECT works_on_shift.HeadPosition FROM works_on_shift WHERE shiftid = NEW.shiftid)];
        RAISE WARNING ':: new position: %, filled: %', new_pos, filled_pos;
        RAISE WARNING 'WHEN % = ANY (%) AND NOT % = ANY (%) THEN', new_pos, chefs, chefs[1], filled_pos;

        -- Check to see if this position already has a head. If not then make this employee the head.
        CASE new_pos
            WHEN new_pos = ANY (chefs) AND NOT chefs[1] = ANY (filled_pos) THEN
                -- Chefs doesn't have a head - set the new row's HeadPosition to the canonical value for chefs.
                -- The canonical value is why we can just check chefs[0] NOT IN (filled_pos) instead of each
                -- item in filled_pos against chefs.
                NEW.HeadPosition := chefs[1];
            WHEN new_pos = ANY (waiters) AND NOT waiters[1] = ANY (filled_pos) THEN
                NEW.HeadPosition := waiters[1];
            WHEN new_pos = ANY (bartenders) AND NOT bartenders[1] = ANY (filled_pos) THEN
                NEW.HeadPosition := bartenders[1];
            WHEN NOT new_pos = ANY (filled_pos)
                THEN -- We can just check against filled_pos because the rest of the positions don't have sub-specialties
                NEW.HeadPosition := new_pos;
        END CASE;
    END IF;

    RAISE NOTICE 'End: Works On Shift Trigger - check all positions filled.';
    RETURN NEW;
END ;
$wos_trigger_check_all_pos_filled$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER wos_trigger_check_wos
    BEFORE INSERT
    ON works_on_shift
    FOR EACH ROW EXECUTE FUNCTION wos_trigger_check_all_pos_filled();

DROP TABLE IF EXISTS thebestdbever.customer;
CREATE TABLE customer
(
    CustomerID SERIAL NOT NULL,
    LastName VARCHAR(255) NOT NULL ,
    FirstName VARCHAR(255),
    PhoneNumber VARCHAR(11) NOT NULL,
    Comment VARCHAR(255),
    VIP BOOL,

    PRIMARY KEY (CustomerID)
);

DROP TABLE IF EXISTS thebestdbever.top;
CREATE TABLE top
(
    TopID SERIAL NOT NULL,
    Capacity INT NOT NULL,
    Type VARCHAR(255) NOT NULL,

    PRIMARY KEY(TopID)

);

DROP TABLE IF EXISTS thebestdbever.reservation;
CREATE TABLE reservation
(
    ReservationID serial NOT NULL,
    CustomerID int NOT NULL
        CONSTRAINT CID___fk
        REFERENCES thebestdbever.customer
        ON UPDATE CASCADE ON DELETE CASCADE,

    Date date NOT NULL,
    Time time NOT NULL,
    PartySize INT NOT NULL,
    Occasion varchar(255),
    Comment varchar(255),
    SeatedTime time NOT NULL,
    TopID INT NOT NULL
    CONSTRAINT TID___fk
    REFERENCES thebestdbever.top
    ON UPDATE CASCADE ON DELETE CASCADE,

    PRIMARY KEY(ReservationID)

);