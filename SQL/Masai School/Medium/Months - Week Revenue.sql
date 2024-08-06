Link :

/*

1. Months - Week Revenue

Create a program that will generate a 4x2 matrix with the first column representing the week number of the month, and the 
second column representing the total revenue generated from orders placed within that week.

The week number is determined by the order date, with the first week being from the 1st to the 7th day of the month (both 
included), the second week from the 8th to the 15th day of the month (both included), the third week from the 16th to the 23rd 
day of the month(both included), and the fourth week consisting of the remaining days of the month. The matrix should be sorted 
in descending order based on the revenue generated from each week.

|    |   monthweek |   total_rev |
|---:|------------:|------------:|
|  0 |           3 | 2.50109e+07 |
|  1 |           2 | 2.43214e+07 |
|  2 |           4 | 2.29112e+07 |
|  3 |           1 | 1.96757e+07 |

*/

SELECT
   CASE
     WHEN DAY(orderDate) BETWEEN 1 AND 7 THEN 1
     WHEN DAY(orderDate) BETWEEN 8 AND 15 THEN 2
     WHEN DAY(orderDate) BETWEEN 16 AND 23 THEN 3
     ELSE 4
   END AS monthweek,
   SUM(total_order_amount) AS total_rev
FROM
   Orders
GROUP BY
   CASE
     WHEN DAY(orderDate) BETWEEN 1 AND 7 THEN 1
     WHEN DAY(orderDate) BETWEEN 8 AND 15 THEN 2
     WHEN DAY(orderDate) BETWEEN 16 AND 23 THEN 3
     ELSE 4
     END
ORDER BY
   total_rev DESC;



/*
2. Print the average sale price and the average market price of products produced by the Brand Fresho.
*/

SELECT
    AVG(Sale_Price) AS Average_Sale_Price,
    AVG(Market_Price) AS Average_Market_Price
FROM
    Products
WHERE
    Brand = 'Fresho';
