--PIVOT operator is used to transform rows into columns, 
--making data summaries easier to read and analyze. 
--Its especially useful for reporting when you want to aggregate values

SELECT * FROM (
SELECT City, Department, Salary FROM Employees) AS T
PIVOT (SUM(Salary) FOR Department IN(IT,Sales)) AS P
-- Result will have three columns:
-- City, IT, Sales
-- IT and Sales will have sum of salaries values
-- City is row identifier, Department is column to pivot, SUM(Salary) is aggregate measure

-- We also have UNPIVOT, where we convert columns into rows
SELECT * INTO PivotData FROM (
SELECT City, Department, Salary FROM Employees) AS T
PIVOT (SUM(Salary) FOR Department IN(IT,Sales)) AS P

SELECT * FROM PivotData

SELECT * FROM (
SELECT City, IT, Sales FROM PivotData) AS T
UNPIVOT(Salary FOR Department IN(IT,Sales)) AS U