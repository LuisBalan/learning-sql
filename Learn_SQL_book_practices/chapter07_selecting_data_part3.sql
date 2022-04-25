/*
Sintaxys for joins:
*/

/*
SELECT [table_names.] columns_names_or_other_information
FROM
left_table
JOIN / INNER JOIN / LEFT JOIN / RIGHT JOIN
right_table
on
left_table.column_name = right_table.column_name;
*/

/*
SELECT employees.id, mentorships.mentor_id, employees.em_name AS 'Mentor', mentorships.project AS 'Project_name'
FROM
mentorships
JOIN
employees
ON
employees.id = mentorships.mentor_id;
*/

/* Example of LEFT JOIN
SELECT employees.em_name, employees.gender, employees.salary, mentorships.mentee_id,
mentorships.project AS 'Mentee', mentorships.project FROM employees LEFT JOIN mentorships
ON employees.id = mentorships.mentor_id;

SELECT employees.id, employees.em_name, employees.gender, employees.salary, mentorships.mentee_id,
mentorships.project  as 'Mentee',  mentorships.project FROM employees LEFT JOIN mentorships
ON employees.id = mentorships.mentor_id;

SELECT employees.id, employees.em_name, employees.gender, employees.salary, mentorships.mentor_id AS 'Mentor',
mentorships.mentee_id AS 'Mentee', mentorships.project FROM employees LEFT JOIN mentorships
ON employees.id = mentorships.mentor_id;

SELECT employees.id, employees.em_name, employees.gender, employees.salary, mentorships.mentor_id AS 'Mentor',
mentorships.mentee_id AS 'Mentee', mentorships.project FROM employees RIGHT JOIN mentorships
ON employees.id = mentorships.mentor_id;
*/

/* UNION
With UNION we join the results of two SELECT. It's necessary that both SELECT have the same number of columns.
The result is a table with first amount of rows correspond to first SELECT and the last corresponds to second one.

Example:

SELECT id, em_name FROM employees WHERE Salary > 5000 UNION SELECT mentor_id, project FROM mentorships; 
SELECT  em_name, salary FROM employees WHERE gender = "M" UNION SELECT em_name, years_in_company FROM employees WHERE gender = "F";
SELECT em_name FROM employees WHERE Salary > 10000 UNION SELECT mentor_id FROM mentorships;
SELECT em_name FROM employees WHERE Salary > 10000 UNION ALL SELECT mentor_id FROM mentorships;
SELECT Salary, em_name, years_in_company FROM employees WHERE gender = "F" UNION SELECT mentor_id, project, status FROM mentorships;
SELECT Salary, em_name, years_in_company FROM employees WHERE gender = "F" UNION ALL SELECT mentor_id, project, status FROM mentorships;
*/