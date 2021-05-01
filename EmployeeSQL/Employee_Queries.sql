--List the following details of each employee: Employee Number, Last Name, First Name, Sex, & Salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries AS s ON s.emp_no = e.emp_no;

--List First Name, Last Name and Hire Date for Employees who were Hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

--List the Manager of each Department with the Following Information: Department Number, Department Name, the Manager's
--Employee Number, Last Name, and First Name. 
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

--List the Department of each Employee with the Following Information: Employee Number, Last Name, First Name,
--and Department Name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no;

--List First Name, Last Name, and Sex for Employees whose first name is "Hercules" and last names begin with "B".
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
--List all Employees in the Sales department, including their Employee Number, Last Name, First Name & Department Name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List all Employees in the Sales and Development departments, including their Employee Number, Last Name, First Name,
--and Department Name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--In Descending Order, list the Frequency Count of Employee Last Name
SELECT last_name, COUNT (*) AS "Frequency Count"
FROM employees
GROUP BY last_name
ORDER BY "Frequency Count" DESC;


