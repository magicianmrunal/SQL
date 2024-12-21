-- STORED PROCEDURES

SELECT *
FROM employee_salary
WHERE SALARY >= 50000;


CREATE PROCEDURE LARGE_SALARIES()
SELECT *
FROM employee_salary
WHERE SALARY >= 50000;
;

CALL LARGE_SALARIES();

DROP PROCEDURE LARGE_SALARIES2;

DELIMITER $$
CREATE PROCEDURE LARGE_SALARIES2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE SALARY >= 50000;
	SELECT *
	FROM employee_salary
	WHERE SALARY >= 10000;
END $$
	
DELIMITER ;

CALL LARGE_SALARIES2();
CALL NEW_procedure();

