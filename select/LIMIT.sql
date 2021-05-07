SELECT 
    *
FROM
    salaries;
    
# 10 highest paid -> order by .. desc

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

# Select first 100 rows from the dept_emp table
SELECT 
    *
FROM
    dept_emp
LIMIT 100;