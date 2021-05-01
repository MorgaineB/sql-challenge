--List the following details of each employee: Employee Number, Last Name, First Name, Sex, & Salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries AS s ON s.emp_no = e.emp_no;

