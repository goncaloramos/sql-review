SELECT 
    first_name
FROM
    employees
GROUP BY first_name; # only distinct values selected

#list composed by employees first_name and number of times encountered in the db, desc order

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;

