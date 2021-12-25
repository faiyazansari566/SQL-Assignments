--Q-15. Write an SQL query to fetch intersecting records of two tables.

select * from [dbo].[Worker] as t1
inner join [dbo].[Bonus] as t2 
on t1.WORKER_ID = t2.WORKER_REF_ID

--Q-16. Write an SQL query to show records from one table that another table does not have.

select [WORKER_ID] from [dbo].[Worker]
where [WORKER_ID] not in (select [WORKER_REF_ID] from [dbo].[Bonus])