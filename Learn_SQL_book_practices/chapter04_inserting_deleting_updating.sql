/*
Syntax to insert data into MySQL table:

INSERT INTO <table_name> <column_names> VALUES(value1, value2, value3)
*/

/*
INSERT INTO employees (em_name, gender, contact_number, salary, years_in_company)
    VALUES
    ('James Lee', 'M', '516-514-6568', 3500, 11),
    ('Peter Pasternak', 'M', '845-644-7919', 6010, 10),
    ('Clara Couto', 'F', '845-641-5236', 3900, 8),
    ('Walker Welch', 'M', NULL, 2500, 4),
    ('Li Xiao Ting', 'F', '646-218-7733', 5600, 4),
    ('Joyce Jones', 'F', '523-172-2191', 8000, 3),
    ('Larry Zucker', 'M', '817-267-9799', 3500, 1),
    ('Serena Parker', 'F', '621-211-7342', 12000, 1);
/*


/*
Inserting data in Mentorships Table
*/

/*
INSERT INTO mentorships (mentor_id, mentee_id, status, project) VALUES
    (1, 2, "Ongoing", "SQF Limited"),
    (1, 3, "Past", "Wayne Fibre"),
    (2, 3, "Ongoing", "SQF Limited"),
    (3, 4, "Ongoing", "SQF Limited"),
    (6, 5, "Past", "Flynn Tech")
*/

/* Another way of do it is the next. This is valid only if we add data for all the columns" */

/*
INSERT INTO mentorships VALUES
    (1, 2, "Ongoing", "SQF Limited"),
    (1, 3, "Past", "Wayne Fibre"),
    (2, 3, "Ongoing", "SQF Limited"),
    (3, 4, "Ongoing", "SQF Limited"),
    (6, 5, "Past", "Flynn Tech")
*/


/*
The syntax to updating is:
    UPDATE table_name
    SET column1 = value1, column2, = value2
    WHERE condition;
*/


/* specific instruction */
/*
UPDATE employees SET contact_number = "516-514-1729" WHERE id = 1;
*/

/*
UPDATE employees SET contact_number = "516-514-1729" WHERE years_in_company = 11;
*/


/*
--------- Unsert values in tables with contraints-----------------------
*/
INSERT INTO mentorships VALUES (4, 21, "Ongoing", "Flynn Tech")
-- INSERT INTO mentorships VALUES (4, 33, "Ongoing", "Flynn Tech") -- This produces error

/*
The next code for update employees fails due to ON UPDATE RESTRICT does not allow modify mentorships table.
*/

/*
UPDATE employees SET id = 12 WHERE id = 1; 
*/

/*
A correct instructions that enables a good record is 
UPDATE employees SET id = 8 WHERE id = 2; 
Say, it is correct where one id of employees is not an id of mentor_id
*/

