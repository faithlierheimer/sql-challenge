/*Table Schema for Employees Database*/


CREATE TABLE titles(
title_id VARCHAR,
emp_title VARCHAR,
PRIMARY KEY (title_id)
);


CREATE TABLE employees(
emp_no INT,
emp_title_id VARCHAR,
birth_date VARCHAR,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR(2),
hire_date VARCHAR,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE  TABLE departments(
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR
);

CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


CREATE TABLE dept_manager(
dept_no VARCHAR,
emp_no INT,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE salaries(
emp_no INT,
salary INT,
PRIMARY KEY (emp_no),
FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);


