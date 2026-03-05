--% - Any number of characters
--_ - Specified number of characters

-- All names starting with A
SELECT * 
FROM DimProduct
WHERE EnglishProductName LIKE 'A%'

-- All names starting with AW
SELECT * 
FROM DimProduct
WHERE EnglishProductName LIKE 'AW%'

-- All names ending with e
SELECT * 
FROM DimProduct
WHERE EnglishProductName LIKE '%e'

-- All names having a in the name
SELECT * 
FROM DimProduct
WHERE EnglishProductName LIKE '%a%'

-- All names starting with c as 3rd character
SELECT * 
FROM DimProduct
WHERE EnglishProductName LIKE '__c%'

-- All names starting with a as 1st character and c as 3rd character
SELECT * 
FROM DimProduct
WHERE EnglishProductName LIKE 'a_c%'