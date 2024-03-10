
-- Link : https://cp.masaischool.com/assignments/1335/view

-- 1. 4 With An A Or 5

-- Print all details of Customers whose first name is a 4 letter word which starts with the letter A or whose last name is a 5 letter word.
-- Sort the result in ascending order of CustomerID.

SELECT
 *
FROM
 Customers
WHERE
 LENGTH(FirstName) = 4 AND FirstName LIKE 'A%'
 OR
 LENGTH(LastName) = 5
ORDER BY
 CustomerID ASC;



-- 2. Safe Harvest's Rice

--  Print all details of Products which contain 'Rice' in their names, are produced by the brand 'Safe Harvest' and whose market price is less than 85.
--  Sort the result in ascending order of ProductID.

SELECT
 *
FROM
 Products
WHERE
 Product LIKE '%Rice%' AND brand LIKE 'Safe Harvest' AND market_price < 85
ORDER BY
 ProductID ASC;



-- 3. William Lawson

-- Print all details of Customers whose last name is either Williams or Lawson and who reside in the United States.
-- Sort the result set in ascending order of CustomerID.

SELECT
 *
FROM
 Customers
WHERE
 LastName IN ('Williams','Lawson') AND Country = 'United States'
ORDER BY
 CustomerID ASC;
 