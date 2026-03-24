SELECT ProductKey, EnglishProductName, Color
FROM DimProduct

--
SELECT ProductKey, EnglishProductName, Color,
CASE Color
    WHEN 'Red' THEN 'R'
    ELSE 'NA'
END
FROM DimProduct
WHERE Color <> 'NA'

--
SELECT ProductKey, EnglishProductName, Color,
CASE Color
    WHEN 'Red' THEN 'R'
    WHEN 'Silver' THEN 'S'
    WHEN 'White' THEN 'W'
    ELSE 'NA'
END
AS ColorCode
FROM DimProduct
WHERE Color <> 'NA'

--
SELECT ProductKey, EnglishProductName, Color,
CASE
    WHEN ListPrice>=3000 THEN 'High'
    WHEN ListPrice>=2000 THEN 'Average'
    ELSE 'Low'
END
AS PriceLevel
FROM DimProduct