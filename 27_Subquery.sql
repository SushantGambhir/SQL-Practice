--We want information of all the elements where Sales Amount is maximum.
--For that we shall use sub query

SELECT * FROM FactInternetSales
WHERE SalesAmount = 
(SELECT MAX(SalesAmount) FROM FactInternetSales)

-- Similarly we can do it for Minimum value
SELECT * FROM FactInternetSales
WHERE SalesAmount = 
(SELECT MIN(SalesAmount) FROM FactInternetSales)

-- Entries with Sales Amount above average
SELECT * FROM FactInternetSales
WHERE SalesAmount >
(SELECT AVG(SalesAmount) FROM FactInternetSales)
ORDER BY SalesAmount

-- We want FactInternetSales information for products of color Red

-- Way 1: Join
SELECT F.* FROM FactInternetSales F
JOIN DimProduct P
ON F.ProductKey = P.ProductKey
WHERE P.Color='Red'

-- Way 2: Subquery
SELECT * FROM FactInternetSales
WHERE ProductKey IN
(SELECT ProductKey FROM DimProduct WHERE Color='Red')