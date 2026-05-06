--Day1 SQL Queries

-- BASIC QUERIES
-- 1
SELECT * FROM Employee;

-- 2
SELECT name, salary FROM Employee;

-- 3
SELECT * FROM Employee WHERE age > 30;

-- 4
SELECT name FROM Department;

-- 5
SELECT e.*
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
WHERE d.name = 'IT';


-- STRING MATCHING
-- 6
SELECT * FROM Employee WHERE name LIKE 'J%';

-- 7
SELECT * FROM Employee WHERE name LIKE '%e';

-- 8
SELECT * FROM Employee WHERE name LIKE '%a%';

-- 9
SELECT * FROM Employee WHERE LENGTH(name) = 9;

-- 10
SELECT * FROM Employee WHERE name LIKE '_o%';


-- DATE QUERIES
-- 11
SELECT * FROM Employee WHERE YEAR(hire_date) = 2020;

-- 12
SELECT * FROM Employee WHERE MONTH(hire_date) = 1;

-- 13
SELECT * FROM Employee WHERE hire_date < '2019-01-01';

-- 14
SELECT * FROM Employee WHERE hire_date >= '2021-03-01';

-- 15
SELECT * FROM Employee 
WHERE hire_date >= CURRENT_DATE - INTERVAL 2 YEAR;


-- AGGREGATE QUERIES
-- 16
SELECT SUM(salary) FROM Employee;

-- 17
SELECT AVG(salary) FROM Employee;

-- 18
SELECT MIN(salary) FROM Employee;

-- 19
SELECT department_id, COUNT(*) 
FROM Employee 
GROUP BY department_id;

-- 20
SELECT department_id, AVG(salary) 
FROM Employee 
GROUP BY department_id;
