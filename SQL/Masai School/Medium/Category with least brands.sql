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



/*

3.Find out the days for which customers remained inactive until their first order.

The output should contain CustomerID, FirstName, LastName, and days until the first order. Sort the output by days until the 
first order in descending order, and by CustomerID in ascending order.

Fill the null values in all the output columns with 0.


|    |   COALESCE(c.CustomerId, 0) | COALESCE(c.FirstName, '0')   | COALESCE(c.LastName, '0')   |   time_ |
|---:|----------------------------:|:-----------------------------|:----------------------------|--------:|
|  0 |                       57183 | Jennifer                     | Lawrence                    |     271 |
|  1 |                       57102 | Kevin                        | Hart                        |     254 |
|  2 |                       57140 | Kyle                         | Jamieson                    |     241 |
|  3 |                       57189 | Sarah                        | Hunt                        |     223 |
|  4 |                       57130 | Jerry                        | James                       |     194 |
|  5 |                       57188 | Jessica                      | James                       |     186 |
|  6 |                       57128 | Jack                         | Daniels                     |     184 |

*/

SELECT
   COALESCE(c.CustomerId, 0), 
   COALESCE(c.FirstName, '0'), 
   COALESCE(c.LastName, '0'),
   COALESCE(DATEDIFF(MIN(o.OrderDate), c.DateEntered), 0) AS time_
FROM
   Customers AS c LEFT JOIN Orders AS o ON c.CustomerId = o.CustomerId
GROUP BY
   c.CustomerId, c.FirstName, c.LastName
ORDER BY
   time_ DESC, c.CustomerID ASC;
