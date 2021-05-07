SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;


SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name
FROM
    departments_dup;
    
    
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departments_dup
ORDER BY dept_no ASC;


SELECT 
    dept_no,
    dept_name,
    COALESCE('department manager name') AS fake_col
FROM
    departments_dup;
    

/*    
Select the department number and name from the ‘departments_dup’ table 
and add a third column where you name the department number (‘dept_no’) as ‘dept_info’. 
If ‘dept_no’ does not have a value, use ‘dept_name’.
*/

SELECT 
    dept_no, dept_name, IFNULL(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;


/*
Modify the code obtained from the previous exercise in the following way. 
Apply the IFNULL() function to the values from the first and second column, 
so that ‘N/A’ is displayed whenever a department number has no value, 
and ‘Department name not provided’ is shown if there is no value for ‘dept_name’.
*/

SELECT 
    IFNULL(dept_no, 'N/A') AS dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;

