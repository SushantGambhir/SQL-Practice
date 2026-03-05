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

-- In UNIQUE constraint it allows NULL but only once (Since every value should be UNIQUE)

DROP TABLE Employees

-- Check constraint. We can add a Boolean condition here
CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
	EmployeeName VARCHAR(100) NOT NULL,
	DOJ DATETIME,
	Salary FLOAT CHECK(Salary>=10000),
	Email VARCHAR(50) UNIQUE,
	Gender CHAR(1) CHECK (Gender = 'M' OR Gender = 'F')
-- Gender IN('M','F') can also be used
)

-- Side note: Char data type is used we expect an exact number of characters

DROP TABLE Employees

-- Default constraint. Will take this value if not specified
CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
	EmployeeName VARCHAR(100) NOT NULL,
	DOJ DATETIME,
	Salary FLOAT CHECK(Salary>=10000),
	Email VARCHAR(50) UNIQUE,
	Gender CHAR(1) CHECK (Gender IN('M','F')),
	City VARCHAR(30) DEFAULT 'London'
)

INSERT INTO Employees(EmployeeID,EmployeeName,DOJ,Salary,Email,Gender)
VALUES(1,'Jack','2022-11-24',30000,'t@t.com','M')

SELECT * FROM Employees
-- City will be London

DROP TABLE Employees

-- Auto increment feature
-- We have IDENTITY function which automatically increments the value
-- Syntax: IDENTITY(Starting point, How much increment)
-- Can also use negative increment

CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY IDENTITY(1,1),
	EmployeeName VARCHAR(100) NOT NULL,
	DOJ DATETIME,
	Salary FLOAT CHECK(Salary>=10000),
	Email VARCHAR(50) UNIQUE,
	Gender CHAR(1) CHECK (Gender IN('M','F')),
	City VARCHAR(30) DEFAULT 'London'
)