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