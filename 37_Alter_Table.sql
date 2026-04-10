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