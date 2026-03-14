-- Now we want to join three tables
-- DimProduct P, FactInternetSales F, DimCustomer C
-- F and P have common attribute, F and C have a common attribute. P and C dont have a common attribute

-- We can firstly join F and P. Then join resulting table with C
SELECT C.FirstName, P.EnglishProductName, 
SUM(F.SalesAmount) AS TotalSales
FROM DimProduct P
JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey
JOIN DimCustomer C
ON F.CustomerKey = C.CustomerKey
GROUP BY C.FirstName, P.EnglishProductName