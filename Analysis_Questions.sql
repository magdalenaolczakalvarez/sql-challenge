--Data Analysis Question 1

SELECT employees.emp_no, 
	   employees.last_name, 
	   employees.first_name, 
	   employees.sex,
	   salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

--Data Analysis Question 2

SELECT employees.first_name,
	   employees.last_name, 
	   employees.hire_date
FROM employees
WHERE hire_date LIKE '%1986';

--Data Analysis Question 3

SELECT dept_manager.emp_no,
	   dept_manager.dept_no,
	   departments.dept_name,
	   employees.first_name,
	   employees.last_name
FROM dept_manager
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no;

--Data Analysis Question 4

SELECT dept_emp.emp_no,
	   dept_emp.dept_no,
	   departments.dept_name,
	   employees.first_name,
	   employees.last_name
FROM dept_emp
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_emp.dept_no;

--Data Analysis Question 5

SELECT employees.first_name,
	   employees.last_name,
	   employees.sex
FROM employees
WHERE
	first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
--Data Analysis Question 6
SELECT departments.dept_name,
	   employees.emp_no,
	   employees.first_name,
	   employees.last_name
FROM employees
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.dept_no = 'd007';

--Data Analysis Question 7
SELECT departments.dept_name,
	   employees.emp_no,
	   employees.first_name,
	   employees.last_name
FROM employees
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.dept_no = 'd007'
	  OR dept_emp.dept_no = 'd005'

--Data Analysis Question 8
SELECT last_name,
	   COUNT(last_name) AS "Number of Employees with Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Number of Employees with Last Name" desc;
