-- Usually Schema means structure of table, but here it means something different
-- By default if we see table names in a DB, we see all the tables have 'dbo.' prefix
-- In actual industry projects, 'dbo.' is not used, instead custom schemas are created
-- Like under same DB, there will be different schemas for different departments / teams etc

CREATE SCHEMA Sales

CREATE TABLE Sales.SalesTran(
OrderID INT,
OrderDate DATETIME,
Qty INT
)

SELECT * FROM Sales.SalesTran

-- To delete a schema, firstly delete all the tables which it has. Else it will fail
DROP TABLE Sales.SalesTran
DROP SCHEMA Sales