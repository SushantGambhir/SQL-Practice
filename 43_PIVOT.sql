--PIVOT operator is used to transform rows into columns, 
--making data summaries easier to read and analyze. 
--It’s especially useful for reporting when you want to aggregate values

SELECT * FROM (
SELECT City, Department, Salary FROM Employees) AS T
PIVOT (SUM(Salary) FOR Department IN(IT,Sales)) AS P
-- Result will have three columns:
-- City, IT, Sales
-- IT and Sales will have sum of salaries values
-- City is row identifier, Department is column to pivot, SUM(Salary) is aggregate measure