CREATE SCHEMA IF NOT EXISTS TheBestDBEver;
SET SCHEMA 'thebestdbever';

DROP TABLE IF EXISTS thebestdbever.shift CASCADE;
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

DROP TYPE IF EXISTS thebestdbever.headPosition CASCADE;
CREATE TYPE thebestdbever.headPosition AS ENUM (
    'Head Chef',
    'Head Hosts',
    'Head Manager',
    'Head Sommelier',
    'Head Waiter',
    'Head Bartender'
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
    HeadPosition thebestdbever.headPosition,
    PRIMARY KEY (shiftid, ssn)
);

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


-- Create MENU_ITEM Table
DROP TABLE IF EXISTS thebestdbever.menu_item;
CREATE TABLE menu_item
(
    ItemID SERIAL NOT NULL,
    Title varchar(255) NOT NULL,
    Description varchar(255),
    Active BOOLEAN NOT NULL,
    Type varchar(255),
    Allergens varchar(255),
    Price NUMERIC NOT NULL,
    Quantity INT,

    PRIMARY KEY (ItemID)
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


-- Create MENU_ITEM Table
DROP TABLE IF EXISTS thebestdbever.menu_item;
CREATE TABLE menu_item
(
    ItemID SERIAL NOT NULL,
    Title varchar(255) NOT NULL,
    Description varchar(255),
    Active BOOLEAN NOT NULL,
    Type varchar(255),
    Allergens varchar(255),
    Price NUMERIC NOT NULL,
    Quantity INT,

    PRIMARY KEY (ItemID)
);

-- Create ORDER_ITEM Table
DROP TABLE IF EXISTS thebestdbever.order_item;
CREATE TABLE order_item
(
    OrderID SERIAL NOT NULL,
    Quantity INT NOT NULL,
    ItemID INT NOT NULL,
    Time TIME,
    TopID INT NOT NULL
        CONSTRAINT T_ID____FK
            REFERENCES thebestdbever.top
            ON UPDATE CASCADE ON DELETE CASCADE,
    ResID INT NOT NULL
        CONSTRAINT R_ID____FK
            REFERENCES thebestdbever.reservation
            ON UPDATE CASCADE ON DELETE CASCADE,
    WaitedOn char(9) NOT NULL
        CONSTRAINT W_ID____FK
            REFERENCES thebestdbever.employee
            ON UPDATE CASCADE ON DELETE CASCADE,
    ShiftID INT NOT NULL,

    PRIMARY KEY (OrderID),
    FOREIGN KEY (ItemID) REFERENCES thebestdbever.menu_item(ItemId)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ShiftID) REFERENCES thebestdbever.shift(shiftid)
);

DROP FUNCTION IF EXISTS wos_canon_pos;

-- This function maps entries in the thebestdbever.position enum to
--  the corresponding head position in thebestdbever.headposition enum.
-- Param: sommelierRequired - should be True for evening shifts.
CREATE OR REPLACE FUNCTION wos_canon_pos(empPos thebestdbever.position,
                                         sommelierRequired bool)
    RETURNS thebestdbever.headPosition
AS
$$
DECLARE
    -- These are position subtype arrays.
    chefs          thebestdbever.Position[] = ARRAY ['Roast Chef', 'Sous Chef',
        'Pastry Chef', 'Executive Chef'];
    waiters        thebestdbever.Position[] = ARRAY ['Captain', 'Sommelier', 'Runner',
        'Waiter', 'Busboy', 'Back Waiter'];
    waitersNoSomm  thebestdbever.Position[] = ARRAY ['Captain', 'Runner',
        'Waiter', 'Busboy', 'Back Waiter'];
    bartenders     thebestdbever.Position[] = ARRAY ['Bartender', 'Barback'];
    -- Just default this as if sommelierRequired == FALSE, then change waitersToCheck
    --  to refer to waitersNoSomm if sommelierRequired == TRUE.
    waitersToCheck thebestdbever.position[] := waiters;
