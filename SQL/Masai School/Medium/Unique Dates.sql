-- LINK : https://cp.masaischool.com/assignments/1335/view

-- 1. Unique Dates

SELECT
 OrderDate, ShipDate, DeliveryDate
FROM
 Orders
GROUP BY
 OrderDate, ShipDate, DeliveryDate
ORDER BY
 OrderDate ASC;



-- 2. 7'S Belfast & New York

-- Print all details of customers whose Postal code starts with the number 7 and who reside in the cities of Belfast or New York.
-- Sort the result set in ascending order of CustomerID.

SELECT
 *
FROM
 Customers
WHERE
 PostalCode LIKE '7%' AND City IN ('Belfast','New York')
ORDER BY
 CustomerID ASC;



-- 3. 9 To 8

-- Print CustomerID, First Name, Last Name, City, Email and Phone number of Customers whose Phone number starts with the digit 9 and ends with the digit 8.
-- Sort the output on ascending order of CustomerID.

SELECT
 CustomerID, FirstName, LastName, City, Email, Phone
FROM
 Customers
WHERE
 Phone LIKE '9%' AND Phone LIKE '%8'
ORDER BY
 CustomerID ASC;
 
