--We intend to query all those Product Keys and Total Sales where Total Sales are above 100000 
SELECT ProductKey, SUM(SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey
HAVING SUM(SalesAmount)>=100000