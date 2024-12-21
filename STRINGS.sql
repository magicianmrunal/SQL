-- STRING FUNC

SELECT FIRST_NAME, LENGTH(first_name) 
FROM employee_demographics
ORDER BY 2 DESC
;

SELECT FIRST_NAME, UPPER(first_name) 
FROM employee_demographics
ORDER BY 2 DESC
;
-- TRIM

SELECT TRIM('         sky              ');
SELECT LTRIM('         sky              ');
SELECT RTRIM('         sky              ');

SELECT FIRST_NAME,
LEFT(FIRST_NAME,4),
RIGHT(FIRST_NAME,4),
SUBSTRING(FIRST_NAME,1,4),
BIRTH_DATE,
SUBSTRING(BIRTH_DATE,6,2) AS BIRTH_MONTH
FROM EMPLOYEE_DEMOGRAPHICS
;

-- REPALCE

SELECT FIRST_name, REPLACE(first_name, 'A','Z') from employee_demographics
;

SELECT LOCATE('X', 'ALEXANDER');

SELECT FIRST_NAME, LOCATE('AN',FIRST_NAME) AS L
FROM employee_demographics
ORDER BY L DESC;

SELECT FIRST_NAME, LAST_NAME, 
CONCAT(FIRST_NAME,' ',LAST_NAME)
FROM employee_demographics;