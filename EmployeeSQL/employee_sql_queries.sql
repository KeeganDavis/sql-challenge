-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON (e.emp_no = s.emp_no);

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE EXTRACT(YEAR FROM e.hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
-- dept_manager, employees, departments
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- dept_emp, employees, departments
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e on de.emp_no = e.emp_no
JOIN departments AS d on de.dept_no = d.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
-- employees, dept_emp, departments
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp AS de
JOIN employees AS e on de.emp_no = e.emp_no
JOIN departments AS d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

