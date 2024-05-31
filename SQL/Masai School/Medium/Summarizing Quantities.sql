-- Link : https://cp.masaischool.com/assignments/1323/view

-- 1. Summarizing Quantities

-- Print the following Pivot Table
-- The values in the matrix represent the total quantity shipped by the shippers through the different years and quarters. (Consider ShipDate)
-- Sort the result in ascending order of Year, for records with the same year sort them in ascending order of Quarter.


Your Output:

|    |   year_ |   quarter_ |   Shipper_1 |   Shipper_2 |   Shipper_3 |   Shipper_4 |   Shipper_5 |   Shipper_6 |   Shipper_7 |   Shipper_8 |
|---:|--------:|-----------:|------------:|------------:|------------:|------------:|------------:|------------:|------------:|------------:|
|  0 |    2020 |          1 |         229 |         197 |         220 |          34 |         180 |         123 |         392 |         373 |
|  1 |    2020 |          2 |         771 |         935 |        1173 |         505 |         740 |        1366 |         923 |        1007 |
|  2 |    2020 |          3 |        2201 |        1519 |        1723 |        1809 |        1330 |        1454 |        1604 |        1466 |
|  3 |    2020 |          4 |        2741 |        2379 |        2256 |        2635 |        2339 |        2381 |        1878 |        2647 |
|  4 |    2021 |          1 |        4434 |        3264 |        2696 |        2955 |        3686 |        3289 |        2653 |        4396 |
|  5 |    2021 |          2 |        5422 |        6294 |        6017 |        6182 |        6331 |        6354 |        5101 |        4954 |
|  6 |    2021 |          3 |        7838 |        7355 |        8495 |        7817 |        8475 |        7172 |        8375 |        9441 |
|  7 |    2021 |          4 |       12594 |       12705 |       13922 |       11782 |       11781 |       12741 |       12865 |       14452 |
|  8 |    2022 |          1 |         457 |         469 |        1013 |         294 |         621 |         317 |         921 |         813 |



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



-- 2. Summarizing Country Orders

-- Print the following Pivot Table
-- The values in the matrix represent the total number of orders ordered from the different countries in the database through the different years and quarters. (Consider OrderDate)
-- Sort the result in ascending order of Year, for records with the same year, sort them in ascending order of Quarter.

-- Your Output:

-- |    |   year_ |   quarter_ |   India |   United States |   Australia |   Switzerland |
-- |---:|--------:|-----------:|--------:|----------------:|------------:|--------------:|
-- |  0 |    2020 |          1 |     nan |               7 |           2 |             1 |
-- |  1 |    2020 |          2 |       2 |              42 |           9 |            13 |
-- |  2 |    2020 |          3 |      16 |              85 |           5 |            16 |
-- |  3 |    2020 |          4 |      37 |              89 |           8 |            16 |
-- |  4 |    2021 |          1 |      42 |              99 |          15 |            28 |
-- |  5 |    2021 |          2 |      74 |             111 |          45 |            55 |
-- |  6 |    2021 |          3 |     101 |             110 |         127 |            69 |
-- |  7 |    2021 |          4 |     153 |              91 |          86 |            96 |


WITH HelpTable AS(
   SELECT
      YEAR(o.OrderDate) AS year_, QUARTER(o.OrderDate) AS quarter_, c.Country AS country_name, COUNT(*) as total_order_count
   FROM
      Customers AS c INNER JOIN Orders AS o ON c.CustomerId = o.CustomerId
   GROUP BY
      year_, quarter_, country_name
)


SELECT
   year_, quarter_,
   SUM(CASE WHEN country_name = 'India' THEN total_order_count END) AS 'India',
   SUM(CASE WHEN country_name = 'United States' THEN total_order_count END) AS 'United States',
   SUM(CASE WHEN country_name = 'Australia' THEN total_order_count END) AS 'Australia',
   SUM(CASE WHEN country_name = 'Switzerland' THEN total_order_count END) AS 'Switzerland'
FROM
   HelpTable
GROUP BY
   year_, quarter_
ORDER BY
   year_, quarter_;
