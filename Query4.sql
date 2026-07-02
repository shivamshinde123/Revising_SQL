
-- DML Commands

-- INSERT command (already done in previous scripts)

-- UPDATE command
UPDATE customers
SET name = 'sam'
WHERE id = 101;

-- DELETE command
DELETE FROM customers
WHERE email = 'aa';

SELECT * FROM customers