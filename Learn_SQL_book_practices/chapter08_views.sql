/*
Views are tables that show data and makes queries easier.
*/

/*
The syntax for creating a view is:

CREATE VIEW name_of_view AS SELECT statement;

*/

/* An example

CREATE VIEW myView AS
SELECT employees.id, mentorships.mentor_id, employees.em_name AS 'Mentor',
mentorships.project AS 'Project Name' FROM mentorships JOIN employees ON
employees.id = mentorships.mentor_id;

A view is like a table saved on memory
In the query for strings as column names we must use backticks ` `. For naming
is usted " ".

An example of query on a view, we can write:

SELECT mentor_id, `Project Name` FROM myView;

*/
