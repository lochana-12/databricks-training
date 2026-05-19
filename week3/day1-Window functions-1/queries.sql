-- ROW_NUMBER() 

-- 1. Assign a unique row number to all employees based on salary (highest first).
SELECT
emp_name,
salary,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;


-- 2. Assign row numbers to employees within each department based on salary descending.
SELECT
emp_name,
department,
salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employees;


-- 3. Assign row numbers based on employee joining date (latest first).
SELECT
emp_name,
join_date,
ROW_NUMBER() OVER(ORDER BY join_date DESC) AS row_num
FROM employees;


-- 4. Assign row numbers within each department based on earliest joining date.
SELECT
emp_name,
department,
join_date,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY join_date) AS row_num
FROM employees;


-- 5. Assign row numbers to orders based on order date.
SELECT
order_id,
order_date,
ROW_NUMBER() OVER(ORDER BY order_date) AS row_num
FROM orders;


-- 6. Assign row numbers to orders within each city based on order amount (highest first).
SELECT
order_id,
city,
order_amount,
ROW_NUMBER() OVER(PARTITION BY city ORDER BY order_amount DESC) AS row_num
FROM orders;


-- 7. Assign row numbers to employees based on salary (lowest first).
SELECT
emp_name,
salary,
ROW_NUMBER() OVER(ORDER BY salary) AS row_num
FROM employees;


-- 8. Assign row numbers within department for employees based on name alphabetically.
SELECT
emp_name,
department,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY emp_name) AS row_num
FROM employees;



-- RANK() 

-- 9. Rank all employees based on salary (highest first).
SELECT
emp_name,
salary,
RANK() OVER(ORDER BY salary DESC) AS emp_rank
FROM employees;


-- 10. Rank employees within each department based on salary.
SELECT
emp_name,
department,
salary,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM employees;


-- 11. Rank employees based on joining date (latest gets rank 1).
SELECT
emp_name,
join_date,
RANK() OVER(ORDER BY join_date DESC) AS join_rank
FROM employees;


-- 12. Rank orders based on order amount (highest first).
SELECT
order_id,
order_amount,
RANK() OVER(ORDER BY order_amount DESC) AS order_rank
FROM orders;


-- 13. Rank orders within each city based on order amount.
SELECT
order_id,
city,
order_amount,
RANK() OVER(PARTITION BY city ORDER BY order_amount DESC) AS city_rank
FROM orders;


-- 14. Rank employees within department based on salary (lowest first).
SELECT
emp_name,
department,
salary,
RANK() OVER(PARTITION BY department ORDER BY salary) AS low_salary_rank
FROM employees;


-- 15. Rank employees based on name alphabetically.
SELECT
emp_name,
RANK() OVER(ORDER BY emp_name) AS name_rank
FROM employees;


-- 16. Rank orders within each city based on order date.
SELECT
order_id,
city,
order_date,
RANK() OVER(PARTITION BY city ORDER BY order_date) AS order_rank
FROM orders;



-- DENSE_RANK() 

-- 17. Assign dense rank to employees based on salary (highest first).
SELECT
emp_name,
salary,
DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num
FROM employees;


-- 18. Assign dense rank within each department based on salary.
SELECT
emp_name,
department,
salary,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_dense_rank
FROM employees;


-- 19. Assign dense rank to employees based on joining date.
SELECT
emp_name,
join_date,
DENSE_RANK() OVER(ORDER BY join_date DESC) AS join_dense_rank
FROM employees;


-- 20. Assign dense rank to orders based on order amount.
SELECT
order_id,
order_amount,
DENSE_RANK() OVER(ORDER BY order_amount DESC) AS order_dense_rank
FROM orders;


-- 21. Assign dense rank within each city based on order amount.
SELECT
order_id,
city,
order_amount,
DENSE_RANK() OVER(PARTITION BY city ORDER BY order_amount DESC) AS city_dense_rank
FROM orders;


-- 22. Assign dense rank to employees based on salary (lowest first).
SELECT
emp_name,
salary,
DENSE_RANK() OVER(ORDER BY salary) AS low_dense_rank
FROM employees;


-- 23. Assign dense rank within department based on joining date.
SELECT
emp_name,
department,
join_date,
DENSE_RANK() OVER(PARTITION BY department ORDER BY join_date) AS join_dense_rank
FROM employees;


-- 24. Assign dense rank to orders based on order date.
SELECT
order_id,
order_date,
DENSE_RANK() OVER(ORDER BY order_date) AS order_dense_rank
FROM orders;
