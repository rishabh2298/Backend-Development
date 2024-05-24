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
