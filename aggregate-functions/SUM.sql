SELECT 
    SUM(salary)
FROM
    salaries;


# What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?

SELECT 
    *
FROM
    salaries;
    

SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';