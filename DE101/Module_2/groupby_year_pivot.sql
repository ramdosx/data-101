SELECT DATE_PART('month', order_date) AS month
, SUM(CASE WHEN DATE_PART('year', order_date) = 2016 THEN profit ELSE 0 END) AS p2016
, SUM(CASE WHEN DATE_PART('year', order_date) = 2017 THEN profit ELSE 0 END) AS p2017
, SUM(CASE WHEN DATE_PART('year', order_date) = 2018 THEN profit ELSE 0 END) AS p2018
, SUM(CASE WHEN DATE_PART('year', order_date) = 2019 THEN profit ELSE 0 END) AS p2019
	FROM orders
GROUP BY DATE_PART('month', order_date)