SELECT * FROM FactInternetSales
WHERE EXISTS
(
SELECT ProductKey FROM DimProduct WHERE Color='Red'
)
-- EXISTS returns TRUE (If atleast one row is returned) / FALSE (If no row is returned).
-- Hence above query EXISTS returns TRUE and all rows of FactInternetSales are printed

-- The below query will not print any row
SELECT * FROM FactInternetSales
WHERE NOT EXISTS
(
SELECT ProductKey FROM DimProduct WHERE Color='Red'
)

