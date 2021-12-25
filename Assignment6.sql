--Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.

select * from [dbo].[Worker]
where YEAR([JOINING_DATE]) = 2014 and MONTH([JOINING_DATE]) = 2

--Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

select [WORKER_TITLE],COUNT(*) as number_of_duplicates from [dbo].[Title]
group by [WORKER_TITLE]
having count(*) > 1

--Q-3. How to remove duplicate rows from Employees table.

select [JobTitle],count(*) as duplicate_values from [HumanResources].[Employee]
group by [JobTitle]
having count(*)>1
