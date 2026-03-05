-- Upper function converts given text all characters to upper case
-- Lower function converts given text all characters to lower case

SELECT UPPER('hello')

SELECT EnglishProductName, UPPER(EnglishProductName), LOWER(EnglishProductName)
FROM DimProduct

-- LEFT Function returns specific number of characters to return from left
-- Syntax: LEFT(Expression, Number of characters)
SELECT LEFT(EnglishProductName,4)
FROM DimProduct

--Similarly we have RIGHT function
SELECT RIGHT(EnglishProductName,4)
FROM DimProduct

--SUBSTRING function is used to get a specific part of string
-- Syntax: SUBSTRING(Expression,Starting Index, Number of characters)
-- Indexing starts from 1
SELECT SUBSTRING(EnglishProductName,2,3)
FROM DimProduct

-- LEN function returns number of characters in given expression
SELECT LEN(EnglishProductName)
FROM DimProduct

-- TRIM function removes blank spaces on left side of first non blank character
-- and right side of last non blank character
SELECT TRIM('   HE LLO   ')
-- Output: 'HE LLO'
-- LTRIM only removes the blank spaces on left side of first non blank character
-- RTRIM ony removes the blank spaces on right side of last non blank character