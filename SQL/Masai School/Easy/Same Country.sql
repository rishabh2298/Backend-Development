
-- Link : https://cp.masaischool.com/assignments/1382/view


-- 1. Same Country

-- Print pairs of supplier companies that established in the same country.
-- Print name of first company, name of second company, country name.
-- For example is company ABC and Company DEF are from India, the output will look like ABC, DEF, India.
-- Sort the result set in alphabetical order of company names in the first column.
-- (wrong question in CP platform)

SELECT 
    s1.CompanyName AS First_Company, 
    s2.CompanyName AS Second_Company, 
    s1.Country
FROM 
    Suppliers s1 JOIN Suppliers s2 
    ON s1.Country = s2.Country 
WHERE
    s1.CompanyName != s2.CompanyName
ORDER BY 
    First_Company ASC;



-- 2. Months with Highest Customer Acquisition

-- Write a query to find the top 3 months with the highest customer acquisition.
-- Print the months in string format like January, February,etc along with the count of customers entered in that month.

SELECT
 MONTHNAME(DateEntered) AS month, COUNT(*) AS cnt
FROM
 Customers
GROUP BY
 month
ORDER BY
 cnt DESC
LIMIT 3 OFFSET 0;

