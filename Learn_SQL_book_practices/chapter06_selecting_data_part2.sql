/*
Some functions in SQL:
CONCAT()
SUBSTRING()
NOW()
CURDATE()
*/

/*
Ejemplos de uso:
*/

/*
SELECT CONCAT("Hello", "World!");
SELECT SUBSTRING(<string>, index)  : in SQL indexes start at 1;
SELECT NOW() current today info;
SELECT CURDATE(); 
*/

/*
Other functions: 

COUNT() : It counts all the non-empty values:

SELECT COUNT(*) FROM employees;
SELECT COUNT(contact_number) FROM employees;
SELECT COUNT(DISTINCT(years_in_company)) FROM employees;
SELECT COUNT(years_in_company) FROM employees;
SELECT COUNT(DISTINCT(salary)) FROM employees;
SELECT COUNT(salary) FROM employees;

*/