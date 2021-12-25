--Q-13. Write an SQL query to show only odd rows from a table.

select * from [dbo].[Worker]
where [WORKER_ID]%2=1

--Q-14. Write an SQL query to clone a new table from another table.

select * into clone_table from [dbo].[Worker]
