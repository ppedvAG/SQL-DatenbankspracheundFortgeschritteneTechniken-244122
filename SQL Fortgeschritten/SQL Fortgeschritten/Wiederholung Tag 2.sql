--Indizes

--> Index hilft

-- Performance schneller finden, weniger Seiten--> weniger CPU--> weniger RAM
-- Lockniveau verringern
-- forwardrecordcount Problem beheben


--Brent Ozar
--sp_blitz
sp_blitz


--NON CL: rel geringe Ergebnismenge (solange Lookup stattfinden)
--Wartung: 200MB +1 CL IX + 2 NC IX - 363 MB

--ONLINE  OFFLINE
--mit TempDB oder ohne

--OFFLINE ohne Tempdb -- 860MB
--ONLINE mit Tempdb -- 1100 MB



select * from sys.dm_db_index_usage_stats

--TAB SCAN vs CL IX SCAN

--IX SEEK vs CL IX SCAN

--IX SEEK --> HEAP  +lookup
--IX SEEK --> CL IX +lookup  muss Struktur des CL IX durchgehen



--CL IX
--gut für alle Abfragen , auch Bereiche
--als PK oft Verschwendung



--ColSt IX
--deutlich komprimiert
--Archivdaten!! seit SQL 2016 SP1 für alle 

select 1000000/5000


















