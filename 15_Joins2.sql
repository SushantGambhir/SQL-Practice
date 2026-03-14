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