-- 1. ABS – ABSOLUTE VALUE
SELECT ABS(-100) AS absolute_value;


-- 2. ROUND TO 0 DECIMALS
SELECT
ROUND(base_salary, 0) AS rounded_salary
FROM employee_salary;


-- ROUND TO 2 DECIMALS
SELECT
ROUND(base_salary, 2) AS rounded_salary
FROM employee_salary;


-- 3. CEILING / CEIL
SELECT
CEIL(base_salary) AS ceil_salary
FROM employee_salary;


-- 4. FLOOR
SELECT
FLOOR(base_salary) AS floor_salary
FROM employee_salary;


-- 5. TRUNCATE
SELECT
TRUNCATE(base_salary, 1) AS truncated_salary
FROM employee_salary;


-- 6. MOD
SELECT
MOD(experience_years, 2) AS remainder
FROM employee_salary;


-- 7. POWER
SELECT POWER(2, 3) AS power_result;


-- POW
SELECT POW(5, 2) AS pow_result;


-- 8. SQRT
SELECT SQRT(64) AS square_root;


-- 9. SIGN
SELECT
SIGN(base_salary) AS sign_value
FROM employee_salary;


-- 10. RAND
SELECT RAND() AS random_number;


-- 11. FORMAT
SELECT
FORMAT(base_salary, 2) AS formatted_salary
FROM employee_salary;


-- 12. GREATEST
SELECT
emp_name,
GREATEST(base_salary, IFNULL(bonus, 0)) AS greatest_value
FROM employee_salary;


-- 13. LEAST
SELECT
emp_name,
LEAST(base_salary, IFNULL(bonus, 0)) AS least_value
FROM employee_salary;
