SELECT  [ps_partkey]
      ,[ps_suppkey]
      ,[ps_supplycost]
      ,[ps_availqty]
      ,[ps_comment]
  FROM [ERP_Demo].[dbo].[partsuppliers]
  where contains(ps_comment, 'print')


  select * from partsuppliers where ps_Comment like '%print%'
  
  
  SELECT  [ps_partkey]
      ,[ps_suppkey]
      ,[ps_supplycost]
      ,[ps_availqty]
      ,[ps_comment]
  FROM [ERP_Demo].[dbo].[partsuppliers]
  where contains(ps_comment, 'print')



  SELECT  [ps_partkey]
      ,[ps_suppkey]
      ,[ps_supplycost]
      ,[ps_availqty]
      ,[ps_comment]
  FROM [ERP_Demo].[dbo].[partsuppliers]
  where freetext(ps_comment, 'requests')
