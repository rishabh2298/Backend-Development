-- Link : https://cp.masaischool.com/assignments/1323/view

-- 1. Monthly Counts

-- Write a query to show the total order amount as revenue, Number of order placed and number of unique customers per month placing the orders in the year 2021.

-- Print the months (in string format, for example: January, February,March,etc) followed by the revenue generated each month, count of orders placed, count of unique customers who placed orders.

-- Sort the result in ascending order of Customer Count.

SELECT
   DATE_FORMAT(OrderDate, "%M") AS mnth, SUM(Total_order_amount) AS order_amount_per_month, COUNT(*) AS orders_placed, COUNT(DISTINCT CustomerID) AS customer_count
FROM
   Orders
WHERE
   YEAR(OrderDate) = 2021
GROUP BY
   MONTH(OrderDate)
ORDER BY
   customer_count ASC;



-- 2. 3 Day Rolling Sum Preceding

-- Write a query to find the 3 day rolling sum of the Total order amount of all the orders for each shipper sorted in ascending order of Order ID.

-- Print Order ID,Shipper ID, Total order amount and 3 day rolling sum. (Find the 3 day rolling sum by taking 2 previous rows and the current row.)

-- Sort the result in ascending order of Shipper ID, for records with same shipper ID, sort them in ascending order of Order ID.

SELECT
   OrderID, ShipperID, Total_order_amount,
   SUM(Total_order_amount) OVER (PARTITION BY ShipperId ORDER BY OrderID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS Rolling_Sum
FROM
   Orders
ORDER BY
   ShipperId ASC, OrderId ASC;
   