-- SUBQUERIES

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT * 
FROM employee_demographics
WHERE employee_id IN ( SELECT employee_id
						FROM employee_salary
                        WHERE DEPT_ID =1
						);
                        
SELECT employee_id 
FROM employee_salary
WHERE DEPT_ID =1;

SELECT FIRST_NAME, AVG(SALARY)
FROM employee_salary
GROUP BY FIRST_NAME, SALARY;


SELECT FIRST_NAME, LAST_NAME,SALARY,
(SELECT AVG(SALARY) FROM employee_salary) AS AVERAGE_SALARY
FROM employee_salary

