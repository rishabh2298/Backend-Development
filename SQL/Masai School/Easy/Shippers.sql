
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
 


--  3. 08-08-2021 Orders

-- Print all details of orders that were placed on the 8th of August 2021.
-- Sort the result set in ascending order of Order ID.
-- Date format for orderdate is 'YYYY-MM-DD'.

SELECT
 *
FROM
 Orders
WHERE
 DATE_FORMAT(OrderDate, '%Y-%m-%d') = '2021-08-08'
ORDER BY
 OrderID ASC;
 