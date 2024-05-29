-- Link : https://cp.masaischool.com/assignments/1323/view

-- 1. Summarizing Quantities

-- Print the following Pivot Table

-- The values in the matrix represent the total quantity shipped by the shippers through the different years and quarters. (Consider ShipDate)

-- Sort the result in ascending order of Year, for records with the same year sort them in ascending order of Quarter.

WITH HelpTable AS (
   SELECT
      YEAR(o.ShipDate) AS year_, QUARTER(o.ShipDate) AS quarter_, o.ShipperId, SUM(od.Quantity) AS total_quantity
   FROM
      Orders AS o INNER JOIN OrderDetails AS od ON o.OrderId = od.OrderId
   GROUP BY
      YEAR(ShipDate), QUARTER(ShipDate), o.ShipperId
)


SELECT
   year_, quarter_,
   SUM(CASE WHEN shipperId = 1 THEN total_quantity END) AS Shipper_1,
   SUM(CASE WHEN shipperId = 2 THEN total_quantity END) AS Shipper_2,
   SUM(CASE WHEN shipperId = 3 THEN total_quantity END) AS Shipper_3,
   SUM(CASE WHEN shipperId = 4 THEN total_quantity END) AS Shipper_4,
   SUM(CASE WHEN shipperId = 5 THEN total_quantity END) AS Shipper_5,
   SUM(CASE WHEN shipperId = 6 THEN total_quantity END) AS Shipper_6,
   SUM(CASE WHEN shipperId = 7 THEN total_quantity END) AS Shipper_7,
   SUM(CASE WHEN shipperId = 8 THEN total_quantity END) AS Shipper_8
FROM
   HelpTable
GROUP BY
   year_, quarter_
ORDER BY
   year_ ASC, quarter_ ASC;

