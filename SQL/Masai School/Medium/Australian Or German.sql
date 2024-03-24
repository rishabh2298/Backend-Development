
-- Link : https://cp.masaischool.com/assignments/1382/view

-- Good Question
-- 1. Australian Or German?

-- Fetch the CustomerID, First Name and City of Customers from melbourne. Fetch the CustomerID, Last Name and State of Customers 
-- from Germany. Append the results of both these queries to print a single result in the output. Sort the result set in ascending 
-- order of CustomerID.

(SELECT
 CustomerID, FirstName, City
FROM
 Customers
WHERE
 City LIKE 'melbourne')

UNION ALL

(SELECT
 CustomerID, LastName, State
FROM
 Customers
WHERE
 Country LIKE 'Germany')

ORDER BY
 CustomerID ASC;



--  2. Same Birthdays

-- Count the number of customers born on each Date of birth that is listed in the database.
-- Sort the result in descending order of Date of birth.

SELECT
 Date_of_Birth AS dob_, COUNT(*) AS count_
FROM
 Customers
GROUP BY
 dob_
ORDER BY
 dob_ DESC;



-- 3. First 3 Payments

-- Get the count of orders and total revenue collected through Payments with IDs 1,2 and 3.
-- Print Payment ID, Payment Type, Total Number of Orders, and Total revenue collected.
-- Use the Total order amount column for calculating the revenue.
-- Sort the result in ascending order of Payment ID.

SELECT
 o.PaymentID AS id_ , p.PaymentType AS type_ , COUNT(*) AS count_ , SUM(o.Total_order_amount) AS revenue_
FROM
 Orders AS o INNER JOIN Payments AS p
 ON o.PaymentID = p.PaymentID
WHERE
 o.PaymentID IN (1,2,3)
GROUP BY
 id_ , type_
ORDER BY
 id_ ASC;
