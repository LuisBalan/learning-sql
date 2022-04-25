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