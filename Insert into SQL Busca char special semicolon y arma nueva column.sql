insert into cajavier1.sales_price (itemid,description,saleprice)
(SELECT 
left(LINE, 2) as ITEMID ,
SUBSTRING(REGEXP_SUBSTR(LINE,';+[^;]+'),2) as DESCRIPTION ,
REGEXP_SUBSTR(LINE,'[^;][^;]+') as SALEPRICE 
FROM TABLE(QSYS2.IFS_READ('/home/cajavier/Sales_Price2.csv')))