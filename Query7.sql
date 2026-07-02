
-- WINDOW FUNCITONS

-- 1) Moving average
SELECT 
	*,
    SUM(unit_price) OVER(ORDER BY unit_price) AS running_unit_price_by_increasing_price
FROM 
	dim_product;
    
SELECT 
	*,
    SUM(unit_price) OVER(ORDER BY launch_date) AS running_unit_price_by_increasing_date
FROM 
	dim_product;
    
-- 2) FRAMES

SELECT
	*,
    SUM(unit_price) OVER (ORDER BY launch_date ROWS BETWEEN unbounded preceding AND current row)
FROM 
	dim_product;
    
SELECT
	*,
    SUM(unit_price) OVER (ORDER BY launch_date ROWS BETWEEN unbounded preceding AND unbounded following)
FROM 
	dim_product;
    
SELECT 
	*,
    SUM(unit_price) OVER (PARTITION BY brand ORDER BY launch_date) AS running_sum_of_brands_order_by_launch_date
FROM 
	dim_product;
    
    
-- ranking functions

SELECT 
	unit_price,
    ROW_NUMBER() OVER (ORDER BY unit_price) AS 'row_number',
    RANK() OVER (ORDER BY unit_price) AS 'rank',
    DENSE_RANK() OVER (ORDER BY unit_price) AS 'dense_rank'
FROM 
	dim_product;
    
SELECT 
	unit_price,
    category,
    ROW_NUMBER() OVER (PARTITION BY category ORDER BY unit_price) AS 'row_number',
    RANK() OVER (PARTITION BY category ORDER BY unit_price) AS 'rank',
    DENSE_RANK() OVER (PARTITION BY category ORDER BY unit_price) AS 'dense_rank'
FROM 
	dim_product;

