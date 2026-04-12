SELECT * FROM Employees
SELECT * INTO EmployeesStage FROM Employees
SELECT * FROM EmployeesStage

DELETE FROM Employees WHERE EmployeeId>6

UPDATE EmployeesStage
SET Salary=34000
WHERE EmployeeId = 9

UPDATE EmployeesStage
SET Salary=25000
WHERE EmployeeId = 6

UPDATE EmployeesStage
SET City='NYC'
WHERE EmployeeId = 5

SET IDENTITY_INSERT Employees ON 
-- By default we are not allowed to explictly add values for columns with auto-increment
-- This command is needed to allow it

-- Now we want to ensure that the source (EmployeesStage) table and target (Employees) table are in sync
MERGE Employees AS T
USING EmployeesStage AS S
ON T.EmployeeId=S.EmployeeId
WHEN NOT MATCHED THEN
INSERT (EmployeeId,EmpName,City,Department,Salary)
VALUES(S.EmployeeId,S.EmpName,S.City,S.Department,S.Salary);