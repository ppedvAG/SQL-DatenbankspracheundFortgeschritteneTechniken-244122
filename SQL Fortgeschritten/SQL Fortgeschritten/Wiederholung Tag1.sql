/*


DB design

Redundanz
- Prozedur in Kombi Security
--Besitzverkettung!
--Achtung: vermeide das ALTER Recht an x beliebige zu verteilen

--Trigger: 
--komfort , aber langsam


Physikalisches Design

--Seiten ca 8kb
--max 700 DS
--max Grenze der fixen werte = 8060
--auch NULL braucht Platz
--Seiten kommen 1:1 in RAM
--Seiten osllten möglicht voll sein und "wenige"

--Messen:
dbcc showcontig('Tabelle')
--Anz der Seiten: 10000 *8Kb
--Mittlere Füllgrad: 81%  

select * from sys.dm_db_index_physical_Stats
	(DBID, OBJEKTID, NULL, NULL, 'detailed')
--> forward_record_count


set statistics io, time on -off

--io Anzahl der Seiten
--time: CPU Zeit , Dauer in ms


--Plan
--SCAN ..alles von a bis z
--SEEK ..herauspicken

--Problem: Proc haben immer denselben Plan..
-- der mal gut sein kann, aber je nach Parameter auch schlecht


--Statistiken nicht korrekt


--View. nicht zweckentfremden
--schembinding

--f() versuche zu vemeiden









