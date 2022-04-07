-- To create a databse in MySQL we use CREATE DATABASE keywords:

CREATE DATABASE companyHR;

-- To use the companyHR database we write;

USE companyHR;

-- Delete database

DROP DATABASE [IF EXISTS] name_of_database;

-- Delete a database called wrongDB:

DROP DATABASE IF EXISTS wrongDB;

-- If we are certain that wrongDB exits, we can simply write:

DROP DATABASE wrongDB; -- this thrown an error