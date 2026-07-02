
-- SUBQUERIES
    
-- 1) using subquery in condition
SELECT
	*
FROM
	dim_product
WHERE 
	unit_price > (SELECT AVG(unit_price) FROM dim_product);
    
-- 2) using subquery in FROM clause

SELECT
	*
FROM
	(SELECT
		*
	FROM
		dim_product
	WHERE 
		unit_price > (SELECT AVG(unit_price) FROM dim_product)) AS subquery_table
WHERE 
	product_name = 'Figure Method';
