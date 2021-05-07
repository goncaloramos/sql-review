#how many employees registered in the db

SELECT 
    COUNT(emp_no)
FROM
    employees;

#verify no missing first_name
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
   
#count first_names
SELECT 
    COUNT(first_name)
FROM
    employees;
    
#how many different names can be found in the employees table

SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    
#How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?

SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;

#How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise.
SELECT 
    COUNT(*)
FROM
    dept_manager;