
-- First SELECT
SELECT * FROM dim_customer;

-- LIMIT Clause
SELECT 
	customer_id, 
	first_name, 
    last_name 
FROM 
	dim_customer
LIMIT 10;

-- WHERE Clause (Make sure to always to use brackets between the conditions to avoid the silent errors which are hard to debug)
SELECT 
	*
FROM
	dim_customer
WHERE
	(gender = 'F') AND (country = 'France') AND (join_date > '2022-01-01');
    
-- AND/OR Operator (Make sure to always to use brackets between the conditions to avoid the silent errors which are hard to debug)
SELECT 
	*
FROM
	dim_customer
WHERE
	(gender = 'F') AND ((country = 'France') OR (join_date > '2022-01-01'));
    
-- LIKE/ILIKE 
SELECT
	*
FROM 
	dim_customer
WHERE
	first_name LIKE 'T%';

SELECT
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'T__f%y';
    
 -- Sorting the data
SELECT
	*
FROM
	dim_product
ORDER BY unit_price DESC;


SELECT
	*
FROM 
	dim_product
ORDER BY unit_price DESC
LIMIT 3;

-- Using aliasing
SELECT 
	product_key, 
	product_id,
    product_name AS 'product name',
    category
FROM
	dim_product;
    
-- grouping
SELECT
	category,
	AVG(unit_price) AS average_price
FROM 
	dim_product
GROUP BY category;

SELECT
	category,
    AVG(unit_price) AS average_price
FROM 
	dim_product
GROUP BY
	category
HAVING 
	average_price > 500; -- Here you can use alias in mysql but this is not supported in every sql server. You can use AVG(unit_price) when it isn't supported
    

	



    
    


