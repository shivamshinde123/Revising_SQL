
# Creating the database
CREATE DATABASE Sales;

# Creating the table inside the database
CREATE TABLE sales.stores
(
    store_id INT,
    store_name VARCHAR(200)
);
# Insert into the table in database
INSERT INTO sales.stores
VALUES
    (1, "lakshya gift shop"),
    (2, "gatagat shop, golai");

# Select the data from the table
SELECT * FROM sales.stores;


# Creating another table
CREATE TABLE sales.stores_new
(
    store_id INT UNIQUE,
    store_name VARCHAR(200) NOT NULL
);

# Insert some data
INSERT INTO sales.stores_new
VALUES
    (1, 'vivek general stores, Latur, MH, India');

SELECT * FROM sales.stores_new;

DROP TABLE stores_new;

TRUNCATE TABLE stores;

ALTER TABLE stores
ADD COLUMN store_city VARCHAR(200);

SELECT * FROM stores;

ALTER TABLE stores
RENAME COLUMN store_city TO store_location;
