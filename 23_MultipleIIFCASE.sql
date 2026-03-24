SELECT ProductKey, EnglishProductName, Color, ListPrice,
IIF(Color='Red' AND ListPrice>=3000,'R-3k',
IIF(Color='Red' AND ListPrice>=2000,'R-2k',
IIF(Color='Red','R-<2K',
IIF(Color='Silver' AND ListPrice>=3000,'S-3k',
IIF(Color='Silver' AND ListPrice>=2000,'S-2k',
IIF(Color='Silver','S-<2K',
'None'
)))))) 
AS ColorPriceLevel
FROM DimProduct
WHERE Color <> 'NA'

--
SELECT ProductKey, EnglishProductName, Color, ListPrice,
CASE
    WHEN Color='Red' AND ListPrice>=3000 THEN 'R-3k'
    WHEN Color='Red' AND ListPrice>=2000 THEN 'R-2k'
    WHEN Color='Red' THEN 'R-<2K'
    WHEN Color='Silver' AND ListPrice>=3000 THEN 'S-3k'
    WHEN Color='Silver' AND ListPrice>=2000 THEN 'S-2k'
    WHEN Color='Silver' THEN 'S-<2K'
    ELSE 'None'
END
AS ColorPriceLevel
FROM DimProduct
WHERE Color <> 'NA' AND ListPrice IS NOT NULL

--
SELECT EmployeeKey,FirstName, DepartmentName,
 CASE DepartmentName
            WHEN 'Sales' THEN 1
            WHEN 'Finance' THEN 2
            WHEN 'Engineering' THEN 3
            WHEN 'Marketing' THEN 4
            ELSE 5
        END AS Category
FROM DimEmployee
ORDER BY Category