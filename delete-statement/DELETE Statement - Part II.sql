SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;


# Unsafe delete
DELETE FROM departments_dup;


ROLLBACK;


# Remove the department number 10 record from the “departments” table.

SELECT 
    *
FROM
    departments;
    

DELETE FROM departments 
WHERE
    dept_no = 'd010'; 
    
    
ROLLBACK;