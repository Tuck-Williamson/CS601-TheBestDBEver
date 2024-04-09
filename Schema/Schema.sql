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