/*
VARIABLES
*/

/*
We use SET to define the name of the variables:

SET @em_id = 1
*/

/* The new sentences using @em_id are:
SELECT * FROM mentorships WHERE mentor_id = @em_id;
SELECT * FROM mentorships WHERE mentee_id = @em_id;
SELECT * FROM employees WHERE id = @em_id;
*/

/*
SET @em_1 = 2;
*/

/* We can also assign strigs to SQL variables, for example:

SET @em_name = 'Jamie';
*/

/*
We can also add the result of an operation to a variable. For example:

SET @price = 12;
SET @price = @price + 3;

*/


/*
Also, we can add the result of a function to a variable. For example:
SET @result = SQRT(9);

In order to visualize the value of the variable we can type:
SELECT @result;

We can do the declaration and assignment at once. We can do this with the command:

SELECT @result := SQRT(9); (using := symbol)
*/

/* Stored Procedures
Are routines that we can save in memory and execute. For example (with syntaxis):
 DELIMITER $$

CREATE PROCEDURE name_of_procedure([parameters, if any])
BEGIN
    -- SQL Statements
END $$

DELIMITER ;
*/

/* Example applied to our DB


*/

/*
DELIMITER $$

CREATE PROCEDURE select_info()
BEGIN
    SELECT * FROM employees;
    SELECT * FROM mentorships;
END $$

DELIMITER ;
*/

/*
To execute the procedure we use: CALL, for example:
CALL select_info();
*/

/*
Another way of declare procedures is adding parameters */
DELIMITER $$
CREATE PROCEDURE employee_info(IN p_em_id INT)
BEGIN
    SELECT * FROM mentorships WHERE mentor_id = p_em_id;
    SELECT * FROM mentorships WHERE mentee_id = p_em_id;
    SELECT * FROM employees WHERE id = p_em_id;
END $$

DELIMITER;

/*
At the time to call the procedure, we can do:

CALL employee_info(1);

*/