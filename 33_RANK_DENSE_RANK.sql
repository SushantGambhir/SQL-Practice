-- Window function 2 & 3: RANK() & DENSE_RANK()
-- Assign rank to each employee based on salary (the one with highest salary should be rank 1)
SELECT EmployeeId, EmpName,City,Department,Salary,
RANK() OVER(ORDER BY Salary DESC) AS SalaryRank
FROM Employees
-- ROW_NUMBER() also gives unique value to each row
-- RANK() may or maynot give unique value to each row, 
-- values will be same if they have same specified column value (Salary in above example)

SELECT EmployeeId, EmpName,City,Department,Salary,
RANK() OVER(PARTITION BY City ORDER BY Salary DESC) AS SalaryRank
FROM Employees

-- RANK()
-- Assigns a rank to each row based on the order.
-- If two rows tie, they get the same rank.
-- The next rank is skipped (leaves a gap).

-- DENSE_RANK()
-- Similar to RANK(), but does not skip ranks after ties.
-- Ensures consecutive ranking.

SELECT EmployeeId, EmpName,City,Department,Salary,
DENSE_RANK() OVER(ORDER BY Salary DESC) AS SalaryRank
FROM Employees