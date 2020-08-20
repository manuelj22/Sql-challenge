
SELECT blue.emp_no, blue.last_name, blue.first_name, blue.gender, red.salary
FROM Employees AS blue
FULL OUTER JOIN Salaries AS red
ON blue.emp_no = red.emp_no
ORDER BY salary DESC;


SELECT last_name, first_name, gender, hire_date 
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date ASC;


SELECT yellow.dept_no, yellow.dept_name, green.emp_no, blue.last_name, blue.first_name, green.from_date, green.to_date
FROM Departments AS yellow
LEFT JOIN Dept_Manager AS green
ON yellow.dept_no = green.dept_no
LEFT JOIN Employees AS blue
ON green.emp_no = blue.emp_no
ORDER BY from_date ASC;


SELECT orange.emp_no, blue.last_name, blue.first_name, yellow.dept_name
FROM Dept_Emp AS orange
FULL OUTER JOIN Employees AS blue
ON orange.emp_no = blue.emp_no
FULL OUTER JOIN Departments AS yellow
ON orange.dept_no = yellow.dept_no
ORDER BY dept_name ASC;


SELECT first_name, last_name
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY last_name ASC;


SELECT b.emp_no, d.last_name, d.first_name, a.dept_name
FROM Dept_Emp AS orange
FULL OUTER JOIN Employees AS blue
ON b.emp_no = d.emp_no
FULL OUTER JOIN Departments AS yellow
ON b.dept_no = a.dept_no
WHERE a.dept_name = 'Sales'
ORDER BY last_name ASC;


FROM Dept_Emp AS orange
FULL OUTER JOIN Employees AS blue
ON orange.emp_no = blue.emp_no
FULL OUTER JOIN Departments AS yellow
ON orange.dept_no = yellow.dept_no
WHERE yellow.dept_name = 'Sales' 
OR yellow.dept_name = 'Development'
ORDER BY dept_name ASC;


SELECT last_name,
COUNT(last_name) AS "number of employees"
FROM Employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;