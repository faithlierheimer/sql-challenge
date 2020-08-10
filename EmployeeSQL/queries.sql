/*SQL Analysis of Employee DB*/

/*List Employee number, last name, first name, sex, and salary*/

select * from employees;
select * from salaries;

select employees.emp_no as Employee_Number, employees.last_name as Last_Name, 
employees.first_name as First_Name, employees.sex as Sex, salaries.salary as Salary
from employees 
join salaries 
on employees.emp_no = salaries.emp_no;

/*List first name, last name, and hire date for employees who were hired in 1986*/
select first_name, last_name, hire_date
from employees
where hire_date like '%1986';

/*Group by department manager, then list the department number, name, manager, employee 
number, last name, and first name. */
select * from dept_manager; /* dept_no emp_no*/
select * from departments; /* dept_name dept_no */

select dept_manager.dept_no, dept_manager.emp_no, employees.last_name, 
employees.first_name
from dept_manager 
where dept_manager.dept_no in
(select dept_no, dept_name from departments)
dept_manager.emp_no in 
(select employees.last_name, employees.first_name, employees.emp_no from employees);
