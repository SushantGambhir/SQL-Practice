-- - The FORMAT function converts the numeric ProductKey into a string with a specific format
-- - '0000' means: always display the number with at least 4 digits, padding with leading zeros if necessary.
-- - Example:
-- - 1 → 0001
-- - 25 → 0025
-- - 1234 → 1234
SELECT 'P-' + FORMAT(ProductKey,'0000') AS ProductID,
EnglishProductName INTO DimProducts
FROM DimProduct

SELECT * FROM DimProducts

SELECT * FROM DimProducts P
JOIN FactInternetSales F
ON P.ProductID = F.ProductKey
-- Now this query will give error since P.ProductID is Varchar and F.ProductKey is Int

-- Fix is simple
SELECT * FROM DimProducts P
JOIN FactInternetSales F
ON CAST(RIGHT(P.ProductID,4)AS INT) = F.ProductKey