-- CTEs

WITH CTE_EXAMPLE AS
(
SELECT GENDER, AVG(SALARY) AVG_SAL, MAX(SALARY) MAX_SAL, MIN(SALARY) MIN_SAL, COUNT(SALARY) COUNT_SAL
FROM employee_demographics DEM
JOIN employee_salary SAL
	ON DEM.employee_id = SAL.employee_id
GROUP BY GENDER
)
SELECT AVG(AVG_SAL)
FROM CTE_EXAMPLE

;

-- WITHOUT ALIASES
WITH CTE_EXAMPLE (GENDER, AVG_SAL, MAX_SAL, MIN_SAL, COUNT_SAL)AS
(
SELECT GENDER, AVG(SALARY), MAX(SALARY), MIN(SALARY), COUNT(SALARY)
FROM employee_demographics DEM
JOIN employee_salary SAL
	ON DEM.employee_id = SAL.employee_id
GROUP BY GENDER
)
SELECT *
FROM CTE_EXAMPLE
;


DROP TABLE CTE_EXAMPLE;



WITH CTE_EXAMPLE AS (
						SELECT EMPLOYEE_ID, GENDER, birth_date
						FROM employee_demographics 
						WHERE BIRTH_DATE > '1985-01-01'
					), 
CTE_EXAMPLE2 AS 		(
						SELECT EMPLOYEE_ID, SALARY
						FROM EMPLOYEE_SALARY
						WHERE SALARY > 50000
					)

SELECT *
FROM CTE_EXAMPLE
JOIN CTE_EXAMPLE2
	ON CTE_EXAMPLE.EMPLOYEE_ID = CTE_EXAMPLE2.EMPLOYEE_ID
;

