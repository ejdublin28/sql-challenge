--Employee Details (employee number, last name, first name, sex, and salary)
SELECT emp.emp_no, emp.first_name, emp.last_name, emp.sex, sal.salary
FROM employees emp INNER JOIN salaries sal
ON emp.emp_no = sal.emp_no;

--Employees Hired in 1986 (first name, last name, and hire date)
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date <= '12-31-1986'
AND hire_date >= '01-01-1986'
ORDER BY hire_date asc;

--Department Managers (department number, department name, the manager's employee number, last name, first name)
SELECT c.dept_no, c.dept_name, b.emp_no, b.first_name, b.last_name
FROM dept_manager a INNER JOIN employees b
ON a.emp_no = b.emp_no
INNER JOIN departments c
ON a.dept_no = c.dept_no;

--Employee Departments (employee number, last name, first name, and department name)
SELECT a.emp_no, a.first_name, a.last_name, c.dept_name
FROM employees a INNER JOIN dept_emp b
ON a.emp_no = b.emp_no
INNER JOIN departments c
ON b.dept_no = c.dept_no;

--Employees Hercules B...(first name, last name, and sex)
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Sales Department Employees (employee number, last name, first name, and department name)
SELECT a.emp_no, a.first_name, a.last_name, c.dept_name
FROM employees a INNER JOIN dept_emp b
ON a.emp_no = b.emp_no
INNER JOIN departments c
ON b.dept_no = c.dept_no
WHERE c.dept_name = 'Sales';

--Sales and Development Employees (employee number, last name, first name, and department name)
SELECT a.emp_no, a.first_name, a.last_name, c.dept_name
FROM employees a INNER JOIN dept_emp b
ON a.emp_no = b.emp_no
INNER JOIN departments c
ON b.dept_no = c.dept_no
WHERE c.dept_name = 'Sales' OR c.dept_name = 'Development'
ORDER BY c.dept_name;

--Employee Last Name Counts Descending
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) desc;
