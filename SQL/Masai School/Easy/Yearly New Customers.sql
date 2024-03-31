
-- Link : https://cp.masaischool.com/assignments/1323/view

-- 1. Yearly New Customers

-- Identify the Number of customers whose details were entered into the database each Year.
-- Print Year, Count of customers.
-- Sort the result set in ascending order of Year.

SELECT
   YEAR(DateEntered) AS year_, COUNT(*) AS Customer_count
FROM
   Customers
GROUP BY
   year_
ORDER BY
   year_ ASC;



-- 2. Monthly New Customers

-- Identify the Number of customers whose details were entered into the database each month of each year.
-- Print Year, Month, Count of Customers.
-- Sort the result set in ascending order of Year.
-- For records with same Year - sort them in ascending order of Month.

SELECT
   YEAR(DateEntered) AS y, MONTH(DateEntered) AS m, COUNT(*) AS c
FROM
   Customers
GROUP BY
   y,m
ORDER BY
   y ASC, m ASC;



-- 3. Monthly Orders

-- Identify the number of orders placed in each month of the year 2021.
-- Print Month followed by Number of Orders.
-- Sort the result set in ascending order of Month.

SELECT
   MONTH(OrderDate) AS m, COUNT(*) AS c
FROM
   Orders
WHERE
   YEAR(OrderDate) = 2021
GROUP BY
   m
ORDER BY
   m ASC;
