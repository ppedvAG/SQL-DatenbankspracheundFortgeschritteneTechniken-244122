--CTE


WITH CTENAME
as
(
SELECT .. Tabelle
)
select * from CTENAME;

;with cte
as
(select orderid, freight from orders)
select * from cte


--was ist der duchschnitt der max frachtkosten pro mitarbeiter
select employeeid, freight from orders


select employeeid, max(freight) as anz
into #tab
from orders
group by employeeid

select avg(anz) from #tab

select avg(anz) from 
(
select employeeid, max(freight) as anz
from orders
group by employeeid) t


;with ctemax
as
(
select employeeid, max(freight) as anz
from orders
group by employeeid
)
select avg(anz) from ctemax


select employeeid, lastname, reportsto from employees

insert into employees (lastname, firstname, reportsto)
values                 ('Rauch', 'Andreas', 6),
					   ('Maier', 'Peter', 6),
					   ('Schmitt', 'Evi', 10)


;WITH CTE 
AS
(
	Select ....... --anker
	UNION ALL
	select ... from tabelle t inner join cte t.sp1 = cte.sp1
)
select * from cte



;WITH CTEANG
as
(
select employeeid, lastname, 1 as Ebene from employees where reportsto is null
UNION ALL
select e.employeeid , e.lastname , Ebene +1
		from employees e  
			inner join cteang c on e.reportsto= c.employeeid

)
select * from cteang where ebene = 2







