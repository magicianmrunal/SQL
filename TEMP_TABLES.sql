-- TEMPORARY TABLES

USE PARKS_AND_RECREATION;
CREATE TEMPORARY TABLE temp_table
(FIRST_NAME VARCHAR (50),
LAST_NAME VARCHAR (50),
FAVOURITE_MOVIE VARCHAR(100)
);

SELECT * 
FROM temp_table;

INSERT INTO temp_table VALUES('MRUNAL','SINGH','INTERSTELLAR');

SELECT *
FROM EMPLOYEE_SALARY;

CREATE TEMPORARY TABLE salary_over_50k
SELECT * 
FROM employee_salary
WHERE SALARY >= 50000;

SELECT *
FROM SALARY_OVER_50K;