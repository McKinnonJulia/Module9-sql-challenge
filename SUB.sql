SELECT * FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no=s.emp_no
SELECT * FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT * FROM employees
INNER JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
INNER JOIN departments ON dept_manager.dept_no=departments.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT * FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no;
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT * FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
WHERE dept_emp.dept_no ="sales";
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM employees
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frquency DESC;