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

/*List manager of each department with department number, department name, 
employee number, last name, and first name. */

select dept_manager.dept_no, departments.dept_name, 
employees.emp_no, employees.last_name, employees.first_name
from employees 
join dept_manager
on dept_manager.emp_no = employees.emp_no
join departments
on departments.dept_no = dept_manager.dept_no;

/*List the department of each employee with the following information: 
employee number, last name, first name, and department name.*/
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_manager
on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no;

/*List first name, last name, and sex for employees whose first name is
"Hercules" and last names begin with "B."*/

select employees.first_name, employees.last_name, employees.sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

/* List all employees in the Sales department, including their employee number,
last name, first name, and department name. */

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp 
on employees.emp_no = dept_emp.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

/*List all employees in the Sales and Development departments, including their
employee number, last name, first name, and department name.*/
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp 
on employees.emp_no = dept_emp.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

/*In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name.*/
select employees.last_name, count(employees.last_name)
from employees
group by employees.last_name
order by count(employees.last_name) desc;