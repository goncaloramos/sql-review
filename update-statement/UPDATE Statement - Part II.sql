SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;


COMMIT;


-- Change all cols
UPDATE departments_dup 
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';
    
    
ROLLBACK;


COMMIT;


#Change the “Business Analysis” department name to “Data Analysis”.

SELECT 
    *
FROM
    departments;


UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';