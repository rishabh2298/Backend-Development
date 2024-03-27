-- Link : https://cp.masaischool.com/assignments/1382/view

-- 1. N Destinations

-- Identify and print unique cities along with their state and country names that they belong to for all cities which are located in 
-- countries whose names start with the letter N.
-- Sort the result in alphabetical order of City Names

SELECT
 DISTINCT City, State, Country
FROM
 Customers
WHERE
 Country LIKE 'N%'
ORDER BY
 City ASC;



-- 2. Card Details

-- Print Order ID, Customer ID, Payment Type, and Total Order Amount for all orders paid through a card payment type.
-- Sort the result in ascending order of Order ID

SELECT
 orders.OrderID, orders.CustomerID, payments.PaymentType, orders.Total_order_amount
FROM
 Orders AS orders INNER JOIN Payments AS payments
 ON orders.PaymentID = payments.PaymentID
WHERE
 payments.PaymentType LIKE '%card%'
ORDER BY
 orders.OrderID ASC;


