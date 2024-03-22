
-- 1. .COM Emails

-- Print the count of Suppliers whose contact email address ends with '.com' .

SELECT
 COUNT(*)
FROM
 Suppliers
WHERE
 Email LIKE '%.com';



--  2. Phone Number Counts

-- Identify the number of phone numbers in the database that start with the digits 6,7,8 and 9.
-- Print the start digit (6,7,8,9) in the first column, followed by the count in the second column.
-- Sort the result in ascending order count.

-- Apporach - 1

SELECT
 SUBSTRING(Phone, 1, 1) AS phone_, Count(*) AS count_
FROM
 Customers
GROUP BY
 phone_
ORDER BY
 count_ ASC;


-- Approach - 2

SELECT
 CASE
  WHEN Phone LIKE '6%' THEN '6'
  WHEN Phone LIKE '7%' THEN '7'
  WHEN Phone LIKE '8%' THEN '8'
  WHEN Phone LIKE '9%' THEN '9'
 END AS phone_ ,
 COUNT(*) AS count_
FROM
 Customers
GROUP BY
 phone_
ORDER BY
 count_;



-- 3. R In The Name

-- Print all details of customers whose First names are 4 letter words which start with the letter 'R'.
-- Sort the result set in ascending order of Customer ID.

SELECT
 *
FROM
 Customers
WHERE
 FirstName LIKE 'R%' AND CHAR_LENGTH(FirstName) = 4
ORDER BY
 CustomerID ASC;
 