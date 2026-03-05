----Comparison Operators
----= Equal to
----> Greater than
---->= Greater than or equal to
----< Lesser than
----<= Lesser than or equal to
----<> Not equal to
--They always return true or false

SELECT * 
FROM DimProduct
WHERE ListPrice = 3399.99

SELECT * 
FROM DimProduct
WHERE ListPrice > 3399.99

SELECT * 
FROM DimProduct
WHERE ListPrice >= 3399.99

SELECT * 
FROM DimProduct
WHERE ListPrice < 3399.99

SELECT * 
FROM DimProduct
WHERE ListPrice <= 3399.99

SELECT * 
FROM DimProduct
WHERE ListPrice <> 3399.99

SELECT * 
FROM DimProduct
WHERE Color='Red'

SELECT * 
FROM DimProduct
WHERE Color='Red' OR Color='Silver'

SELECT * 
FROM DimProduct
WHERE Color IN('Red','Silver','Yellow')

SELECT * 
FROM DimProduct
WHERE Color='Red' AND ListPrice>1000

SELECT * 
FROM DimProduct
WHERE ListPrice<=2000 AND ListPrice>=1000

SELECT * 
FROM DimProduct
WHERE ListPrice BETWEEN 1000 AND 2000