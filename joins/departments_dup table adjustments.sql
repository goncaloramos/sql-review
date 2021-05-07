USE employees;

SELECT 
    *
FROM
    departments_dup;

# DROP COLUMN to remove the ‘dept_manager’ column from the ‘departments_dup’ table.
ALTER TABLE departments_dup
DROP COLUMN dept_manager;

# Then, use CHANGE COLUMN to change the ‘dept_no’ and ‘dept_name’ columns to NULL.
ALTER TABLE departments_dup
CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

# Then, insert a record whose department name is “Public Relations”.

INSERT INTO departments_dup (dept_name)
VALUES ('Public Relations');

# Delete the record(s) related to department number two.

DELETE FROM departments_dup 
WHERE
    dept_no = 'd002';

# Insert two new records in the “departments_dup” table. Let their values in the “dept_no” column be “d010” and “d011”.

INSERT INTO departments_dup(dept_no) 
VALUES ('d010'), ('d011');

# Create and fill 'dept_manager_dup' table

DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (

  emp_no int(11) NOT NULL,

  dept_no char(4) NULL,

  from_date date NOT NULL,

  to_date date NULL

  );


INSERT INTO dept_manager_dup
SELECT * FROM dept_manager;


INSERT INTO dept_manager_dup (emp_no, from_date)
VALUES                (999904, '2017-01-01'),

                                (999905, '2017-01-01'),

                               (999906, '2017-01-01'),

                               (999907, '2017-01-01');

 

DELETE FROM dept_manager_dup
WHERE
    dept_no = 'd001';


INSERT INTO departments_dup (dept_name)
VALUES                ('Public Relations');

 
DELETE FROM departments_dup
WHERE
    dept_no = 'd002'; 


SELECT 
    *
FROM
    dept_manager_dup;
