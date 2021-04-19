USE it330mc_Main;

SELECT
	c.city,
    c.country_id,
    co.country_id,
    co.country
FROM
	city as c
INNER JOIN
	country as co on c.country_id = co.country_id;
    
--

