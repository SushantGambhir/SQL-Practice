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

SELECT * FROM Employees