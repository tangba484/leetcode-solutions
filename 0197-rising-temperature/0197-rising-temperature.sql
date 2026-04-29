# Write your MySQL query statement below
select b.id
from Weather a
left join Weather b
on a.recordDate = date_sub(b.recordDate,interval 1 day)
where a.temperature < b.temperature