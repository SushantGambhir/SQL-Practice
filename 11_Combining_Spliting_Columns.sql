SELECT EmployeeKey, FirstName, MiddleName,LastName
FROM DimEmployee

SELECT FirstName + MiddleName + LastName
AS NAME
FROM DimEmployee

SELECT FirstName + ' ' + MiddleName + ' ' + LastName
AS NAME
FROM DimEmployee

SELECT FirstName + SPACE(1) + MiddleName + SPACE(1) + LastName
AS NAME
FROM DimEmployee

-- Even if one of the above three names is NULL whole entry will be NULL.
-- In the table we are using some of the middle names are NULL
-- To deal with it we use ISNULL function
-- Syntax: ISNULL(Column name, value to add if its NULL)
SELECT FirstName + SPACE(1) + 
ISNULL(MiddleName,SPACE(1)) + SPACE(1) + LastName
AS NAME
FROM DimEmployee

-- Alternatively we can use CONCAT function
SELECT 
CONCAT(FirstName,SPACE(1),MiddleName,SPACE(1),LastName) 
AS NAME
FROM DimEmployee
-- Here we dont need ISNULL because by default CONCAT has it

-- We can also use CONCAT_WS function which shall automatically give specified spaces
SELECT 
CONCAT_WS(SPACE(1),FirstName,MiddleName,LastName) 
AS NAME
FROM DimEmployee

-- In the above table there is no FullName column but assume there is 
-- (Later on in this repo we will see how its done, but not now)
-- For now just assume this column exists
-- We want to split it into first, middle, last name
-- For this we use CHARINDEX function
SELECT FullName, 
LEFT(FullName,CHARINDEX(' ',FullName)-1) AS FirstName,
RIGHT(FullName,LEN(FullName) - CHARINDEX(' ',FullName,CHARINDEX(' ',FullName)+1)) 
AS LastName 
From DimEmployee
-- - CHARINDEX(' ', FullName)
-- Finds the position of the first space in the FullName.
-- - CHARINDEX(' ', FullName, CHARINDEX(' ', FullName) + 1)
-- This is a nested call. It finds the position of the second space in the FullName.
-- - First CHARINDEX(' ', FullName) gives the first space.
-- - Adding +1 starts searching right after that, so the second CHARINDEX finds the next space.
-- - LEN(FullName)
-- Returns the total length of the string.
-- - LEN(FullName) - CHARINDEX(...second space...)
-- Calculates how many characters are after the second space.
-- - RIGHT(FullName, …)
-- Extracts that many characters from the right side of the string.