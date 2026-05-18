-- 1. EMPLOYEES AND THEIR MANAGERS (INCLUDING NULL MANAGERS)
SELECT
e.emp_name AS employee,
m.emp_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;


-- 2. ALL EMPLOYEES AND DEPARTMENTS
SELECT
e.emp_name,
d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;


-- 3. EMPLOYEES WHO REPORT TO A MANAGER
SELECT
e.emp_name AS employee,
m.emp_name AS manager
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;


-- 4. TOTAL SALARY AND DEPARTMENT
SELECT
e.emp_name,
d.dept_name,
NULL AS salary
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


-- 5. EMPLOYEES WITHOUT DEPARTMENT
SELECT
emp_name
FROM employees
WHERE dept_id IS NULL;


-- 6. EMPLOYEES AND PROJECTS
SELECT
e.emp_name,
p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- 7. EMPLOYEES WITH AT LEAST ONE PROJECT
SELECT
e.emp_name,
p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;


-- 8. ALL PROJECTS AND EMPLOYEES
SELECT
e.emp_name,
p.project_name
FROM employees e
RIGHT JOIN projects p
ON e.emp_id = p.emp_id;


-- 9. EMPLOYEES AND SALARIES
SELECT
emp_name,
NULL AS salary
FROM employees;


-- 10. EMPLOYEES AND DEPARTMENT NAMES
SELECT
e.emp_name,
d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;


-- 11. ALL DEPARTMENTS AND EMPLOYEES
SELECT
d.dept_name,
e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;


-- 12. EMPLOYEES WITH CONTACT INFO
SELECT
emp_name,
NULL AS contact_info
FROM employees;


-- 13. EMPLOYEES AND DEPARTMENTS INCLUDING UNMATCHED
SELECT
e.emp_name,
d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id

UNION

SELECT
e.emp_name,
d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


-- 14. EMPLOYEES WITHOUT PROJECTS
SELECT
e.emp_name,
p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
WHERE p.project_id IS NULL;


-- 15. EMPLOYEES AND THEIR PROJECTS
SELECT
e.emp_name,
p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- 16. ALL PROJECTS AND ASSIGNED EMPLOYEES
SELECT
p.project_name,
e.emp_name
FROM projects p
LEFT JOIN employees e
ON p.emp_id = e.emp_id;


-- 17. EMPLOYEES WITH MANAGER AND PROJECT
SELECT
e.emp_name AS employee,
m.emp_name AS manager,
p.project_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id
INNER JOIN projects p
ON e.emp_id = p.emp_id;


-- 18. EMPLOYEES WITH DEPARTMENTS ONLY
SELECT
e.emp_name,
d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- 19. EMPLOYEES IN MULTIPLE DEPARTMENTS
SELECT
e.emp_name,
d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- 20. ALL DEPARTMENTS INCLUDING EMPTY ONES
SELECT
d.dept_name,
e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;


-- 21. EMPLOYEES WITH PROJECTS BUT NO DEPARTMENT
SELECT
e.emp_name,
p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id
WHERE e.dept_id IS NULL;


-- 22. TOTAL EMPLOYEES IN EACH DEPARTMENT
SELECT
d.dept_name,
COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- 23. EMPLOYEES REPORTING TO MANAGERS ONLY
SELECT
e.emp_name AS employee,
m.emp_name AS manager
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;


-- 24. ALL EMPLOYEES WITH MANAGERS
SELECT
e.emp_name AS employee,
m.emp_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;


-- 25. DEPARTMENTS AND EMPLOYEE COUNT
SELECT
d.dept_name,
COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- 26. ALL EMPLOYEES AND DEPARTMENTS
SELECT
e.emp_name,
d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;


-- 27. EMPLOYEES WITHOUT SALARY RECORDS
SELECT
emp_name
FROM employees;


-- 28. EMPLOYEES AND PROJECT ASSIGNMENTS
SELECT
e.emp_name,
p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- 29. EMPLOYEES WITH DEPARTMENT AND PROJECTS
SELECT
e.emp_name,
d.dept_name,
p.project_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- 30. EMPLOYEES WITH/WITHOUT DEPARTMENTS
SELECT
e.emp_name,
d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;
