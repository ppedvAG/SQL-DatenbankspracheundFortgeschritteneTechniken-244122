--Prozeduren sind daher schneller
--da beim ersten Aufruf ein Plan erstellt wird und auch über den Neustart 
--bestehen bleibt

--Allerdings ist gut , aber auch schlecht zugleich
--je nach ABfrage (where Bedingung) kann ein anderer Plan besser sein
--eine Adhoc Abfrage kann sich anpassen
--aber die Prozedur verwendet immer den selben Plan...
--unsererm Fall 1 Mio Seiten, obwohl die Tabelle nur 56000 besitzt





exec gpSucheKunde 'ALFKI'-- 1 Treffer
exec gpSucheKunde 'A'-- 4 Treffer
exec gpSucheKunde -- alle Treffer

create proc gpSucheKunden @kdid varchar(5)='%'  --A  'A    '
as
select * from customers where customerid like @kdid +'%'

exec gpSucheKunden 'ALFKI'


--Diese Prozedur ist schlecht...



set statistics io, time on


select * from ku where id < 10--56000 500ms

--SCAN A bis Z alles anschauen
--Seek = herauspicken  12 Seiten 0 ms

create or alter proc gpsucheID @id int
as
select * from ku where id < @id


exec gpsucheId 10


select * from ku where id < 11000


exec gpsucheId 100000 -- tab hat 56000 Seiten , aber Proc liest 900000


select * from ku where id < 10

dbcc freeproccache
-- vorsicht damit werden alle Pläne aller DBs gelöscht..
--auch die der Prozeduren.. hohe CPU Last zu erwarten
--aber Prozeduren müssen einen neuen Planb erstellen

--Wo kann man sehr gut schlechte Prozeduren erkennen?
--Abfragespeicher akltivieren..
--Prozeduren sollten keine großen Abweichen haben....

--evtl intervall auf kürzere Zeit einstellen
