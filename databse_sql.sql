-- Active: 1708267180025@@127.0.0.1@3306@learning_db
-- ! Database SQL

-- create database
CREATE DATABASE learning_db;

-- delete database
DROP DATABASE learning_db;

-- show all DATABASES
SHOW DATABASES;


-- ! Table SQL

-- create table sql
CREATE TABLE users(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL UNIQUE
);

-- update table name
ALTER TABLE users RENAME TO test_users;

-- delete table sql
DROP TABLE users;

--! Table column sql

-- create column
ALTER TABLE users 
ADD age INT NULL;

-- update column column name
ALTER TABLE users 
CHANGE COLUMN username name varchar(255) NULL DEFAULT NULL;

--update column type
ALTER TABLE users 
CHANGE COLUMN name name varchar(255) NULL DEFAULT NULL;

-- delete column
ALTER TABLE users 
DROP COLUMN name;


--! Row Execute sql
-- create row data users table
INSERT INTO users (id, fname) VALUES (2, "Sharier Rahman");

-- show all row data users table
SELECT * FROM users;

-- update row data users table
UPDATE users SET age = 5 WHERE id = 2;

--? delete row data users table
-- delete specific row
DELETE FROM users WHERE id = 3;

-- delete all row
DELETE FROM users;

--* Read row with ORDER BY(ASC/DESC) 
SELECT * FROM users ORDER BY id DESC;
SELECT * FROM users ORDER BY id ASC;

--* use NULL value
SELECT * FROM users WHERE lname IS NULL;
SELECT * FROM users WHERE lname IS NOT NULL;

--* SELECT TOP Clause
SELECT * FROM users LIMIT 1;
SELECT * FROM users WHERE id=2 LIMIT 3;

--* SELECT MIN() and MAX()
SELECT MIN(age) as SmallestAge FROM users;
SELECT MAX(age) as HeightAge FROM users;

--* count row 
SELECT COUNT(age) AS count_users FROM users;
-- Ignore Duplicates
SELECT COUNT(DISTINCT age) AS count_users FROM users WHERE age > 5;

--* sum row 
SELECT SUM(age * 5) AS total_ages FROM users;

--* LIKE Operator
SELECT * FROM users WHERE lname LIKE 's__ag%';

--* IN Operator
-- SELECT * FROM users WHERE IN age (5);