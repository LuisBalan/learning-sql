-- syntax for creating tables

/* CREATE TABLE table_name (
    columnn1_name1 datatype [column constraints],
    columnn2_name2 datatype [column constraints],
    ...
    [table_constraints],
    [table_constraints]
) */


/*
--NOTES------------------------------------------------------------------------------------
STRINGS
strings are stored using CHAR or VARCHAR
with both we have to set the number of characters. VARCHAR is more affordable
CHAR is suitable when storing strings like "M", "F, "NY"

--                                   --------------------
NUMERICAL DATA TYPES

In MySQL are commonly stored usgin INT, FLOAT, DOUBLE OR DECIMAL.

INT
INT UNSIGNED: can hold values from 0 to 4294967295

FLOAT

FLOAT (m, d), m: refers to the total number of digits the FLOAT stores
d: refers to the number of digits AFTER decimal point

DOUBLE(m, d): used to store non integers as approximate values. m is the total number of digits
and n indicates the number of digits after the decimal point

DECIMAL(m, d): used to store non-integers as exact values. m indicates the total number of digits
and d the digits after the decimal point.

--                                   -----------------------

DATE and TIME data types

YEAR: can be stored in two-digit (1 - 69: 2001 to 2069 and 70-99: 1970 to 1999)
or four-digit (1901-2155) formats

DATE: is used to store dates in the YYYY-MM-DD format (from '1000-01-01' to '9999-12-31')

TIME: is used to store time in the HH: MI: SS format with a supported range of  '-838:59:59' to '838:59:59'

DATETIME: used to store a date and time combination in the YYYY-MM-DD HH:MI:SS format with supported range
from '1970-01-01 00:00:01' UTC to '2038-01-09 03:14:07' UTC:

TIMESTAMP: used to store a date and time combination in the YYYY-MM-DD HH:MI:SS format with supported range
from '1970-01-01 00:00:01' UTC to '2038-01-09 03:14:07' UTC. TIMESTAMP converts the time according to time
where DATABASE is consumed.

--                                  ----------------------------------

COLUMN CONSTRAINTS

NOT NULL: Specifies that a column cannot be empty, is must have a value for all rows.

UNIQUE: Specifies that all values in the column must be unique.

DEFAULT: Sets a default value in the column when no value is specified.

PRIMARY KEY: Is by default NOT nULL and UNIQUE. Specifies that the column is a primary key. A primary key
uniquely identifies each row in a table.

AUTO_INCREMENT: Increments the value by 1 for each new record.

*/


-- Creation of co_employees table --

CREATE TABLE co_employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    em_name VARCHAR(255) NOT NULL,
    gender CHAR(1) NOT NULL,
    contact_number VARCHAR(255),
    age INT NOT NULL,
    date_created TIMESTAMP NOT NULL DEFAULT NOW()
);