-- Query #1
SELECT REGEXP_SUBSTR('abc123xyz','[0-9]{4}') AS extracted_value;

-- Query #2
SELECT REGEXP_SUBSTR('abc123xyz','[A-Za-z]$') AS extracted_value;

-- Query #3
SELECT REGEXP_SUBSTR('abc123xyz','^[A-Za-z]') AS extracted_value;

-- Query #4
SELECT REGEXP_SUBSTR('test45done','[A-Za-z]$') AS extracted_value;

-- Query #5
SELECT REGEXP_SUBSTR('abc123xyz','[0-9]{2}') AS extracted_value;

-- Query #6
SELECT REGEXP_SUBSTR('etl1','[0-9]') AS extracted_value;

-- Query #7
SELECT REGEXP_SUBSTR('+91-9876543210','[0-9]+') AS country_code;

-- Query #8
SELECT REGEXP_REPLACE('abc123xyz','[aeiou]','') AS extracted_number;

-- Query #9
SELECT REGEXP_SUBSTR('karthik@gmail.com','^[^@]+') AS username;

-- Query #10
SELECT REGEXP_SUBSTR('karthik@gmail.com','@(.+)') AS domain_name;

-- Query #11
SELECT REGEXP_EXTRACT('karthik@gmail.com','@(.+)',1) AS domain_only;

-- Query #12
SELECT REGEXP_SUBSTR('karthik@gmail.com','[A-Za-z]+$') AS extension;

-- Query #13
SELECT REGEXP_SUBSTR('abc123xyz','^[A-Za-z]{3}') AS alphabets;

-- Query #14
SELECT REGEXP_SUBSTR('abc123xyz','[0-9]{5}') AS numbers;

-- Query #15
SELECT REGEXP_SUBSTR('EMP001_IN_91','^[A-Za-z]{3}') AS first_three;

-- Query #16
SELECT RIGHT('EMP001_IN_91',2) AS last_two;

-- Query #17
SELECT SUBSTRING('EMP001_IN_91',4,3) AS employee_number;

-- Query #18
SELECT RIGHT('EMP001_IN_91',2) AS country_code;

-- Query #19
SELECT REGEXP_SUBSTR('EMP001_IN_91','_[A-Z]{2}_') AS middle_text;

-- Query #20
SELECT REGEXP_SUBSTR('+91-9876543210','[0-9]+') AS country_code;
