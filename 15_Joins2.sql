SELECT * FROM DimProduct

SELECT * FROM FactInternetSales

-- Inner Join
SELECT P.ProductKey, P.EnglishProductName, F.SalesAmount
FROM DimProduct P
JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey

-- Left Join
SELECT P.ProductKey, P.EnglishProductName, F.SalesAmount
FROM DimProduct P
JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey