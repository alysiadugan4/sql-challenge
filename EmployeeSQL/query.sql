select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles


--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select
	emp.emp_no
	,emp.last_name
	,emp.first_name
	,emp.sex
	,s.salary
from employees as emp
Join salaries as s ON s.emp_no = emp.emp_no



--2. List first name, last name, and hire date for employees who were hired in 1986.
select
	emp.last_name
	,emp.first_name
	,emp.hire_date
from employees as emp
where emp.hire_date like '%1986'


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select
	d.dept_no
	,d.dept_name
	,dm.emp_no
	,emp.first_name
	,emp.last_name
from employees as emp
join dept_manager as dm on emp.emp_no = dm.emp_no
join departments as d on dm.dept_no = d.dept_no



--4. List the department of each employee with the following information: employee number, last name, first name, and department name.



--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."



--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.



--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.



--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.





