CREATE SCHEMA IF NOT EXISTS TheBestDBEver;
SET SCHEMA 'thebestdbever';
CREATE TABLE IF NOT EXISTS thebestdbever.shift
(
    ShiftID serial NOT NULL,
    Date date NOT NULL,
    StartTime time NOT NULL,
    Duration interval NOT NULL,

    PRIMARY KEY (ShiftID)
);

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
