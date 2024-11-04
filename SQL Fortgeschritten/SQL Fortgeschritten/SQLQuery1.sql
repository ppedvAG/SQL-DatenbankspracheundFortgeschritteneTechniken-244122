DECLARE @SearchWord VARCHAR(30)  
SET @SearchWord ='kiste'  
SELECT * 
FROM customers   
WHERE CONTAINS(companyname, @SearchWord);  

select * from customers where companyname like '%kiste%'