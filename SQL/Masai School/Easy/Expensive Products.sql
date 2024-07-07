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

