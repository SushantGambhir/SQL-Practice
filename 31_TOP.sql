-- Display top 100 entries
SELECT TOP 100 * FROM DimProduct

-- Display bottom 100 entries
SELECT TOP 100 * FROM DimProduct
ORDER BY ProductKey DESC

-- Display bottom 100 entries in ascending order of Product Key
SELECT * FROM 
(SELECT TOP 100 * FROM DimProduct
ORDER BY ProductKey DESC) AS T
ORDER BY ProductKey

-- Display top 10% entries (Round off to nearest whole number)
SELECT TOP 10 PERCENT * FROM DimProduct