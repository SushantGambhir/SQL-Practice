SELECT * FROM SalesTran, Products
-- The above query will do cartisian product of both the tables
-- i.e. mapping each row in first table to each row in second TABLE
-- total number of rows = product of number of rows in each table
-- This is called Cross Join

SELECT * FROM SalesTran
JOIN Products
ON
SalesTran.ProductID = Products.ProductID
-- Now its subset of cross product where the given condition is satisfied
-- We only get matching rows in this
-- Such type of join is called inner join
-- Both the columns name might not be the same but data type must be same

-- We can also interchange tables in case of INNER JOIN
-- We shall still get the same output
--Just the order of columns will change
SELECT * FROM Products
JOIN SalesTran
ON
SalesTran.ProductID = Products.ProductID

-- The below statement works exactly same as the above one
SELECT * FROM SalesTran
INNER JOIN Products
ON
SalesTran.ProductID = Products.ProductID


-- Now if we want only outputs from one of the tables then we write like this below
SELECT Products.* FROM SalesTran
JOIN Products
ON
SalesTran.ProductID = Products.ProductID

-- We can also give different names to the tables
SELECT * FROM SalesTran AS S
JOIN Products AS P
ON
S.ProductID = P.ProductID

SELECT * FROM Products
LEFT JOIN SalesTran
ON SalesTran.ProductID = Products.ProductID
-- The above was an example of LEFT JOIN
-- Matching rows from both tables will be there
-- Additionally remaining rows from the Left table will also be there
-- Just that the columns of the other table will have NULL in those columns

-- The opposite of LEFT JOIN we have RIGHT JOIN
SELECT * FROM SalesTran
RIGHT JOIN Products
ON Products.ProductID = SalesTran.ProductID