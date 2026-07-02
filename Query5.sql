
-- TRANSFORMATIONS

-- Numeric transformations

SELECT
	*, 
    unit_price * 0.9 AS discounted_price,
    unit_price + 10 AS taxed_price,
    ROUND(unit_price, 1) AS rounded_price
FROM
	dim_product;
    
-- DATE Transformations

--  1) fetch the current date

SELECT
	date,
	now() AS 'current_timestamp',
    utc_date(),
    utc_time(),
    utc_timestamp()
FROM
	dim_date;
    
-- 2)
SELECT
	date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    Day(date) as day,
    Weekday(date) AS weekday,
    DAYNAME(date) AS dayname,
    DATE(utc_timestamp()) AS 'utc_now_date'
FROM
	dim_date;
    
-- 3) add or subtract the date

SELECT
	date,
    ADDDATE(date, 2),
    SUBDATE(date, 2),
    datediff(utc_timestamp(), date)
FROM 
	dim_date;
    
-- 4) string to datetime

SELECT
	CAST('2023-10-14' AS datetime) 
FROM
	dim_date;
    
-- 5)

SELECT
	date,
    date_format(date, '%W %M %e %Y')
FROM
	dim_date;
    
-- 6) type casting

SELECT 
	customer_key,
    CAST(customer_key AS SIGNED)
FROM
	dim_customer;
    
-- string tranformations

SELECT
	*,
	CONCAT(first_name, " ", last_name) AS full_name,
    concat_ws(' ', first_name, last_name)
FROM
	dim_customer;
    
SELECT
	*,
	LENGTH(first_name) AS first_name_length
FROM 
	dim_customer;

SELECT
	LOWER(city),
    Upper(city),
    replace(email, '@', '%') AS email_replace,
    LEFT(country, 3) AS three_letter_from_left_country,
    reverse(country) AS reverse_country,
    REPEAT(first_name, 2) AS first_name_two_times
FROM
	dim_customer;
    
SELECT 
	substring(email, 1, 4)
FROM 
	dim_customer;
    



