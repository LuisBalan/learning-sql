/*
To select and show all data from tables:
*/

/*
SELECT * FROM <name_of_the_table>;
*/

/*
If we don't want all the columns we can use the syntax
*/

/*
SELECT <column_1>, <column2> FROM <name_of_table>; 
*/

/*
We can rename the columns. For example:
*/

/*
SELECT em_name AS employee_name, gender AS genero FROM employees;

The code before temporary renames the referenced columns.
*/

-- ------------------------------------------------ FILTERING ROWS ---------------------------------
/*
Limiting the table just for show three rows:
*/

-- LIMIT     : Used to show only the number of limited rows.

-- SELECT em_name AS "Employee name", gender AS Gender FROM employees LIMIT 3;

-- DISTINC   : Used to remove duplicates. Examples:

/*
SELECT DISTINCT(gender) FROM employees;
SELECT DISTINCT(em_name) FROM employees;
*/

/*
COMPARISON OPERATORS

!= (NOT EQUAL)
>  (Greater than)
>= (Greater than or equal to)
<  (Minus than)
<= (Minus than or equal to)


*/

/* Examples

SELECT * FROM employees WHERE id != 4;
SELECT * FROM employees WHERE id < 4;
SELECT * FROM employees WHERE id <= 4;
SELECT * FROM employees WHERE => 4;

SELECT * FROM employees WHERE id >= 10 AND id <= 15;

Another version:

                                    BETWEEN

SELECT * FROM employees WHERE id BETWEEN 10 ADN 15;

*/

/*                                  LIKE
If we want to select rows whose columns look like a specified patter, we use
LIKE keyword.

SELECT * FROM employees WHERE em_name LIKE '%er';
*/

/*                                  IN
With IN we can select entries in a given set.

SELECT * FROM employees WHERE id IN (6, 8, 11);
*/

/*                                  NOT IN
NOT IN is used for query those entries that don't belong to the set:


SELECT FROM employees WHERE id NOT IN (4, 7, 10, 20);

Other examples:

SELECT em_name FROM employees WHERE id NOT IN (5, 10, 12) LIMIT 10;
SELECT DISTINCT(em_name) FROm employees WHERE id NOT IN (6, 12, 13, 19, 20) LIMIT 5;
*/


/*                                  AND, OR operators
AND - OR are used to combine conditions in WHERE clause

Take in account the operators and sets.

SELECT * FROM employees WHERE (years_in_company > 5 OR salary > 5000) AND gender = 'F';

*/

/*                              SUBQUERIES
We can do a query with a subquery. Example (Using the mentorships table):

SELECT em_name FROM employees WHERE id IN (SELECT mentor_id FROM mentorships WHERE project = 'SQF Limited');

With the subquery we make set the set that contains the wished mentor_id's.
With the first part of the query we set that we want (em_name) and the table (employees) and after WHERE
id IN we add the selected set. 
*/

/* SORTING ROWS
We use the keyword ORDER BY and after this, the criteria. By default the sorting is ascendent.
With keyword DESC we make it Descendent.

Examples:

SELECT * FROM employees ORDER BY gender DESC, em_name;
SELECT * FROM employees ORDER BY salary DESC;
SELECT DISTINCT(em_name) FROM employees ORDER BY em_name DESC LIMIT 5;
SELECT * FROM employees ORDER BY salary DESC, em_name DESC LIMIT 6;

*/