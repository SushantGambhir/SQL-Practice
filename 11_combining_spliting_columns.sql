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