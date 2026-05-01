# Write your MySQL query statement below
select name
from SalesPerson
where name not in(
SELECT sp.name
FROM SalesPerson sp
LEFT JOIN Orders o 
       ON sp.sales_id = o.sales_id
LEFT JOIN Company c 
       ON o.com_id = c.com_id 
      AND c.name = 'RED'
where c.name = 'RED')