-- 3. CURRENT DATE & TIME
SELECT CURDATE();
SELECT CURRENT_DATE();
SELECT CURTIME();
SELECT CURRENT_TIME();
SELECT NOW();
SELECT CURRENT_TIMESTAMP();


-- 5. EXTRACT YEAR MONTH DAY
SELECT
YEAR(order_date),
MONTH(order_date),
DAY(order_date)
FROM orders;


-- 6. EXTRACT FUNCTION
SELECT
EXTRACT(YEAR FROM order_date),
EXTRACT(MONTH FROM order_date),
EXTRACT(DAY FROM order_date)
FROM orders;


-- 7. MONTH NAME AND DAY NAME
SELECT
MONTHNAME(order_date),
DAYNAME(order_date)
FROM orders;


-- 8. WEEKDAY AND DAYOFWEEK
SELECT
WEEKDAY(order_date),
DAYOFWEEK(order_date)
FROM orders;


-- 9. IDENTIFY WEEKENDS USING DAYNAME
SELECT
order_id,
order_date
FROM orders
WHERE DAYNAME(order_date) IN ('Saturday', 'Sunday');


-- 9. IDENTIFY WEEKENDS USING DAYOFWEEK
SELECT
order_id,
order_date
FROM orders
WHERE DAYOFWEEK(order_date) IN (1, 7);


-- 10. IDENTIFY WEEKDAYS
SELECT
order_id,
order_date
FROM orders
WHERE DAYOFWEEK(order_date) BETWEEN 2 AND 6;


-- 11. DATE ARITHMETIC
-- ADD 5 DAYS
SELECT
order_date,
DATE_ADD(order_date, INTERVAL 5 DAY) AS added_5_days
FROM orders;


-- SUBTRACT 3 DAYS
SELECT
order_date,
DATE_SUB(order_date, INTERVAL 3 DAY) AS subtracted_3_days
FROM orders;


-- ADD 1 MONTH
SELECT
order_date,
DATE_ADD(order_date, INTERVAL 1 MONTH) AS added_1_month
FROM orders;


-- SUBTRACT 2 MONTHS
SELECT
order_date,
DATE_SUB(order_date, INTERVAL 2 MONTH) AS subtracted_2_months
FROM orders;


-- ADD 1 YEAR
SELECT
order_date,
DATE_ADD(order_date, INTERVAL 1 YEAR) AS added_1_year
FROM orders;


-- 12. DATEDIFF (DELIVERY DAYS)
SELECT
order_id,
DATEDIFF(delivery_date, order_date) AS delivery_days
FROM orders;


-- 13. TIMESTAMPDIFF
SELECT
TIMESTAMPDIFF(DAY, order_date, delivery_date) AS days_diff,
TIMESTAMPDIFF(MONTH, order_date, delivery_date) AS months_diff
FROM orders;


-- 14. LAST DAY OF MONTH
SELECT
LAST_DAY(order_date) AS last_day_of_month
FROM orders;


-- 15. FIRST DAY OF MONTH
SELECT
DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY) AS first_day_of_month
FROM orders;


-- 16. DATE FORMAT DD-MM-YYYY
SELECT
DATE_FORMAT(order_date, '%d-%m-%Y') AS formatted_date
FROM orders;


-- 16. DATE FORMAT MONTH DD, YYYY
SELECT
DATE_FORMAT(order_date, '%M %d, %Y') AS formatted_date
FROM orders;


-- 17. STRING TO DATE
SELECT
STR_TO_DATE('15-01-2024', '%d-%m-%Y') AS converted_date;


-- 18. TIMESTAMP FORMATTING
SELECT
DATE_FORMAT(order_timestamp, '%d-%m-%Y %H:%i:%s') AS formatted_timestamp
FROM orders;


-- 19. FILTER BY JANUARY
SELECT *
FROM orders
WHERE MONTH(order_date) = 1;


-- 19. FILTER BY FEBRUARY
SELECT *
FROM orders
WHERE MONTHNAME(order_date) = 'February';


-- 20. FINANCIAL YEAR LOGIC
SELECT
order_date,
CASE
WHEN MONTH(order_date) >= 4
THEN CONCAT(YEAR(order_date), '-', YEAR(order_date) + 1)
ELSE CONCAT(YEAR(order_date) - 1, '-', YEAR(order_date))
END AS financial_year
FROM orders;


-- 21. ORDERS IN LAST 7 DAYS
SELECT *
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 7 DAY;


-- 21. ORDERS PLACED TODAY
SELECT *
FROM orders
WHERE DATE(order_timestamp) = CURDATE();
