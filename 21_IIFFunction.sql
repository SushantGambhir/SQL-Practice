SELECT ProductKey, EnglishProductName, Color
FROM DimProduct

-- IIF Function only available in MS SQL Server
-- Syntax: IIF(Statement, O/P if True, O/P if False)

SELECT IIF(10=10,1,0)
SELECT IIF(10=100,'T','F')

SELECT ProductKey, EnglishProductName, Color,
IIF(Color='Red','Yes','No') AS IsRed
FROM DimProduct

-- Nested IIF
SELECT ProductKey, EnglishProductName, Color,
IIF(Color='Red','Yes',IIF(Color='Silver','Silver','Neither')) 
AS IsRedOrSilver
FROM DimProduct