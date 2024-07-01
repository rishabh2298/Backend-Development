/*
1. Sub_Types

Print Product Details along with the corresponding sub category and type as a single entity.
Let the Sub Category and Type be separated by a space, a hyphen, followed by another space.
Print ProductID, Product Name, Brand Name followed by the newly created entity.
Sort the result set in ascending order of ProductID.

Your Output:

|    |   productId | Product                                                                               | Brand           | CONCAT(Sub_Category,' - ',Type)                      |
|---:|------------:|:--------------------------------------------------------------------------------------|:----------------|:-----------------------------------------------------|
|  0 |           1 | Original Disinfectant Toilet Cleaner Liquid                                           | Harpic          | All Purpose Cleaners - Toilet Cleaners               |
|  1 |           2 | Surface Disinfectant Spray                                                            | Savlon          | All Purpose Cleaners - Disinfectant Spray & Cleaners |
|  2 |           3 | Harpic Disinfectant Toilet Cleaner Original200ml+Lizol Floor Cleaner Citrus200ml      | bb Combo        | All Purpose Cleaners - Toilet Cleaners               |
|  3 |           4 | Harpic Toilet Cleaner Liquid - Original 1 L + Lizol Floor Cleaner, Citrus - 2L        | bb Combo        | All Purpose Cleaners - Toilet Cleaners               |
|  4 |           5 | Disinfectant Bathroom Cleaner Liquid - Lemon                                          | Harpic          | All Purpose Cleaners - Toilet Cleaners               |
|  5 |           6 | Super Saver Pack Toilet Cleaner Original, 500ml + Bathroom Cleaner Lemon, 500ml       | Harpic          | All Purpose Cleaners - Toilet Cleaners               |
|  6 |           7 | Original 1 ltr + Bathroom Cleaner Lemon 500 ml                                        | Harpic          | All Purpose Cleaners - Toilet Cleaners               |
|  7 |           8 | Disinfectant Toilet Cleaner Liquid - 1 L + Bathroom Cleaner Liquid - 500 ml           | Harpic          | All Purpose Cleaners - Toilet Cleaners               |
|  8 |           9 | Harpic Bathroom Cleaner - Lemon 1 L + Harpic Toilet Cleaner, Original - 1 L           | Harpic          | All Purpose Cleaners - Toilet Cleaners               |
|  9 |          10 | Lizol Floor Cleaner, Floral - 2L + Harpic Toilet Cleaner Liquid - Original 1L         | bb Combo        | All Purpose Cleaners - Floor & Other Cleaners        |

*/

SELECT
   productId, Product, Brand, CONCAT(Sub_Category,' - ',Type)
FROM
   Products
ORDER BY
   productId ASC;



/*
2. Surnames From Z

Print the unique Last names of customers whose details are stored in the database.
Sort the result set in reverse alphabetical order of the Last names.

*/   

SELECT
   DISTINCT LastName
FROM
   Customers
ORDER BY
   LastName DESC;   