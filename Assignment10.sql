--Q-19. Write an SQL query to determine the 5th highest salary without using TOP or limit method.

select * from [dbo].[Salary_History]
where [current_salary] = (select min([current_salary]) from [dbo].[Salary_History]
                         where [current_salary] in (select distinct top 5 [current_salary]
						                            from [dbo].[Salary_History] order by [current_salary] desc))



--Q-20. Write an SQL query to fetch the list of employees with the same salary.

select t1.[emp_no],t1.current_salary from [dbo].[Salary_History] as t1
inner join [dbo].[Salary_History] as t2
on t1.current_salary = t2.current_salary
and t1.emp_no <> t2.emp_no