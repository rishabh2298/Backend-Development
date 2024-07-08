-- Link : https://cp.masaischool.com/assignments/1312/view

/*
Identify products which are selling for more than 3000 bucks.
Print the Product ID of such proucts along with their names.
Let the product name have the expression 'Expensive_' appended infront of it.
Sort the result set in ascending order of ProductID.
*/

SELECT
   productId, CONCAT('Expensive_', product)
FROM
   Products
WHERE
   sale_price > 3000
ORDER BY
   productID ASC;



/*

Calculate the average discount percentage on products of each brand belonging to the bakeware sub category.
Print Brand name and their average percentage discount in nearest integer value.(e.g. - 77.80 will be 78 and 77.10 will be 77)
DISCOUNT = ((MARKET_PRICE - SALE_PRICE)/MARKET_PRICE) X 100
Sort the result in desceding order of Average discount value.

*/

SELECT
   brand, ROUND(AVG(((Market_price - Sale_price)/market_price)*100)) AS avg_discount
FROM
   Products
WHERE
  Sub_Category = 'bakeware'
GROUP BY
  brand
ORDER BY
   avg_discount DESC;

