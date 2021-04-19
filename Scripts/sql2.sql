-- use statement and if you have anything in the Output pane, right click and hit clear
USE it330mc_Main;

-- select title, rental rate and replacement_cost from films table
SELECT
	fi.title,
    fi.rental_rate,
    fi.replacement_cost
FROM
	films as fi;

-- order films table by the title
SELECT
	*
FROM
	films fi
ORDER BY
	fi.title;

-- order films table by the rental rate
SELECT
	*
FROM
	films fi
ORDER BY
	fi.rental_rate;

-- order films table by the replacement_cost
SELECT
	*
FROM
	films fi
ORDER BY
	fi.replacement_cost;

-- get cid,amt,paydate from the payments table
SELECT
	pa.customer_id,
    pa.amount,
    pa.payment_date
FROM
	payment pa;

-- get a sum of payments by customer_id
SELECT
	pa.customer_id,
	sum(pa.amount)
FROM
	payment pa
GROUP BY 
	pa.customer_id;

-- look at joining the payment and customer tables
SELECT
	*
FROM
	payment pa
INNER JOIN
	customer cu on cu.customer_id=pa.customer_id
GROUP BY
	pa.customer_id;
