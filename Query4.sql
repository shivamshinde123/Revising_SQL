
-- JOINS

-- CREATE TABLE orders
-- (
-- 	o_id INT,
--     cust_id INT,
--     price INT
-- );

-- INSERT INTO orders
-- VALUES
-- (1, 101, 1000),
-- (2, 201, 1100),
-- (3, 501, 1200);

-- CREATE TABLE customers
-- (
-- 	id INT, 
--     name VARCHAR(100),
--     email VARCHAR(100)
-- );

-- INSERT INTO customers
-- VALUES
-- (101, 'lova', 'aa'),
-- (201, 'ansh', 'bb'),
-- (301, 'lamba', 'cc');

-- INNER JOIN
SELECT 
	*
FROM
	orders o
INNER JOIN
	customers c
ON 
	o.cust_id = c.id;
    
    
-- LEFT JOIN
SELECT 
	*
FROM
	orders o
LEFT JOIN
	customers c
ON 
	o.cust_id = c.id;
    
-- We don't use RIGHT JOIN because we can acomplish the same thing with the left join as well

-- FULL JOIN - This will give us error, cause in mysql, full joins aren't available
-- SELECT 
-- 	*
-- FROM
-- 	orders o
-- OUTER JOIN
-- 	customers c
-- ON 
-- 	o.cust_id = c.id;

-- But we can get the result of full join using the union of left and right join.
