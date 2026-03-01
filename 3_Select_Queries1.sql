-- Display all the entries in DimProduct table
SELECT * 
FROM DimProduct

-- Display any specific column
SELECT Color 
FROM DimProduct

-- Display unique values
SELECT DISTINCT Color 
FROM DimProduct

-- Display pair values
SELECT DISTINCT Color, ListPrice 
FROM DimProduct

-- Display all the entries in ascending order of color
SELECT * 
FROM DimProduct
ORDER BY Color ASC 
-- The keyword ASC is optional since by default it takes Ascending order only

-- Display ProductKey, EnglishProductName, Color of all the entries in descending order of color
SELECT ProductKey, EnglishProductName, Color 
FROM DimProduct
ORDER BY Color DESC

-- Display ProductKey, EnglishProductName, Color, List Price of all the entries 
-- in descending order of color and ListPrice
SELECT ProductKey, EnglishProductName, Color, ListPrice 
FROM DimProduct
ORDER BY Color DESC, ListPrice DESC
-- The left one attribute gets the priority
-- Output of this query attached in the file 4_Query_result1.csv

--We can also use order number instead of column name,
-- like below we use 1 (which means first column in the SELECT Statement)
-- i.e. ProductKey in this case
SELECT ProductKey, EnglishProductName, Color, ListPrice 
FROM DimProduct
ORDER BY 1