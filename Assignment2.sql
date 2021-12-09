--Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

select substring([first_name],1,3) as firstname from [dbo].[Employees]

--Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

select charindex('a','amitabh')

--Q-3. Write an SQL query to print the name of employees having the highest salary in each department.

select t1.[current_salary],t2.[first_name],t3.dept_name
into NEW_TABLE
from [dbo].[Current_Personnel] as t1 inner join [dbo].[Employees] as t2
on t1.emp_no = t2.emp_no
inner join [dbo].[Departments] as t3
on t1.sid_Department=t3.sid_Department

select first_name,dept_name,current_salary
from [NEW_TABLE]
where [current_salary]
in (select max(current_salary) as salary
from [NEW_TABLE]
group by dept_name)