-- Here we see SELF JOIN
-- When JOIN is performed on one single table

-- We have table tblEmps with each employee mapped to their Manager's (Parent) employee id
-- Now we want to add extra columns of manager

SELECT * FROM tblEmps

SELECT A.EmployeeId, A.EmployeeName,
B.EmployeeName AS ManagerName 
FROM tblEmps A
LEFT JOIN tblEmps B
ON A.ParentEmployeeId = B.EmployeeId

-- Identify employees earning more than their managers
SELECT A.EmployeeId, A.EmployeeName,
B.EmployeeName AS ManagerName,
A.Salary, B.Salary 
FROM tblEmps A
LEFT JOIN tblEmps B
ON A.ParentEmployeeId = B.EmployeeId
WHERE A.Salary > B.Salary
