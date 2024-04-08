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
            ON UPDATE RESTRICT ON DELETE RESTRICT,
    ssn            varchar(9) NOT NULL
        CONSTRAINT "wos_SSN___fk"
            REFERENCES employee
            ON UPDATE RESTRICT ON DELETE RESTRICT,
    "HeadPosition" thebestdbever.position,
    CONSTRAINT works_on_shift_pk
        PRIMARY KEY (shiftid, ssn)
);

