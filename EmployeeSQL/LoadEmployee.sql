-- 2020-03-16    SQL Homework      Tom VanEyck
--               DataBase Load for Employees_db
--         C:\Users\VEA\Desktop\KUDataAnalytics Mtrl\KUclass\KU-OVE-DATA-PT-01-2020-U-C\02-Homework\09-SQL\Instructions\data\Titles.csv
--DROP DATABASE IF EXISTS Employees_db;
--   
--CREATE DATABASE Employees_db;
--
--      https://www.postgresql.org/docs/9.0/sql-createdatabase.html
--CREATE DATABASE name
--         [ [ WITH ] [ OWNER [=] user_name ]
--           [ TEMPLATE [=] template ]
--           [ ENCODING [=] encoding ]
--           [ LC_COLLATE [=] lc_collate ]
--           [ LC_CTYPE [=] lc_ctype ]
--           [ TABLESPACE [=] tablespace ]
--           [ CONNECTION LIMIT [=] connlimit ] ]
--
--  https://www.postgresql.org/docs/9.0/sql-alterdatabase.html
--ALTER DATABASE name RENAME TO new_name
--
--ALTER DATABASE name OWNER TO new_owner
--
--ALTER DATABASE name SET TABLESPACE new_tablespace
--
--ALTER DATABASE name SET configuration_parameter { TO | = } { value | DEFAULT }
--ALTER DATABASE name SET configuration_parameter FROM CURRENT
--ALTER DATABASE name RESET configuration_parameter
--ALTER DATABASE name RESET ALL
--
--               Table Builder Queries   
-- Drop Tables if Exist
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Dept_Emp;
DROP TABLE IF EXISTS Dept_Manager;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Titles;
--
--                Create each table and load
--                             id SERIAL PRIMARY KEY,     -- adds one ea row
-- Create Departments Table
CREATE TABLE Departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(20) NOT NULL
);

-- Create Department to Employee Table
CREATE TABLE Dept_Emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    from_date timestamp without time zone NOT NULL,
    to_date timestamp without time zone NOT NULL
);

-- Create Department Manager Table
CREATE TABLE Dept_Manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);

-- Create Employees Table
CREATE TABLE Employees (
    emp_no INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

-- Create Salaries Table
CREATE TABLE Salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);

-- Create Titles Table
CREATE TABLE Titles (
    emp_no INT NOT NULL,
    title VARCHAR(25) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);


SELECT * FROM Departments;
SELECT * FROM Dept_Emp;
SELECT * FROM Dept_Manager;
SELECT * FROM Employees;
SELECT * FROM Salaries;
SELECT * FROM Titles;







