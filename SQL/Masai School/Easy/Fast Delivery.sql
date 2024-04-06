
-- Link : https://cp.masaischool.com/assignments/1323/view

-- 1. Fast Delivery

-- Print details of orders which were delivered within 7 days (equal or less).
-- Sort the result in ascending order of Order ID.

SELECT
   *
FROM
   Orders
WHERE
   DATEDIFF(DeliveryDate, OrderDate) <= 7
ORDER BY
   OrderID ASC;



-- 2. 5 Products

-- Identify the Number of Orders placed by each Customer, where the Customer has ordered exactly 5 Unique Products in each order 
-- (irrespective of the individual product quantity).
-- Print Customer ID, First Name, Last Name, Count of Such orders placed by the Customers.
-- Sort the result set in ascending order of Customer ID.

SELECT
   c.CustomerID, c.FirstName, c.LastName, COUNT(o.OrderID)
FROM
   Customers AS c INNER JOIN Orders AS o
   ON c.CustomerID = o.CustomerID
   INNER JOIN (
      SELECT
          OrderID, COUNT(DISTINCT ProductID) AS product_count
      FROM
          OrderDetails
      GROUP BY
          OrderID
      HAVING
          product_count = 5 
   ) AS od
   ON o.OrderID = od.OrderID
GROUP BY
   c.CustomerID, c.FirstName, c.LastName
ORDER BY
   c.CustomerID ASC;
