/*Table Schema for Employees Database*/

CREATE  TABLE departments(
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR
);


CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR 
);

CREATE TABLE dept_manager(
dept_no VARCHAR,
emp_no INT 
);

CREATE TABLE salaries(
emp_no INT,
salary INT
);


CREATE TABLE employees(
emp_no INT,
emp_title VARCHAR,
birth_date VARCHAR,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR(2),
hire_date VARCHAR
);

CREATE TABLE titles(
title_id VARCHAR,
title VARCHAR
);
