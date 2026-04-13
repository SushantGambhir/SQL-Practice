--A Common Table Expression (CTE) is a temporary, named result set defined 
--using the WITH clause that exists only during the execution of a single query. 

WITH CteSelectData
AS
(
	SELECT ProductKey,YEAR(OrderDate) AS OrderYear,SalesAmount 
	FROM FactInternetSales
)
SELECT * FROM CteSelectData
-- If we try to run the above SELECT query alone it will not work
-- We need to select full from 'WITH'

WITH CteSelectData2
AS
(
	SELECT ProductKey,YEAR(OrderDate) AS OrderYear,SalesAmount 
	FROM FactInternetSales
)
SELECT ProductKey,OrderYear,SUM(SalesAmount) AS TotalSales
FROM CteSelectData2
GROUP BY ProductKey,OrderYear

WITH CteSales
AS
(
	SELECT ProductKey,SUM(SalesAmount) AS TotalSales FROM FactInternetSales  -- Giving alias here (TotalSales) is practically mandatory
	GROUP BY ProductKey
),
CteProducts
AS
(
	SELECT ProductKey, EnglishProductName FROM DimProduct
)
SELECT P.ProductKey,P.EnglishProductName, S.TotalSales 
INTO T1
FROM CteSales S JOIN CteProducts P
ON S.ProductKey = P.ProductKey

SELECT P.ProductKey,P.EnglishProductName, SUM(S.SalesAmount) AS TotalSales 
INTO T2
FROM FactInternetSales S JOIN DimProduct P
ON S.ProductKey = P.ProductKey
GROUP BY P.ProductKey, P.EnglishProductName;

SELECT * FROM T1
EXCEPT
SELECT * FROM T2