--Primary Key is used to uniquely identify any row in a table. Its unique and not null

CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
	EmployeeName VARCHAR(100),
	DOJ DATETIME,
	Salary FLOAT
)

INSERT INTO Employees
VALUES(1,'John','2023-01-14',40000)

SELECT * FROM Employees

--Now this will give an error since its violating Primary Key constraint
INSERT INTO Employees
VALUES(1,'Jack','2022-11-24',30000)

--Only one primary key allowed in a table
--But primary key can have one or more columns

DROP TABLE Employees

-- NOT NULL does not allow NULL values
CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
	EmployeeName VARCHAR(100) NOT NULL,
	DOJ DATETIME,
	Salary FLOAT
)

-- Now this will give error
INSERT INTO Employees
VALUES(1,NULL,'2022-11-24',30000)

DROP TABLE Employees

-- We can also add unique constraint which will not allow duplicate values for that column
CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
	EmployeeName VARCHAR(100) NOT NULL,
	DOJ DATETIME,
	Salary FLOAT,
	Email VARCHAR(50) UNIQUE
)