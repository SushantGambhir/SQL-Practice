-- Display all the entries in DimProduct table
SELECT * FROM DimProduct

-- Display any specific column
SELECT Color FROM DimProduct

-- Display unique values
SELECT DISTINCT Color FROM DimProduct

-- Display pair values
SELECT DISTINCT Color, ListPrice FROM DimProduct