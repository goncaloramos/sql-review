USE employees;
DROP function IF EXISTS f_emp_avg_salary;

/*
DECLARE is a keyword for creating local variables only.

v_avg_salary cannot be accessed from outside of this block.
*/

DELIMITER $$
CREATE function f_emp_avg_salary (p_emp_no integer) RETURNS DECIMAL(10,2)
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

DELIMITER ;