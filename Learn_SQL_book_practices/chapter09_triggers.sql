/*
Triggers
*/

/*
A series of actions that is activated when a defined event occurs
for a specific table. This event can either be an INSERT, UPDATE
or DELETE
*/

/*
In order of show how triggers work, we're going to create a new table
/*

/*
CREATE TABLE ex_employees (
    em_id INT PRIMARY KEY,
    em_name VARCHAR(255) NOT NULL,
    gender CHAR(1) NOT NULL,
    date_left TIMESTAMP DEFAULT NOW() 
);
*/

/*
The syntax for creating a Trigger is:

DELIMITER $$

CREATE TRIGGER name_of_trigger BEFORE/AFTER
UPDATE/DELETE/INSERT ON name_of_table FOR EACH ROW

BEGIN -- Actions to take

END $$

DELIMITER;

*/


/*
DELIMITER $$ : indicates we want to use $$ as the delimiter for our CREATE TRIGGER.
";" delimites sentences, but "$$" delimites all the trigger
*/



/* CONCRETE EXAMPLE
DELIMITER $$

CREATE TRIGGER update_ex_employees BEFORE DELETE ON employees FOR
EACH ROW
BEGIN
    INSERT INTO ex_employees (em_id, em_name, gender) VALUES
    (OLD.id, OLD.em_name, OLD.gender);
END $$

DELIMITER;
*/

/*
DELIMITER $$
CREATE TRIGGER update_ex_employees BEFORE DELETE ON employees FOR
EACH ROW
BEGIN
INSERT INTO ex_employees (em_id, em_name, gender) VALUES
(OLD.id, OLD.em_name, OLD.gender);
END $$
DELIMITER ;
*/

/* After execute the trigger we type

DELETE FROM employees WHERE id = 10;

SELECT * FROM employees;

SELECT * FROM ex_employees;
*/




/* To delete a Trigger we type

DROP TRIGGER [IF EXISTS] name_of_trigger;

*/