/*
Session - a series of info exchange interactions, or a dialogue,
between a computer and a user

STEP 1 - set a connection
STEP 2 - establish a connection
STEP 3 - the Workbench interface will open immediately
STEP 4 - end a connection

Session variable - exists only for the session in which you are operating
*/

USE employeees;

-- create session variable (@ indicates a MySQL session variable)
SET @s_var1 = 3;

-- display session variable
SELECT @s_var1;