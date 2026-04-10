-- Now we want to change the structure of the Table (Add / Delete / Modify columns)

-- Add Columns
ALTER TABLE Employees
ADD Email VARCHAR(100)

ALTER TABLE Employees
ADD Phone VARCHAR(20), DOJ DATE

-- Remove Columns
ALTER TABLE Employees
DROP COLUMN Email

ALTER TABLE Employees
DROP COLUMN Phone, DOJ

-- Modify existing Column
ALTER TABLE Employees
ALTER COLUMN EmpName VARCHAR(200)

CREATE TABLE EmpNew(
    EmpId INT,
    EmpName VARCHAR(100)
)

-- Add constraint which were not defined during table creation
ALTER TABLE EmpNew
ALTER COLUMN EmpId INT NOT NULL

ALTER TABLE EmpNew
ADD CONSTRAINT Pk_empid PRIMARY KEY(EmpId)
-- Here in the above query 'Pk_empid' is optional, we are just giving a name to the constraint
-- The above query will work only if all entries in the column satisfies prerequisites to be the primary key

CREATE TABLE Salaries(
    EmpId INT,
    Salary DECIMAL(10,2)
)

ALTER TABLE Salaries
ADD CONSTRAINT Fk_empid FOREIGN KEY(EmpId)
REFERENCES EmpNew(EmpId)

-- Remove constraints which were defined during table creation
ALTER TABLE Salaries
DROP Fk_empid

ALTER TABLE EmpNew
DROP Pk_empid