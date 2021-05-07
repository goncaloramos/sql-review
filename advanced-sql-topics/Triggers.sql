USE employees;

COMMIT;

-- before insert
DELIMITER $$

CREATE TRIGGER before_salaries_insert
BEFORE INSERT ON salaries
FOR EACH ROW
BEGIN
	IF NEW.salary < 0 THEN
		SET NEW.salary = 0;
	END IF;
END$$

DELIMITER ;


-- check employee 10001
SELECT 
    *
FROM
    salaries
WHERE
    emp_no = '10001';
    

-- insert new negative record
INSERT INTO salaries VALUES ('10001', -92891, '2010-06-22', '9999-01-01');


-- check employee 10001
SELECT 
    *
FROM
    salaries
WHERE
    emp_no = '10001';
    
    
-- before update trigger
DELIMITER $$

CREATE TRIGGER before_salaries_update
BEFORE UPDATE ON salaries
FOR EACH ROW
BEGIN 
	IF NEW.salary < 0 THEN 
		SET NEW.salary = OLD.salary; 
	END IF; 
END $$

DELIMITER ;


-- run update statement
UPDATE salaries 
SET 
    salary = 98765
WHERE
    emp_no = '10001'
        AND from_date = '2010-06-22';
        
        
-- check employee 10001
SELECT 
    *
FROM
    salaries
WHERE
    emp_no = '10001';
    
    
-- run update statement
UPDATE salaries 
SET 
    salary = -50000
WHERE
    emp_no = '10001'
        AND from_date = '2010-06-22';
        
        
-- check employee 10001
SELECT 
    *
FROM
    salaries
WHERE
    emp_no = '10001';
    
    
##############################

SELECT SYSDATE();

SELECT DATE_FORMAT(SYSDATE(), '%y-%m-%d') as today;

/*
A new employee has been promoted to a manager.

Annual salary should immediately become 20,000 dollars higher
than the highest annual salary they'd ever earned until that momment.

A new record in the 'department manager' table.

Create a trigger that will apply several modifications to the 'salaries' table once 
the relevant record in the 'department manager' table has been inserted:
	- End date of the previously highest salary contract of that employee is the one from
    the execuriton of the insert statement.
    - Insert a new record in the 'salaries' table about the same employee that reflects their next
    contract as a manager.
*/

DELIMITER $$;
CREATE TRIGGER trig_ins_dept_mng
AFTER INSERT ON dept_manager
FOR EACH ROW
BEGIN
	DECLARE v_curr_salary int;
    
SELECT
	MAX(salary)
INTO v_curr_salary FROM
WHERE
	emp_no = NEW,emp_no;
    
    IF v_curr_salary IS NOT NULL THEN
		UPDATE salaries
        SET
			to_date = SYSDATE()
		WHERE
			emp_no = NEW.emp_no AND to_date = NEW.to_date;
            
		INSERT INTO salaries
			VALUES (NEW.emp_no, v_curr_salary + 20000, NEW.from_date, NEW.to_date);
	END IF;
END$$

DELIMITER ;

INSERT INTO dept_manager VALUES ('111534', 'd009', date_format(sysdate(), '%Y-%m-%d'), '9999-01-01');


SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no = 111534;
    
SELECT 
    *
FROM
    salaries
WHERE
    emp_no = 111534;


ROLLBACK;


/*
Create a trigger that checks if the hire date of an employee is
higher than the current date. If true, set this date to be the
current date. Format the output appropriately (YY-MM-DD).
*/
DELIMITER $$

CREATE TRIGGER trig_hire_date  
BEFORE INSERT ON employees
FOR EACH ROW  
BEGIN  
	IF NEW.hire_date > date_format(sysdate(), '%Y-%m-%d') THEN     
		SET NEW.hire_date = date_format(sysdate(), '%Y-%m-%d');     
	END IF;  
END $$  

DELIMITER ;  

   

INSERT employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');  

SELECT  

    *  

FROM  

    employees

ORDER BY emp_no DESC;