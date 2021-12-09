---Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as WORKER_NAME;.

select [first_name] as WORKER_NAME from [dbo].[Employees]

---Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

select distinct [dept_name] from [dbo].[Departments]

--Q-3. Write an SQL query to show the last 5 record from a table.

select top(5) * from [dbo].[Departments] order by [sid_Department] desc