--Q-17. Write an SQL query to show the top n (say 10) records of a table.

select top 10 [sid_Department],[dept_no],[dept_name]
from [dbo].[Departments]

--Q-18. Write an SQL query to determine the nth (say n=5) highest salary from a table.

select top(5) * from [dbo].[Salary_History]
order by [current_salary] desc