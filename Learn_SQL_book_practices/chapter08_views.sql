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

/* Altering a View
After creating a view, if we want to make any change to it, we use the
ALTER VIEW keywords.

The syntax is

ALTER VIEW name_of_view AS SELECT statement;

For instance:

ALTER VIEW myView AS SELECT employees.id, mentorships.mentor_id, employees.em_name
AS 'Mentor', mentorships.project AS 'Project' FROM mentorships
JOIN employees ON employees.id = mentorships.mentor_id;

*/

/* DELETING VIEWS
If we want to delete a view we use the DROP VIEW keywords. The syntax is:

DROP VIEW IF EXISTS name_of_view;

To delete myView we write;

DROP VIEW IF EXISTS myView;



*/
