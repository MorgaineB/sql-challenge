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