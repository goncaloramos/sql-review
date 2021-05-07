# remove the duplicates from the two tables
DELETE FROM dept_manager_dup 
WHERE
    emp_no = '110228';
    
DELETE FROM departments_dup 
WHERE
    dept_no = 'd009';
    
# add back the initial records
INSERT INTO dept_manager_dup
VALUES ('110228', 'd003', '1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES ('d009', 'Customer Service');

# LEFT JOIN
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.emp_no = d.dept_no
GROUP BY m.emp_no , m.dept_no , d.dept_name
ORDER BY m.dept_no;

# LEFT JOIN inverted order test, change dept_no table on select, LEFT JOIN == LEFT OUTER JOIN
SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        LEFT OUTER JOIN
    dept_manager_dup m ON m.emp_no = d.dept_no
GROUP BY m.emp_no , m.dept_no , d.dept_name
ORDER BY m.dept_no;

# LEFT JOIN WHERE

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.emp_no = d.dept_no
WHERE
    dept_name IS NULL
ORDER BY m.dept_no;

