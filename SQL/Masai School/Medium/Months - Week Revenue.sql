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



/*
3. Write a query to identify the customer from each country who placed most expensive products.

   Print productid,category_ID,firstname,lastname,Total_order_amount,country,ranks.

   Sort the result in ascending order of productid.

|    |   ProductId |   Category_Id | FirstName   | LastName   |   Total_Order_Amount | Country          |   Rank_ |
|---:|------------:|--------------:|:------------|:-----------|---------------------:|:-----------------|--------:|
|  0 |         115 |          5001 | Joe         | Rogen      |                97086 | Romania          |       1 |
|  1 |         236 |          5001 | Jonathan    | Moore      |               138997 | Belgium          |       1 |
|  2 |         324 |          5001 | Amy         | Kirsten    |               156724 | Russia           |       1 |
|  3 |         368 |          5001 | Duncan      | Elliot     |               128214 | Germany          |       1 |
|  4 |         391 |          5002 | Jacqueline  | Fernandez  |               152253 | United States    |       1 |
*/


With RankedOrders AS (

SELECT
   p.ProductId, p.Category_ID,
   c.FirstName, c.LastName,
   o.Total_order_amount, c.Country,
   RANK() OVER (PARTITION BY c.Country ORDER BY o.Total_Order_amount DESC) AS Rank_
FROM
   Customers AS c INNER JOIN Orders AS o ON c.CustomerId = o.CustomerId
   INNER JOIN OrderDetails AS od ON o.OrderId = od.OrderId
   INNER JOIN Products AS p ON od.ProductId = p.ProductId

)


SELECT
   ProductId, Category_Id, FirstName, LastName, Total_Order_Amount, Country, Rank_
FROM
   RankedOrders
WHERE
   Rank_ = 1
ORDER BY
   productId;
