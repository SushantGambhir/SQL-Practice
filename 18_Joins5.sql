-- Now we shall discuss about OUTER JOINS
-- LEFT JOIN can also be called as LEFT OUTER JOIN. Same goes for RIGHT JOIN
-- Now we shall see FULL OUTER JOIN
-- It is combination of both LEFT and RIGHT JOIN. Will include matching rows along with 
-- the rows which have no corrosponding matching value for specified attribute

INSERT INTO SalesTran
VALUES
(6,'SOB988',6,980)

SELECT * FROM SalesTran

SELECT * FROM Products

SELECT * FROM SalesTran S
FULL OUTER JOIN Products P
ON P.ProductID = S.ProductID