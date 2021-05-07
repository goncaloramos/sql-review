/*
stored routine - an sql statement, or set of sql statements, that can be stored on the dbs. 
types - stored procedures vs functions
functions - user-defined functions, built-in functions
*/

USE employees;

-- define procedure
DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
	SELECT * FROM employees
	limit 1000;
END$$

DELIMITER ;


-- invoke procedure
call employees.select_employees();

-- invoke procedure on already assigned db
call select_employees();


/*
Ex: Create a procedure that will provide the average salary of all employees.
	Then, call the procedure.
*/

DROP PROCEDURE IF EXISTS avg_salary;

DELIMITER $$
CREATE PROCEDURE avg_salary()
BEGIN
	SELECT AVG(salary)
    FROM salaries;
END$$

DELIMITER ;

CALL employees.avg_salary();