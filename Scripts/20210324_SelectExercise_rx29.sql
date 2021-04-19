-- always start with a use statement
USE it330mc_Main;

-- basic select, all columns
SELECT
	*
FROM
	actors;

-- basic select, some columns
SELECT 
	last_name,
    first_name
FROM
	actors;

-- select statement with aliases
SELECT 
	a.first_name as forename,
    a.last_name as surname
FROM 
	actors a;

-- select statement with where clause
SELECT 
	a.first_name as forename,
    a.last_name as surname
FROM 
	actors a
WHERE
	a.last_name = 'CHASE';
