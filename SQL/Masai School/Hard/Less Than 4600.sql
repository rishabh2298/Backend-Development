
-- HARD

-- Link : https://cp.masaischool.com/assignments/1382/view


-- 1. Less Than 4600

-- Identify the number of times a supplier provided products across the different orders whose details are stored in the OrderDetails table.
-- Filter to only print where the number is less than 4600.
-- Print Supplier ID, Supplier Name and the count.
-- Sort the result in ascending order of Supplier ID

SELECT
   s.SupplierID, s.CompanyName, COUNT(o.OrderID) AS total_count
FROM
   OrderDetails AS o INNER JOIN Suppliers AS s
   ON o.SupplierID = s.SupplierID
GROUP BY
   s.SupplierID, s.CompanyName
HAVING
   total_count < 4600
ORDER BY
   s.SupplierID ASC;



-- 2. Baby - Not By JB

-- Identify the products whose names consist of the word 'Baby'.
-- Then count the number of such products for each Category and Sub Category.
-- Print Category ID, Category Name, Sub Category and followed by the Count.
-- Sort the result in ascending order of Category ID. Secondary sort on the basis of alphabetical order of Sub Category.

SELECT
   c.CategoryID, c.CategoryName, p.Sub_Category, COUNT(*)
FROM
   Products AS p INNER JOIN Category AS c
   ON p.Category_ID = c.CategoryID
WHERE
   p.Product LIKE '%Baby%'
GROUP BY
   p.Sub_Category
ORDER BY
   c.CategoryID ASC, p.Sub_Category ASC; 

