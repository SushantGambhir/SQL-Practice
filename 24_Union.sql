SELECT * INTO tblEmps2 FROM tblEmps

-- Take mathematical union of both tables like in Set Theory
SELECT * FROM tblEmps
UNION
SELECT * FROM tblEmps2

-- Take union of all the rows, even can have duplicate values
SELECT * FROM tblEmps
UNION ALL
SELECT * FROM tblEmps2

-- Union of selected rows only
SELECT EmployeeId, EmployeeName FROM tblEmps
UNION ALL
SELECT EmployeeId, EmployeeName FROM tblEmps2

--
SELECT EmployeeId, EmployeeName, NULL, Salary FROM tblEmps
UNION ALL
SELECT EmployeeId, EmployeeName, Title, Salary FROM tblEmps2

-- Union and Intersect are applicable only when following conditions are satisfied
-- 1. Same Number of Columns
-- 2. Compatible Data Types
-- 3. Column Order Matters
-- 4. The final result set takes column names from the first SELECT only. The second SELECT’s column names are ignored.
-- 5. If we want to order the combined results, you must apply ORDER BY after the UNION, not inside each SELECT.