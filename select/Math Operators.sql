SELECT 
    *
FROM
    employees
WHERE
    first_name <> 'Mark'; -- <> not equal, same as !=

# Provide a list of employees hired after the 1st of January 2000

SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';
    
# Provide a list of employees hired before the 1st of February 1985

SELECT 
    *
FROM
    employees
WHERE
    hire_date < '1985-02-01';
    
# Retrieve a list with data about all female employees who were hired in the year 2000 or after.

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= '2000-01-01';
        
#Extract a list with all employees’ salaries higher than $150,000 per annum.

SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;