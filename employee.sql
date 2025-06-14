--DATA MANIPULATION LANGUAGE (DML)
 
--SELECT STATEMENT
 
--Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.
 
SELECT [EmpId],
       [FullName]
FROM [dbo].[Employee_Details$]
WHERE [ManagerId] = '986'
 
--Write an SQL query to fetch the different projects available from the EmployeeSalary table.
 
SELECT [Project]
FROM [dbo].[Employee_Salary$]
 
--Write an SQL query to fetch the count of employees working in project ‘P1’
 
SELECT COUNT(*) AS EmployeeCount
FROM [dbo].[Employee_Salary$]
WHERE [Project] = 'P1'
 
--Write an SQL query to find the maximum, minimum, and average salary of the employees.
SELECT MIN(SALARY) AS MINSALARY,
       MAX(SALARY) AS MAXSALARY,
	   AVG(SALARY) AS AVGSALARY
FROM [dbo].[Employee_Salary$]
 
--Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000
 
SELECT [EmpId]
FROM [dbo].[Employee_Salary$]
WHERE SALARY BETWEEN 9000 AND 15000
