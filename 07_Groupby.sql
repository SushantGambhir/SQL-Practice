--Total sales for each product key
SELECT ProductKey, SUM(SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey

--Total sales for each combination of product key and customer key
SELECT ProductKey, CustomerKey, SUM(SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey, CustomerKey

--Total sales and tax for each product key
SELECT ProductKey, 
SUM(SalesAmount) AS TotalSales,
SUM(TaxAmt) AS TotalTax
FROM FactInternetSales
GROUP BY ProductKey