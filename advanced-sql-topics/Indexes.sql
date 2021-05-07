/*
Syntax:
	CREATE INDEX index_name
    ON table_name (column_1, column_2, ..);
*/

USE employees;

-- how many people have been hired after the 1st of January 2000?
SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';
    

CREATE INDEX i_hire_date ON employees(hire_date);
    
-- select all employees bearing the name 'Georgi Facello'
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Georgi'
        AND last_name = 'Facello';
        
CREATE INDEX i_composite ON employees(first_name, last_name);


-- Show indexes from table from database
SHOW INDEX FROM employees FROM employees;


-- drop the 'i_hire_date' index
ALTER TABLE employees
DROP INDEX i_hire_date;


/*
Select all records from the ‘salaries’ table of people whose salary is higher than $89,000 per annum.

Then, create an index on the ‘salary’ column of that table, and check if it has sped up the search of 
the same SELECT statement.
*/

SELECT

    *

FROM

    salaries

WHERE

    salary > 89000;


CREATE INDEX i_salary ON salaries(salary);


SELECT

    *

FROM

    salaries

WHERE

    salary > 89000;