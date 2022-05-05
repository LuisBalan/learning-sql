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