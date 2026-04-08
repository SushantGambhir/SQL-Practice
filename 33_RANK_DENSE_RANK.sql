-- Window function 2: RANK()
-- Assign rank to each employee based on salary (the one with highest salary should be rank 1)
SELECT EmployeeId, EmpName,City,Department,Salary,
RANK() OVER(ORDER BY Salary DESC) AS SalaryRank
FROM Employees
-- ROW_NUMBER() also gives unique value to each row
-- RANK() may or maynot give unique value to each row, 
-- values will be same if they have same specified column value (Salary in above example)