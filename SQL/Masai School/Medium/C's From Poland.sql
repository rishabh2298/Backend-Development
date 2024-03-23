-- Link : https://cp.masaischool.com/assignments/1382/view

-- 1. C's From Poland

-- Print Customer ID, First Name, Last Name, Date of Birth, City, State, Country and Email ID of customers from the Country 'Poland' 
-- whose first and last names start with the letter C.
-- Sort the result set in ascending order of Customer ID

SELECT
 CustomerID, FirstName, LastName, Date_of_Birth, City, State, Country, Email
FROM
 Customers
WHERE
 Country LIKE 'Poland' AND FirstName LIKE 'C%' AND LastName LIKE 'C%'
ORDER BY
 CustomerID ASC;



-- 2. Battery Products

-- Print just the names of Products which contain the word 'Battery' in them.
-- Sort the result set in ascending order of Product Names.

SELECT
 Product
FROM
 Products
WHERE
 Product LIKE '%Battery%'
ORDER BY
 Product ASC;



-- 3. Safe Harvest's Rice

-- Print all details of Products which contain 'Rice' in their names, are produced by the brand 'Safe Harvest' and whose market price is 
-- less than 85.
-- Sort the result in ascending order of ProductID

SELECT
 *
FROM
 Products
WHERE
 Product LIKE '%Rice%' AND Brand LIKE 'Safe Harvest' AND Market_Price < 85
ORDER BY
 ProductID ASC;
