-- create employees_dup

DROP TABLE IF EXISTS employees_dup;
CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

-- duplicate the structure of 'employees' table
INSERT INTO employees_dup
SELECT 
	e.*
FROM 
	employees e
LIMIT 20;

-- check 'employees_dup' table
SELECT 
    *
FROM
    employees_dup;
    
-- insert a duplicate of the first row
INSERT INTO employees_dup 
VALUES ('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

/*
UNION ALL: used to combine a few SELECT statements in a single output

Better Results: UNION
OPTIMIZE PERFORMANCE: UNION ALL
*/

-- UNION vs UNION ALL: Union displays only distinct values, Union all retrieves the duplicates as well

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
    
    
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
    
    
/*
Go forward to the solution and execute the query. 
What do you think is the meaning of the minus sign 
before subset A in the last row (ORDER BY -a.emp_no DESC)? 
*/

SELECT 
    *
FROM
    (SELECT 
        e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees e
    WHERE
        last_name = 'Denis' UNION SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        dept_manager dm) AS a
ORDER BY - a.emp_no DESC;