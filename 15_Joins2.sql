SELECT * FROM DimProduct

SELECT * FROM FactInternetSales

-- Inner Join
SELECT P.ProductKey, P.EnglishProductName, F.SalesAmount
FROM DimProduct P
JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey

-- Left Join with DimProduct on Left
SELECT P.ProductKey, P.EnglishProductName, F.SalesAmount
FROM DimProduct P
LEFT JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey

-- Left Anti Join with DimProduct on Left
-- A left anti-join returns only the rows from the left table that have no matching rows in the right table
SELECT P.ProductKey, P.EnglishProductName
FROM DimProduct P
LEFT JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey
WHERE F.ProductKey IS NULL