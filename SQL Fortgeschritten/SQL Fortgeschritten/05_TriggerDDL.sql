--DDL reagieren auf create alter und drop und erzeugen eine nachricht in XML format

create trigger trgdemo on database --all_server
for DDL_Database_level_events --ALTER_VIEW
as
select eventdata();
--idee select app_name(), getdate(), Suser_name()

GO

--! immer gut zu wissen, wenn jemand Objekte ändert --> Sicht zB

drop view vslf


--DDL

create trigger trgddl on database
for ALTER_VIEW
as
select eventdata()

alter table orders add spx int



create or alter trigger trgverarsche on database
for alter_view
as
select eventdata(), APP_NAME(), Getdate(), SUSER_NAME()

alter view vbestellung 
as
select * from Employees


drop table t1

select * from t1

