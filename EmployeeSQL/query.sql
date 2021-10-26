select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles


--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT
	emp.emp_no
	,emp.last_name
	,emp.first_name
	,emp.sex
	,s.salary
FROM employees AS emp
JOIN salaries AS s ON s.emp_no = emp.emp_no



--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT
	emp.last_name
	,emp.first_name
	,emp.hire_date
FROM employees AS emp
WHERE emp.hire_date LIKE '%1986'


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT
	d.dept_no
	,d.dept_name
	,dm.emp_no
	,emp.first_name
	,emp.last_name
FROM employees AS emp
JOIN dept_manager AS dm ON emp.emp_no = dm.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no



--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
	emp.emp_no
	,emp.last_name
	,emp.first_name
	,d.dept_name
FROM employees AS emp
JOIN dept_emp AS de ON emp.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no



--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT
    emp.last_name
	,emp.first_name
	,emp.sex
FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'



--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT
    emp.emp_no
	,emp.last_name
	,emp.first_name
	,d.dept_name
FROM employees AS emp
JOIN dept_emp AS de ON emp.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
    emp.emp_no
	,emp.last_name
	,emp.first_name
	,d.dept_name
FROM employees AS emp
JOIN dept_emp AS de ON emp.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development')


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
	emp.last_name
	,count(emp.last_name)
FROM employees AS emp
GROUP BY emp.last_name
ORDER BY count desc



SELECT *
FROM employees
WHERE emp_no = '499942'


