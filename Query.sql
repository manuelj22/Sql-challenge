
SELECT d.emp_no, d.last_name, d.first_name, d.gender, e.salary
FROM Employees AS d
FULL OUTER JOIN salaries AS e
ON d.emp_no = e.emp_no
ORDER BY salary DESC;


SELECT last_name, first_name, gender, hire_date 
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date ASC;


SELECT a.dept_no, a.dept_name, c.emp_no, d.last_name, d.first_name, c.from_date, c.to_date
FROM Departments AS a
LEFT JOIN Dept_Manager AS c
ON a.dept_no = c.dept_no
LEFT JOIN Employees AS d
ON c.emp_no = d.emp_no
ORDER BY from_date ASC;


SELECT b.emp_no, d.last_name, d.first_name, a.dept_name
FROM Dept_Emp AS b
FULL OUTER JOIN Employees AS d
ON b.emp_no = d.emp_no
FULL OUTER JOIN Departments AS a
ON b.dept_no = a.dept_no
ORDER BY dept_name ASC;


SELECT first_name, last_name
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY last_name ASC;


SELECT b.emp_no, d.last_name, d.first_name, a.dept_name
FROM Dept_Emp AS b
FULL OUTER JOIN Employees AS d
ON b.emp_no = d.emp_no
FULL OUTER JOIN Departments AS a
ON b.dept_no = a.dept_no
WHERE a.dept_name = 'Sales'
ORDER BY last_name ASC;


FROM Dept_Emp AS b
FULL OUTER JOIN Employees AS d
ON b.emp_no = d.emp_no
FULL OUTER JOIN Departments AS a
ON b.dept_no = a.dept_no
WHERE a.dept_name = 'Sales' 
OR a.dept_name = 'Development'
ORDER BY dept_name ASC;


SELECT last_name,
COUNT(last_name) AS "number of employees"
FROM Employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;