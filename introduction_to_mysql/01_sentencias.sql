--START MySQL --------

mysql -u root -p

service mysql START

-- stop MySQL service ------------- :

service mysql stop

-- restart MySQL: --------------

service mysql restart;

--Create database

CREATE DATABASE <db>;

--Create table
-- Indispensable columns for each table

CREATE TABLE users(
    id INT,
    username VARCHAR(50),
    email VARCHAR(100),
    age INT,
    status ENUM('active', 'inactive'),
    bio TEXT,
    created_at TIMESTAMP
);

----------------------------------------------------------------
-- SQL data-type

-- INT: integer
-- VARCHAR: variable length
-- ENUM: allows set posible values
-- TEXT: string
-- TIMESTAMP: time of data recording
----------------------------------------------------------------

-- constraints

CREATE TABLE users(
    id INT AUTO_INCREMENT  PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT UNSIGNED NOT NULL,
    status ENUM('active', 'inactive') DEFAULT 'inactive',
    bio TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

------------------------------------

-- SHOW TABLES: show disposable tables

--DESC USERS: describes the table

--DROP TABLES users: deletes the table with the name users


----- ENTERING RECORDS -------------

INSERT INTO users (username, email, age) VALUES ('user1', 'user1@test.com', 17);

SELECT * FROM users; -- Get all the columns from users

SELECT * FROM users\G; --Cards format

--obtener usuario con id 2
INSERT INTO users (username, email, age) VALUES ('user4', 'user4@test.com', 17);
INSERT INTO users (username, email, age) VALUES ('user5', 'user5@test.com', 27);
INSERT INTO users (username, email, age) VALUES ('user6', 'user6@test.com', 47);
INSERT INTO users (username, email, age) VALUES ('user7', 'user7@test.com', 57);
INSERT INTO users (username, email, age) VALUES ('user8', 'user8@test.com', 27);
INSERT INTO users (username, email, age) VALUES ('user9', 'user9@test.com', 37);
INSERT INTO users (username, email, age) VALUES ('user10', 'user10@test.com', 30);
INSERT INTO users (username, email, age) VALUES ('user11', 'user11@test.com', 29);
INSERT INTO users (username, email, age) VALUES ('user12', 'user12@test.com', 34);
INSERT INTO users (username, email, age) VALUES ('user13', 'user13@test.com', 45);
INSERT INTO users (username, email, age) VALUES ('user14', 'user14@test.com', 13);
INSERT INTO users (username, email, age) VALUES ('user15', 'user15@test.com', 23);


-- consultas:

SELECT * FROM users WHERE email = 'user8@test.com';
SELECT * FROM users WHERE email = 'user8@test.com';



--obtener usuarios cuya fecha de creación sea el día de hoy

SELECT * FROM users WHERE created_at > '2022-04-06 12:00:00';

SELECT * FROM users WHERE DATE(created_at) = '2022-04-06';

SELECT * FROM users WHERE id = 1 OR id = 2 OR id = 3 OR id = 4;

SELECT * FROM users WHERE id IN (1, 2, 3, 4);

SELECT age FROM users WHERE age >= 18;

--ordenar
SELECT * FROM users ORDER BY age;

SELECT * FROM users ORDER BY age DESC;

--ordenar y limitar búsqueda

--orden descendente
SELECT * FROM users ORDER BY age DESC LIMIT 1;

SELECT username, email, age FROM users WHERE age > 20 AND age < 55;

--hacer búsqueda sobre el tipo de dato
SELECT * FROM users WHERE email LIKE '%.com';

SELECT * FROM users WHERE email LIKE '%';

SELECT * FROM users WHERE email LIKE '%5@test%';


--- actualizar registros -----

UPDATE users SET bio="Software Developer"; --esto actualiza todo en general
UPDATE users SET bio = "Data Scientist" WHERE age > 20 AND age < 30; --condition
UPDATE users SET bio = "Backend Developer", username="luis-balan" WHERE id = 1;

-- eliminar registro --------------------------

DELETE FROM users WHERE id = 1;

--otro comando en TRUNCATE;

--DELETE ----> elimina registros
--TRUNCATE ------> reinicia el registro de ID's



--- relations between DB ----

--implementar una relacion uno a muchos
--crear una tabla con el siguiente comando:

CREATE TABLE comments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    user_id INT, -- Foreing Key
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- la tabla que se crea con el comando anterior es una tabla con llaves foráneas

CREATE TABLE posts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    user_id INT, -- Foreing Key
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- get all users with one comment at least (INNER JOIN)

SELECT
*
FROM users
INNER JOIN comments ON users.id = comments.user_id;

CREATE TABLE likes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    comments_number INT,
    comment_id INT, -- Foreign key
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(comment_id) REFERENCES comment(id) ON DELETE CASCADE
);

-- select comments where 
SELECT * FROM comments INNER JOIN likes;

-- select users with no one comments