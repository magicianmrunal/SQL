-- JOINS

SELECT * 
FROM employee_demographics;

SELECT *
FROM employee_salary;


SELECT DEM.employee_id, AGE, OCCUPATION
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
;

SELECT *
FROM employee_demographics AS DEM
RIGHT JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
;

-- SELF JOIN

SELECT EMP1.employee_id AS EMP_SANTA,
EMP1.first_name AS FIRST_NAME_SANTA,
EMP1.last_name AS LAST_NAME_SANTA,
EMP2.employee_id AS EMP_ID,
EMP2.first_name AS EMP_FIRST_NAME,
EMP2.last_name AS EMP_LAST_NAME
FROM employee_salary AS EMP1
JOIN employee_salary AS EMP2
	ON EMP1.employee_id + 1 = EMP2.employee_id
;

-- JOINING MULTIPLE TABLES TOGETHOR

SELECT *
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
INNER JOIN parks_departments AS PD
	ON SAL.dept_id = PD.department_id
;

SELECT *
FROM parks_departments

