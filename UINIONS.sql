-- UNIONS

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'OLD' AS LABEL
FROM employee_demographics
WHERE AGE > 40 AND GENDER = 'MALE' 
UNION
SELECT first_name, last_name, 'OLD' AS LABEL
FROM employee_demographics
WHERE AGE > 40 AND GENDER = 'FEMALE' 
UNION
SELECT first_name, last_name, 'highly paid' AS LABEL
FROM employee_SALARY
WHERE SALARY > 70000 
; 