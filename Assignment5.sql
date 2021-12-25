--Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

select [FIRST_NAME] from [dbo].[Worker]
where [FIRST_NAME] not in ('vipul','satish')

--Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

select * from [dbo].[Worker]
where [FIRST_NAME] like '_____h'

--Q-3. Write a query to validate Email of Employee.

select CONCAT([FIRST_NAME],'.',[LAST_NAME],'@workers_mail.com') as workers_mail_id from [dbo].[Worker]