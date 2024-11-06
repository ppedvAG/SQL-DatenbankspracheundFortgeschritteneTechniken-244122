--Tabellenvariablen vs #tempTabellen

/*
temp Tabellen sind nach Schlieﬂen der Connection weg..



#t
lokale temp Tabelle
nur in der Erstellersession
temp Tabellen sind nach Schlieﬂen der Connection weg..

##t
globale temp Tabelle
exisitiert auch in anderen Session 
andere Batches werden noch unterbrochen



*/



--Proc mit Output


create or alter proc gpdemo2 @par1 int, @par2 int output
as
set @par2 = @par1 +100
select @par2

exec gpdemo2 10, 2

declare @var1 as int

exec gpdemo2 10, @par2 = @var1 output


select @var1



create or alter proc #gpdemo2 @par1 varchar(50)
as
select * into ##t2 from customers where country = @par1

exec #gpdemo2 'UK'

select * from ##t1


declare @i as int 
set @i = 1
GO
select @i

--Vairablen exisiteren nur im laufenden Bacth
--@var @@var

select @@


declare @tabx table ---#t
	(spx int not null,
	 spy int)



create type dbo.tabledata 
as table
(
	spx int index ix1,
	spy int
)
 WITH (Memory_optimized = on)



 declare @taby dbo.tabledata ---#t









select * into #t from customers
select * into ##t from customers

select * from #t
select * from ##t