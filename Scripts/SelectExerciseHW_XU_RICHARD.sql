-- always start with a use statement it330mc_Main
USE it330mc_Main;

-- basic select, all columns -  exampleCategories table
SELECT
	*
FROM
	exampleCategories;

-- basic select, some columns - exampleCategories table, categoryDesc column
SELECT
	categoryDescription
FROM
	exampleCategories;

-- select statement with aliases - customer table, first_name, last_name, email columns
SELECT 
	c.first_name as forename, 
    c.last_name as surname, 
    c.email
FROM 
	customer c;

-- select statement with where clause (copy statement from the previous statement) - active = 1
SELECT 
	c.first_name as forename, 
    c.last_name as surname, 
    c.email
FROM 
	customer c
WHERE
	active = 1;

-- select statement with order by (copy statement from previous select) - use last_name column
SELECT 
	c.first_name as forename, 
    c.last_name as surname, 
    c.email
FROM 
	customer c
WHERE
	active = 1
ORDER BY
	surname;