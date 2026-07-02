
-- VIEWS

-- 3) Removing duplicates 
-- To remove the duplicates, we will partition by primary key
-- Then the duplicates will get row number greater than 1
-- so we will only filter for values where row number is 1

CREATE VIEW dedup_view AS

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
	id_row_number = 1

-- Now let's run this view in the next query file.
