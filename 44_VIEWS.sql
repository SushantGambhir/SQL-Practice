-- Views are virtual tables in SQL which references the physical tables

CREATE VIEW VwSelectData
AS
SELECT * FROM DimProduct

SELECT * FROM VwSelectData

-- View acts as a security layer on top of the existing able