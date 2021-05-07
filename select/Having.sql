SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';

# HAVING allows a condition with an aggregate function, while WHERE cannot use aggregate functions within conditions    

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

#Select all employees whose average salary is higher than $120,000 per annum.

SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;