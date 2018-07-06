SET SQL DIALECT 3;

SET NAMES UTF8;

CREATE DATABASE 'd:\work-report.fdb' USER 'SYSDBA' PASSWORD 'masterkey' PAGE_SIZE 16384 DEFAULT CHARACTER SET UTF8;

CREATE TABLE Users (
    id            INTEGER     NOT NULL,
    name          VARCHAR(32) NOT NULL,

    createdBy     INTEGER     NOT NULL,
    createdOnUtc  TIMESTAMP   NOT NULL,
    modifiedBy    INTEGER,
    modifiedOnUtc TIMESTAMP
);

CREATE TABLE UserCredentials (
    idPerson      INTEGER     NOT NULL,
    secret        VARCHAR(32) NOT NULL,

    createdBy     INTEGER     NOT NULL,
    createdOnUtc  TIMESTAMP   NOT NULL,
    modifiedBy    INTEGER,
    modifiedOnUtc TIMESTAMP
);

CREATE TABLE Calendars (
    id            INTEGER     NOT NULL,
    name          VARCHAR(32) NOT NULL,

    createdBy     INTEGER     NOT NULL,
    createdOnUtc  TIMESTAMP   NOT NULL,
    modifiedBy    INTEGER,
    modifiedOnUtc TIMESTAMP
);

CREATE TABLE CalendarSubscribers (
    idCalendar   INTEGER   NOT NULL,
    idPerson     INTEGER   NOT NULL,

    createdBy    INTEGER   NOT NULL,
    createdOnUtc TIMESTAMP NOT NULL
);

CREATE TABLE CalendarUnits (
    id               INTEGER     NOT NULL,
    name             VARCHAR(32) NOT NULL,
    idParent         INTEGER,
    quantityInParent INTEGER,

    createdBy        INTEGER     NOT NULL,
    createdOnUtc     TIMESTAMP   NOT NULL,
    modifiedBy       INTEGER,
    modifiedOnUtc    TIMESTAMP
);

CREATE TABLE CalendarItems (
    id             INTEGER     NOT NULL,
    name           VARCHAR(32) NOT NULL,
    idCalendarUnit INTEGER,
    unitsQuantity  INTEGER,
    anchorUtc      TIMESTAMP,

    createdBy      INTEGER     NOT NULL,
    createdOnUtc   TIMESTAMP   NOT NULL,
    modifiedBy     INTEGER,
    modifiedOnUtc  TIMESTAMP
);