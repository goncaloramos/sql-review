SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;


SELECT 
    COUNT(salary)
FROM
    salaries;
    
    
#How many employee start dates are in the database
SELECT 
    COUNT(DISTINCT from_date)
FROM
    salaries; 
    
    
# Returns number of all rows of the table, null values included
SELECT 
    COUNT(*)
FROM
    salaries;
    

#How many departments are there in the “employees” database? Use the ‘dept_emp’ table to answer the question.
SELECT 
    *
FROM
    dept_emp;
    

SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;