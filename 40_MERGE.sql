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