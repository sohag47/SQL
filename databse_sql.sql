-- ! Database SQL

-- create database
CREATE DATABASE learning_db;

-- delete database
DROP DATABASE learning_db;

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
ADD email varchar(255) NOT NULL;

-- update column column name
ALTER TABLE users 
CHANGE COLUMN username name varchar(255) NULL DEFAULT NULL;

--update column type
ALTER TABLE users 
CHANGE COLUMN name name varchar(255) NULL DEFAULT NULL;

-- delete column
ALTER TABLE users 
DROP COLUMN email;