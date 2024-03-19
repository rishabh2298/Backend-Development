
--  1. Shippers

-- Print all details of shippers whose details are stored in the database.

SELECT
 *
FROM
 Shippers;
 


--  2. ATOMIC

-- Print the least and the highest sale_price amongst products sold by the Company ATOMIC.

SELECT
 MIN(sale_price), MAX(sale_price)
FROM
 Products
WHERE
 Brand = 'ATOMIC';
 