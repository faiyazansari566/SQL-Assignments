--Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’with ‘A’.

select REPLACE([FIRST_NAME],'a','A') from [dbo].[Worker]

--Q-2. Write an SQL query to print all Worker details from the Worker table order byFIRST_NAME Ascending and DEPARTMENT Descending.

select * from [dbo].[Worker] 
order by [FIRST_NAME]  asc , [DEPARTMENT]  desc

--Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.

select MAX([SALARY]) from [dbo].[Worker].