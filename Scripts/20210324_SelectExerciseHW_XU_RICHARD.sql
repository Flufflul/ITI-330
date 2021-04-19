-- always start with a use statement it330mc_Main
USE it330mc_Main;

-- basic select, all columns -  exampleCategories table
SELECT
	*
FROM
	exampleCategories;

-- basic select, some columns - exampleCategories table, categoryDesc column
SELECT
	categoryDesc
FROM
	exampleCategories;

-- select statement with aliases - customer table, first_name, last_name, email columns

-- select statement with where clause (copy statement from the previous statement) - active = 1

-- select statement with order by (copy statement from previous select) - use last_name column