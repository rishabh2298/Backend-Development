
-- Link : https://cp.masaischool.com/assignments/1323/view

-- 1. Fast Delivery

-- Print details of orders which were delivered within 7 days (equal or less).
-- Sort the result in ascending order of Order ID.

SELECT
   *
FROM
   Orders
WHERE
   DATEDIFF(DeliveryDate, OrderDate) <= 7
ORDER BY
   OrderID ASC;



-- 2. 5 Products


