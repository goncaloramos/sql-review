USE employees;

/*
· DETERMINISTIC – it states that the function will always return identical result given the same input

· NO SQL – means that the code in our function does not contain SQL (rarely the case)

· READS SQL DATA – this is usually when a simple SELECT statement is present
*/

DROP function IF EXISTS f_emp_avg_salary;

DELIMITER $$
CREATE FUNCTION f_emp_avg_salary (p_emp_no INTEGER) RETURNS DECIMAL(10,2)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN

DECLARE v_avg_salary DECIMAL(10,2);

SELECT 
    AVG(s.salary)
INTO v_avg_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
    
RETURN v_avg_salary;
END$$


/*
Create a function called ‘emp_info’ that takes for parameters
the first and last name of an employee, and returns the salary
from the newest contract of that employee.

Hint: In the BEGIN-END block of this program, you need to
declare and use two variables – v_max_from_date that will be
of the DATE type, and v_salary, that will be of the DECIMAL (10,2) type.
*/

DROP function IF EXISTS f_emp_info;

DELIMITER $$

CREATE FUNCTION f_emp_info (p_first_name VARCHAR(255), p_last_name VARCHAR(255)) RETURNS DECIMAL(10,2)

DETERMINISTIC NO SQL READS SQL DATA

BEGIN

DECLARE v_max_from_date DATE;
DECLARE v_salary DECIMAL(10,2);

SELECT 
    MAX(from_date)
INTO v_max_from_date FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name;
    
SELECT 
    s.salary
INTO v_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name
        AND s.from_date = v_max_from_date;

RETURN v_salary;
    
RETURN v_avg_salary;
END$$

DELIMITER ;

SELECT f_emp_info('Aruna', 'Journel');