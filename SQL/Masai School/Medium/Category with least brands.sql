-- Link : https://cp.masaischool.com/assignments/1312/view

/*

Find out that one category which has the least number brands under it, display all the products in that category.
Output should contain list of products sorted in alphabetical order.
Note: Least brand means lowest number of brand.

*/

WITH CategoryBrandCount AS (
    SELECT
        Category_ID,
        COUNT(DISTINCT Brand) AS BrandCount
    FROM
        Products
    GROUP BY
        Category_ID
),
LeastBrandCategory AS (
    SELECT
        Category_ID
    FROM
        CategoryBrandCount
    ORDER BY
        BrandCount ASC
    LIMIT 1
)


SELECT
    p.Product
FROM
    Products p
JOIN
    LeastBrandCategory lbc ON p.Category_ID = lbc.Category_ID
ORDER BY
    p.Product ASC;



/*
2. Brussels, Hamburg, Australia

Print Customer ID, First Name, Last Name, City, State and Country details of customers who either belong to the city of Brussels 
or the state of Hamburg or the Country Australia.
Sort the result set in ascending order of Customer ID.
*/


SELECT
   CustomerId, FirstName, LastName, City, State, Country
FROM
   Customers
WHERE
   city = 'Brussels' OR state = 'Hamburg' OR country = 'Australia'
ORDER BY
   customerId ASC;
