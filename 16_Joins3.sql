SELECT C.FirstName, P.EnglishProductName, 
SUM(F.SalesAmount) AS TotalSales
FROM DimProduct P
JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey
JOIN DimCustomer C
ON F.CustomerKey = C.CustomerKey
GROUP BY C.FirstName, P.EnglishProductName