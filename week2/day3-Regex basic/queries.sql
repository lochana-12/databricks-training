-- Q1
SELECT mixed_value,
NULL AS extracted_value
FROM regex_practice;


-- Q2
SELECT mixed_value,
RIGHT(mixed_value, 1) AS extracted_value
FROM regex_practice;


-- Q3
SELECT mixed_value,
LEFT(mixed_value, 1) AS extracted_value
FROM regex_practice;


-- Q4
SELECT mixed_value,
RIGHT(mixed_value, 1) AS extracted_value
FROM regex_practice;


-- Q5
SELECT mixed_value,
SUBSTRING(mixed_value,
LOCATE('1', mixed_value), 2) AS extracted_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9]{2}';


-- Q6
SELECT mixed_value,
SUBSTRING(mixed_value,
LOCATE('1', mixed_value), 1) AS extracted_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9]';


-- Q7
SELECT phone,
REPLACE(SUBSTRING_INDEX(phone, '-', 1), '+', '') AS country_code
FROM regex_practice;


-- Q8
SELECT mixed_value,
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
mixed_value,
'a',''),'b',''),'c',''),'d',''),'e','')
AS extracted_number
FROM regex_practice;


-- Q9
SELECT email,
SUBSTRING_INDEX(email, '@', 1) AS username
FROM regex_practice;


-- Q10
SELECT email,
SUBSTRING_INDEX(email, '@', -1) AS domain_name
FROM regex_practice;


-- Q11
SELECT email,
SUBSTRING_INDEX(email, '@', -1) AS domain_only
FROM regex_practice;


-- Q12
SELECT email,
SUBSTRING_INDEX(email, '.', -1) AS extension
FROM regex_practice;


-- Q13
SELECT mixed_value,
LEFT(mixed_value, 3) AS alphabets
FROM regex_practice;


-- Q14
SELECT mixed_value,
NULL AS numbers
FROM regex_practice;


-- Q15
SELECT full_text,
LEFT(full_text, 3) AS first_three
FROM regex_practice;


-- Q16
SELECT full_text,
RIGHT(full_text, 2) AS last_two
FROM regex_practice;


-- Q17
SELECT full_text,
SUBSTRING(full_text, 4, 3) AS employee_number
FROM regex_practice;


-- Q18
SELECT full_text,
RIGHT(full_text, 2) AS country_code
FROM regex_practice;


-- Q19
SELECT full_text,
SUBSTRING_INDEX(SUBSTRING_INDEX(full_text, '_', 2), '_', -1)
AS middle_text
FROM regex_practice;


-- Q20
SELECT phone,
REPLACE(SUBSTRING_INDEX(phone, '-', 1), '+', '') AS country_code
FROM regex_practice;
