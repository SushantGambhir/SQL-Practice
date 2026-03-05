-- Copying the original table
SELECT *
INTO DimProduct2
FROM DimProduct

SELECT * FROM DimProduct2

-- Updating
UPDATE DimProduct2
SET Color = 'No Color'
WHERE Color='NA'

UPDATE DimProduct2
SET Color = 'Red - High'
WHERE Color='Red'AND ListPrice>3000

UPDATE DimProduct2
SET Color = 'Red - Low'
WHERE Color='Red'AND ListPrice>1500

UPDATE DimProduct2
SET ListPrice = ListPrice*1.1