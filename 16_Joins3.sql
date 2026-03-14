SELECT C.FirstName, P.EnglishProductName, F.SalesAmount
FROM DimProduct P
JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey
JOIN DimCustomer C
ON F.CustomerKey = C.CustomerKey