
-- LINK : https://cp.masaischool.com/assignments/1335/view

-- 1. Uneven Payments

-- Print all details of Orders which were placed using a payment method whose Payment ID is not an even number.
-- Sort the result in ascending order of Order ID.

SELECT
 *
FROM
 Orders
WHERE
 MOD(PaymentID,2) != 0
ORDER BY
 OrderID ASC;



--  2. 57388'S Orders

-- Count the number of Orders placed by Customer with ID 57388.

SELECT
 COUNT(*)
FROM
 Orders
WHERE
 CustomerID = 57388
GROUP BY
 CustomerID;



-- 3. PK Cities

-- Identify and print names of Cities whose names start with the letter P or with the letter K.
-- Make sure to not print any duplicates.
-- Sort the result set in alphabetical order of City names.

SELECT
 DISTINCT City
FROM
 Customers
WHERE
 City LIKE 'P%' OR City LIKE 'K%'
ORDER BY
 City;
 
