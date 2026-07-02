
-- CTEs (Commmon Table Expressions)
-- Can only be used in the FROM clause

WITH cte_table AS 
(
	SELECT
	*
	FROM
		dim_product
	WHERE 
		unit_price > (SELECT AVG(unit_price) FROM dim_product)
),

cte_table2 AS 
(
	SELECT * FROM cte_table
    WHERE product_name IN ('Figure Method', 'Huge Change', 'Film Finally')
)

SELECT * FROM cte_table2;




	

