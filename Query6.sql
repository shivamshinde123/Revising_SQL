
-- CONDITIONALS

SELECT
	*,
    CASE
		WHEN unit_price < 100 THEN 'affordable'
        WHEN unit_price <= 200 THEN 'normal'
        ELSE 'expensive'
	END AS price_category
FROM 
	dim_product;
    
SELECT
	*,
    CASE
		WHEN unit_price < 100 AND category = 'clothing' THEN 'Affordable'
        WHEN unit_price <= 200 AND category = 'clothing' THEN 'Normal'
        WHEN unit_price > 200 AND category = 'clothing' THEN 'Expensive'
        ELSE CONCAT('Not for ', category)
	END AS price_category
FROM 
	dim_product;
    

