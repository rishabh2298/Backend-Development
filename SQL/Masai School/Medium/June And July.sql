
-- 1. June And July

-- Print the month number followed by the count of customers born in that particular month.
-- Only for the months of June and July.
-- Use the MONTH( ) Function on the relevant column to extract the month number. Example : MONTH( Relevant_Column )
-- Sort the result in descending order of Count.

SELECT
 MONTH(Date_of_Birth) AS month_ , COUNT(*) AS count_
FROM
 Customers
WHERE
 MONTH(Date_of_Birth) IN (6,7)
GROUP BY
 month_
ORDER BY
 count_ DESC;



-- 2. No Beverages Allowed

-- Print Product ID, Product Name, Sub Category Name, Sale Price and Market Price of all products which do not fall under the Beverages Categoryname.
-- Sort the result in ascending order of Product ID.

SELECT
 p.ProductID, p.Product, p.Sub_Category, p.Sale_Price, p.Market_Price
FROM
 Products AS p INNER JOIN Category AS c ON p.Category_ID = c.CategoryID
WHERE
 c.CategoryName NOT LIKE 'Beverages'
ORDER BY
 p.ProductID ASC;



--  3. Percentage Change Dashboard

-- Print the following table which depicts the number of orders placed in each month of the year 2021 along with the percentage increase in the number 
-- compared to the previous month.
-- Sort the result in calendar order of Months.

