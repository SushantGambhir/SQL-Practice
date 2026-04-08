DROP TABLE Employees

CREATE TABLE Employees(
EmployeeId INT PRIMARY KEY IDENTITY(1,1),
EmpName VARCHAR(100),
City VARCHAR(30),
Department VARCHAR(50),
Salary DECIMAL(10,2)
)

INSERT INTO Employees
(EmpName,City,Department,Salary)
VALUES
('John','NYC','IT',40000),
('Amanda','London','Sales',40000),
('Aman','Pune','IT',30000),
('Rahul','Pune','IT',26000),
('Sam','London','Sales',30000),
('Rakesh','Delhi','IT',20000),
('Suraj','Pune','Sales',12000),
('Ajay','Delhi','Sales',10000),
('Ankita','Delhi','Sales',10000),
('Sudeep','Delhi','IT',36000),
('Sanket','Pune','IT',40000)

-- Must try running each query for this for better understanding for each WINDOW function
-- Window Function 1: ROW_NUMBER()
SELECT EmpName,City,Department,Salary,
ROW_NUMBER() OVER(ORDER BY EmpName) AS RowNum
FROM Employees

-- Now each row for each city value will have unique RowNum value
-- For each city the counting will be 1 to n based on number of entries having that city
SELECT EmpName,City,Department,Salary,
ROW_NUMBER() OVER(PARTITION BY City ORDER BY EmpName) AS RowNum
FROM Employees

-- Similar qeury for Department
SELECT EmpName,City,Department,Salary,
ROW_NUMBER() OVER(PARTITION BY Department ORDER BY EmpName) AS RowNum
FROM Employees

-- Both City and Department
-- Windowing will happen for each unique combo of City and Department
SELECT EmpName,City,Department,Salary,
ROW_NUMBER() OVER(PARTITION BY Department,City ORDER BY EmpName) AS RowNum
FROM Employees