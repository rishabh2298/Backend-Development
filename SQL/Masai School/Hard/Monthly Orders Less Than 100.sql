
-- Link : https://cp.masaischool.com/assignments/1323/view

-- 1. Monthly Orders Less Than 100

-- Print the Month number and number of orders ordered in that particular month for each of the months of the year 2020.
-- Consider the dates from OrderDate for this calculation.
-- Print for only those months where the number of orders placed is less than 100.
-- Sort the result set in ascending order of Month number.
-- Use MONTH( Relevant_Column ) and YEAR( Relevant_Column ) to extract the month and year from the given date column for 
-- generating the result set.

SELECT
   MONTH(OrderDate) AS M, COUNT(OrderID) AS number_of_orders
FROM
   Orders
WHERE
   YEAR(OrderDate) = 2020
GROUP BY
   M
HAVING
   number_of_orders < 100
ORDER BY
   M ASC;




