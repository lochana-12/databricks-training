-- LEVEL 1 (BASIC)

-- 1. EMPLOYEES WITH NULL SALARY
SELECT *
FROM Employees
WHERE salary IS NULL;


-- 2. ORDERS WHERE DISCOUNT IS NOT NULL
SELECT *
FROM Orders
WHERE discount IS NOT NULL;


-- 3. PRODUCTS WHERE CATEGORY IS NULL
SELECT *
FROM Products
WHERE category IS NULL;


-- 4. COUNT EMPLOYEES WITH NULL MANAGER
SELECT COUNT(*) AS total_null_managers
FROM Employees
WHERE manager_id IS NULL;


-- LEVEL 2 (ISNULL)

-- 5. REPLACE NULL SALARY WITH 0
SELECT
name,
IFNULL(salary, 0) AS salary
FROM Employees;


-- 6. REPLACE NULL BONUS WITH 1000
SELECT
name,
IFNULL(bonus, 1000) AS bonus
FROM Employees;


-- 7. REPLACE NULL ORDER AMOUNT WITH 500
SELECT
order_id,
IFNULL(amount, 500) AS amount
FROM Orders;


-- 8. REPLACE NULL STOCK WITH 0
SELECT
product_name,
IFNULL(stock, 0) AS stock
FROM Products;


-- LEVEL 3 (COALESCE)

-- 9. EMPLOYEE EARNINGS
SELECT
name,
COALESCE(salary, bonus) AS earnings
FROM Employees;


-- 10. FIRST AVAILABLE VALUE
SELECT
name,
COALESCE(salary, bonus, 0) AS income
FROM Employees;


-- 11. PRODUCT PRICE DEFAULT VALUE
SELECT
product_name,
COALESCE(price, 1000) AS price
FROM Products;


-- 12. CUSTOMER PAYMENT
SELECT
customer_name,
COALESCE(amount, discount, 0) AS payment
FROM Orders;


-- LEVEL 4 (NULLIF)

-- 13. CONVERT SALARY 0 TO NULL
SELECT
NULLIF(salary, 0) AS salary
FROM Employees;


-- 14. CONVERT DISCOUNT 0 TO NULL
SELECT
NULLIF(discount, 0) AS discount
FROM Orders;


-- 15. AVOID DIVIDE BY ZERO
SELECT
amount / NULLIF(discount, 0) AS result
FROM Orders;


-- 16. REPLACE DISC10 WITH NULL
SELECT
NULLIF(coupon_code, 'DISC10') AS coupon_code
FROM Orders;


-- LEVEL 5 (REAL-TIME SCENARIOS)

-- 17. TOTAL EARNINGS
SELECT
name,
IFNULL(salary, 0) + IFNULL(bonus, 0) AS total_earnings
FROM Employees;


-- 18. BOTH SALARY AND BONUS NULL
SELECT *
FROM Employees
WHERE salary IS NULL
AND bonus IS NULL;


-- 19. PRICE NULL BUT CATEGORY EXISTS
SELECT *
FROM Products
WHERE price IS NULL
AND category IS NOT NULL;


-- 20. BOTH AMOUNT AND DISCOUNT NULL
SELECT *
FROM Orders
WHERE amount IS NULL
AND discount IS NULL;


-- LEVEL 6 (ADVANCED)

-- 21. EMPLOYEE INCOME
SELECT
name,
COALESCE(salary, bonus, 1000) AS income
FROM Employees;


-- 22. NULLIF DISCOUNT
SELECT
NULLIF(discount, 0) AS discount
FROM Orders;


-- 23. FINAL PAYABLE AMOUNT
SELECT
customer_name,
IFNULL(amount, 0) - IFNULL(discount, 0) AS final_amount
FROM Orders;


-- 24. SALARY NULL BUT MANAGER EXISTS
SELECT *
FROM Employees
WHERE salary IS NULL
AND manager_id IS NOT NULL;
