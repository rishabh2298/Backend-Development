
-- Link : https://cp.masaischool.com/assignments/1323/view

-- 1. Monthly Revenue

-- Identify the Revenue Generated in each month of the year 2020.
-- Print Month followed by Revenue Generated.
-- Sort the result set in ascending order of Month.

SELECT
   MONTH(OrderDate) AS month_num, SUM(Total_Order_Amount) AS total_sum
FROM
   Orders
WHERE
   YEAR(OrderDate) = 2020
GROUP BY
   month_num
ORDER BY
   month_num ASC;



-- 2. Monthly Chart

-- Identify the Number of Orders, Total Revenue, Least Order Amount, Greatest order amount, Average order amount for each month of each year.
-- Use the Total Order Amount of orders for all your calculations.
-- Print Year, Month, Number of Orders, Total Revenue, Least Order Amount, Greatest order amount, Average order amount.
-- Sort the result set in ascending order of Year.
-- For records with same year - sort them in ascending order of Month.

SELECT
   YEAR(OrderDate) AS years, MONTH(OrderDate) AS months, COUNT(*) AS num_of_order, 
   SUM(Total_Order_Amount) AS total_revenue, MIN(Total_Order_Amount) AS min_order, 
   MAX(Total_Order_Amount) AS max_order, AVG(Total_Order_Amount) AS avg_order_amt
FROM
   Orders
GROUP BY
   years, months
ORDER BY
   years ASC, months ASC;



-- 3. Highest Acquisition

-- Identify the Month-Year combination which had the Highest Customer Acquisition.
-- Print Month, Year, Number of Customers whose details were entered into the database.
-- NOTE : Ouput has only one line

SELECT
   MONTH(DateEntered) AS month_num, YEAR(DateEntered) AS year_num, COUNT(*) AS count_of_customers
FROM
   Customers
GROUP BY
   year_num, month_num
ORDER BY
   count_of_customers DESC
LIMIT 1 OFFSET 0;
