
-- REAL WORLD SCENARIOS

-- 1)Finding the 5th most expensive product

WITH ranking_table AS
(
SELECT 
	*, 
	DENSE_RANK() OVER (ORDER BY unit_price DESC) AS ranking 
FROM 
	dim_product
)

SELECT
	*
FROM
	ranking_table
WHERE ranking = 5;
	
-- 2) Finding the 5th most expensive product in each category

WITH ranking_cte AS
(
SELECT
	*,
    DENSE_RANK() OVER (PARTITION BY category ORDER BY unit_price DESC) as 'price_rank'
FROM 
	dim_product
)

SELECT 
	*
FROM 
	ranking_cte
WHERE
	price_rank = 5;

-- 3) Removing duplicates 
-- To remove the duplicates, we will partition by primary key
-- Then the duplicates will get row number greater than 1
-- so we will only filter for values where row number is 1

WITH rem_dup_cte AS
(
	SELECT
		*,
        ROW_NUMBER() OVER (PARTITION BY id) AS id_row_number
	FROM
		customers
)

SELECT 
	*
FROM
	rem_dup_cte
WHERE
	id_row_number = 1;
    
-- 4) LAG AND LEAD FUNCTIONS
-- Finding the previous day and next day temperatures

SELECT
	*,
    LAG(temp, 1, 'N/A') OVER (ORDER BY id ASC) AS prev_day_temp,
    LEAD(temp, 1, 'N/A') OVER (ORDER BY id ASC) AS next_day_temp
FROM 
	weather;
