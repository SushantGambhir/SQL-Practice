SELECT * INTO DimEmployee2 FROM DimEmployee
SELECT * FROM DimEmployee2

-- Increment base rate of all employees of Canada by 10%

-- Way 1: Join
UPDATE DimEmployee2
SET BaseRate = BaseRate * 1.1
FROM DimEmployee2 E 
JOIN DimSalesTerritory S
ON E.SalesTerritoryKey = S.SalesTerritoryKey
WHERE S.SalesTerritoryCountry = 'Canada'

-- Way 2: Sub query
UPDATE DimEmployee2
SET BaseRate = BaseRate * 1.1
WHERE SalesTerritoryKey
IN
(SELECT SalesTerritoryKey FROM DimSalesTerritory WHERE SalesTerritoryCountry = 'Canada')

-- Average transactions done by users
SELECT AVG(TotalTransactions) AS AvgTransaction FROM 
(
SELECT CustomerKey, COUNT(*) AS TotalTransactions
FROM FactInternetSales
GROUP BY CustomerKey
)
AS T