-- always start with a use statement it330mc_Main
USE it330mc_Main;

-- ...
SELECT 
	ad.address,
    ad.district,
    ci.city,
    ad.postal_code,
    co.country
FROM
	addresses ad
INNER JOIN
	city ci on ad.city_id = ci.city_id
INNER JOIN
	country co on co.country_id = ci.country_id
WHERE
	co.country in ('United States of America')
ORDER BY
	co.country asc;
    
SELECT * FROM FullAddress;
