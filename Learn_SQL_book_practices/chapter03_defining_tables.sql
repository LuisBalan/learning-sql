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



/*
Creation of co_employees table --

CREATE TABLE co_employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    em_name VARCHAR(255) NOT NULL,
    gender CHAR(1) NOT NULL,
    contact_number VARCHAR(255),
    age INT NOT NULL,
    date_created TIMESTAMP NOT NULL DEFAULT NOW()
);

*/


/*

                                        TABLES WITH FOREIGN KEY

Syntax:
FOREIGN KEY (name of the column in the new table) REFERENCES <parent table (id)> ON DELETE CASCADE ON UPDATE RESTRICT

Besides ON DELETE CASCADE, other ON DELETE clauses are:

- ON DELETE RESTRICT: Row in the parent table cannot be deleted if a row in the child table references that parent row.
- ON DELETE SET NULL: If parent row is deleted in parent table, in child row the foreing key value will be setted to NULL values
- ON DELETE SET DEFAULT: Child row foreign key value will be setted to default value
- ON DELETE clauses can be applied when updating, to do that we use ON UPDATE.

- UNIQUE (mentor_id, mentee_id): these values can be repeated


- NAMED CONSTRAINTS (we can name or identify constraints rules with a custom name)
- example:

CONSTRAINT fk1 FOREIGN KEY (mentor_id) REFERENCES  co_employees (id) ON DELETE CASCADE ON UPDATE RESTRICT


- We can asign two or more columns as primary keys


CREATE TABLE mentorships (
    mentor_id INT NOT NULL,
    mentee_id INT NOT NULL,
    status VARCHAR(255) NOT NULL,
    project VARCHAR(255) NOT NULL,

    PRIMARY KEY(mentor_id, mentee_id, project),
    CONSTRAINT fk1 FOREIGN KEY (mentor_id) REFERENCES co_employees(id) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT fk2 FOREIGN KEY (mentee_id) REFERENCES co_employees(id) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT mm_constraint UNIQUE(mentor_id, mentee_id)
);

*/


/*                              ALTERING TABLES
To renaming tables the sytax is

RENAME TABLE old_name TO new_name;

RENAME TABLE co_employees TO employees;

                        ALTERING COLUMNS AND TABLES CONSTRAINTS

We first need write for entering edition mode
ALTER TABLE table_name

followed by

AUTO_INCREMENT = starting_value

ADD_CONSTRAINT [name of constraint] <details of constraint>

DROP INDEX [name_of_constraint]

DROP FOREIGN KEY [name_of_foreign_key]

MODIFY COLUMN [column_name] <data_type> [constraints] to modify a column

*/

/*
Altering mentorships table:
1. Drop the age column
2. Add another column called salary which if of FLOAT type and cannot be
null. This column should come afeter the contact_number column.
3. Add a new column called years_in_company which is of INT type and cannot
be null. This column should come after salary column.
The script would be the next:
*/

/*
ALTER TABLE employees
    DROP COLUMN age,
    ADD COLUMN salary FLOAT NOT NULL AFTER contact_number,
    ADD COLUMN years_in_company INT NOT NULL AFTER salary;
/*

/*
Altering mentorships table:
1. Modifiy fk2 by changing UPDATE RESTRICT to ON UPDATE CASCADE
2. Drop the nm_constraint constraint
*/

/* In order to modify the foreign key constraint, we have to first drop the
original foreign key using 


after

*/

/*
ALTER TABLE mentorships
    DROP FOREIGN KEY fk2;
*/

/* Adding constraints to table

ALTER TABLE mentorships
    ADD CONSTRAINT fk2 FOREIGN KEY(mentee_id) REFERENCES employees(id)
    ON DELETE CASCADE ON UPDATE CASCADE;
    DROP INDEX nm_constraint;
*/