BEGIN
    -- If sommelierRequired (it's a night shift), so then we check against the
    --  waitersNoSomm instead.
    IF sommelierRequired THEN
        waitersToCheck := waitersNoSomm;
    END IF;

    -- Return the item from the headposition enum that corresponds to the employee's
    --  position which may be a sub-position (the first several tests are against
    --  sub-position arrays.
    IF empPos = ANY (chefs) THEN
        RETURN 'Head Chef';
    ELSEIF empPos = ANY (waitersToCheck) THEN
        RETURN 'Head Waiter';
    ELSEIF empPos = ANY (bartenders) THEN
        RETURN 'Head Bartender';
    ELSE
        -- This is the fall thru for Sommelier if sommelierRequired.
        -- The headPosition enum was constructed such that anything that doesn't have
        --  sub-positions is just 'Head ' prefixing the position.
        RETURN CONCAT('Head ', TEXT(empPos));
    END IF;
END;
$$ LANGUAGE plpgsql;

-- From our requirements document  this addresses business requirements in 2.I, 2.II
CREATE OR REPLACE FUNCTION wos_trigger_check_pos_filled()
    RETURNS TRIGGER AS
$wos_trigger_check_all_pos_filled$
DECLARE
    -- This is the employee's current position
    empPos                thebestdbever.Position;
    -- This is the head position from the headPosition enum for the employee's position.
    headPos               thebestdbever.headPosition;
    -- THIS IS THE TIME CUTOFF FOR SOMMELIER REQUIRED!
    minShiftTimeForSomReq shift.starttime%type := '16:00';
    sommelierRequired     bool                 := TRUE;
BEGIN
    --     RAISE NOTICE 'Begin %: Works On Shift Trigger- check all positions filled.', tg_name;
    SELECT time_ge(starttime, minShiftTimeForSomReq)
        INTO sommelierRequired
        FROM thebestdbever.shift
        WHERE shiftid = NEW.shiftid;
    SELECT e.pos INTO empPos FROM thebestdbever.employee AS e WHERE e.ssn = NEW.ssn LIMIT 1;
    headPos := wos_canon_pos(empPos, sommelierRequired);

    IF NEW.HeadPosition IS NULL THEN
        IF tg_op = 'UPDATE' AND OLD.headposition IS NOT NULL THEN
            -- We want to allow the user to mark someone else as the head position. In order to allow this we see if
            --  1. We are updating, not inserting
            --  2. If updating and updating such that the OLD.headPosition <> NULL and NEW.headPosition = NULL then we
            --     assume the user is about to assign someone else to this headPosition.
            --     If we didn't do this check the only way to assign a different employee to a headPosition would be to
            --     delete the current head from the shift and then set the headPosition by inserting a new employee or
            --     updating someone already working on this shift.
            -- Just let the update happen.
            RETURN NEW;
        ELSEIF headPos NOT IN
            -- We check if the position already is filled.
            --  If so we don't need to make this one the HeadPosition otherwise just set NEW.HeadPosition = headPos
           (SELECT DISTINCT works_on_shift.HeadPosition FROM works_on_shift WHERE shiftid = NEW.shiftid) THEN
            RAISE NOTICE '::% - Setting employee as HeadPosition for shift. Data: %', tg_name, NEW;
            NEW.HeadPosition = headPos;
        END IF;
    ELSE
        IF NEW.headposition <> headPos AND NEW.headposition <> empPos THEN
            -- User entered invalid headposition value that isn't even of the employee's position type.
            RAISE EXCEPTION 'Headposition(%) does not match employee position(%) or parent type(%) of employee position',
                NEW.headposition, empPos, headPos;
        ELSEIF NEW.headposition <> headPos THEN
            -- The position passed in isn't a headPosition but is a position.
            RAISE WARNING 'Headposition(%) changed to canon position(%) for the subtype of %.',
                NEW.headposition, headPos, empPos;
            NEW.headposition := headPos;
        END IF;
        -- Make this separate so that if we correct the position, then it checks against the corrected value.
        IF NEW.headposition AND (SELECT COUNT(works_on_shift.HeadPosition) AS alreadyThere
                                     FROM works_on_shift
                                     WHERE shiftid = NEW.shiftid
                                       AND HeadPosition = NEW.headposition) > 0 THEN
            -- There is already a head position assigned. Raise a warning then set the new data's headPosition to NULL
            RAISE WARNING 'Headposition "%" already set for shift id: %. Setting new headposition to NULL.',
                NEW.headposition, NEW.shiftid;
            NEW.headposition := NULL;

        END IF;
    END IF;

--     RAISE NOTICE 'End %: Works On Shift Trigger - check all positions filled.', tg_name;
    RETURN NEW;
END ;
$wos_trigger_check_all_pos_filled$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER wos_trigger_check_wos_insert
    BEFORE INSERT OR UPDATE
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
        waitCanon     thebestdbever.headPosition;
        barCanon      thebestdbever.headPosition;
        chefCanon     thebestdbever.headPosition;
        allHeads      thebestdbever.headposition[];
        checkAllHeads thebestdbever.headposition[];
    BEGIN
        RAISE NOTICE 'Beginning Test Cases.';


        -- Testing head position checking
        waitCanon := wos_canon_pos(empPos := 'Back Waiter', sommelierRequired := FALSE);
        IF wos_canon_pos(empPos := 'Busboy', sommelierRequired := FALSE) <> waitCanon OR
           wos_canon_pos(empPos := 'Captain', sommelierRequired := FALSE) <> waitCanon OR
           wos_canon_pos(empPos := 'Runner', sommelierRequired := FALSE) <> waitCanon OR
           wos_canon_pos(empPos := 'Sommelier', sommelierRequired := FALSE) <> waitCanon OR
           wos_canon_pos(empPos := 'Sommelier', sommelierRequired := TRUE) = waitCanon OR
           wos_canon_pos(empPos := 'Waiter', sommelierRequired := FALSE) <> waitCanon THEN
            RAISE EXCEPTION 'Waiter mapping incorrect.';
        ELSE
            RAISE NOTICE '::Waiters passed.';
        END IF;

        barCanon := wos_canon_pos(empPos := 'Barback', sommelierRequired := FALSE);
        IF wos_canon_pos(empPos := 'Bartender', sommelierRequired := FALSE) <> barCanon THEN
            RAISE EXCEPTION 'Bartender mapping incorrect.';
        ELSE
            RAISE NOTICE '::Bartenders passed.';
        END IF;

        chefCanon := wos_canon_pos(empPos := 'Sous Chef', sommelierRequired := FALSE);
        IF wos_canon_pos(empPos := 'Roast Chef', sommelierRequired := FALSE) <> chefCanon OR
           wos_canon_pos(empPos := 'Pastry Chef', sommelierRequired := FALSE) <> chefCanon OR
           wos_canon_pos(empPos := 'Executive Chef', sommelierRequired := FALSE) <> chefCanon THEN
            RAISE EXCEPTION 'Chef mapping incorrect.';
        ELSE
            RAISE NOTICE '::Chefs passed.';
        END IF;

        -- This is just to remind us if we make any changes update the trigger functions.
        IF (SELECT ARRAY_LENGTH(ENUM_RANGE(NULL::thebestdbever.position), 1) AS num_pos) <> 14 THEN
            RAISE EXCEPTION 'CHECK THE HEAD POSITION MAP FUNCTION INCLUDES ANY NEW POSITION TYPES AND UPDATE THIS CHECK.';
        END IF;

        allHeads := ENUM_RANGE(NULL::thebestdbever.headposition);
        -- Make sure every head position type can be obtained.
        checkAllHeads := ARRAY(SELECT DISTINCT wos_canon_pos(pos, FALSE) AS headpos
                                   FROM UNNEST(ENUM_RANGE(NULL::thebestdbever.position)) AS pos);
        checkAllHeads := ARRAY_APPEND(checkAllHeads, wos_canon_pos('Sommelier', TRUE));

        -- This checks to be sure that the arrays are equal (like for a set).
        IF checkAllHeads @> allHeads AND checkAllHeads <@ allHeads THEN
            RAISE NOTICE '::All head positions check passed.';
        ELSE
            RAISE EXCEPTION 'Not all head positions can be accessed.';
        END IF;

        RAISE NOTICE 'Tests complete.';
    END;
$$ LANGUAGE plpgsql;
