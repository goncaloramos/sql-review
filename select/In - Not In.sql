SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Mark'
        OR first_name = 'Nathan';
        
-- OR

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
# Use the IN operator to select all individuals from 'employees' table whose first name is either 'Denis' or 'Elvis'

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');

# Extract all records from 'employees' table, aside those with employees named John, Mark, Jacob

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');