-- Views are virtual tables in SQL which references the physical tables

CREATE VIEW VwSelectData
AS
SELECT * FROM DimProduct

SELECT * FROM VwSelectData

-- View acts as a security layer on top of the existing table

CREATE VIEW VwJoined
AS
SELECT P.EnglishProductName, F.OrderDate, SUM(SalesAmount) AS TotalSales
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey
GROUP BY P.EnglishProductName,F.OrderDate

SELECT * FROM VwJoined

-- Limitation of VIEW
-- ORDER BY not possible without TOP