-- Link : https://cp.masaischool.com/assignments/1312/view

-- 1. BOB And Enter

-- Print the CustomerID, FirstName, City, State, and Sum of the total order amount for the customers whose month of their 
-- Date of Birth is the same as the month of DateEntered. Order the result in ascending order or CustomerID.

SELECT
   c.CustomerID, c.FirstName, c.City, c.State, SUM(o.Total_order_amount)
FROM
   Customers AS c INNER JOIN Orders AS o ON c.CustomerID = o.CustomerID
WHERE
   MONTH(c.Date_of_birth) = MONTH(c.DateEntered)
GROUP BY
   c.CustomerID, c.FirstName, c.City, c.State
ORDER BY
   c.CustomerId ASC;
