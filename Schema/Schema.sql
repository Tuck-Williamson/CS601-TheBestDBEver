CREATE SCHEMA IF NOT EXISTS TheBestDBEver;

CREATE TABLE IF NOT EXISTS thebestdbever.shift
(
    SSN char(9) NOT NULL,
    Date date NOT NULL,
    StartTime time NOT NULL,
    Duration interval NOT NULL,

    PRIMARY KEY (SSN)
);

CREATE TABLE IF NOT EXISTS thebestdbever.shift
(
    ShiftID serial NOT NULL,
    Date date NOT NULL,
    StartTime time NOT NULL,
    Duration interval NOT NULL,

    PRIMARY KEY (ShiftID)
);
