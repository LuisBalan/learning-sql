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