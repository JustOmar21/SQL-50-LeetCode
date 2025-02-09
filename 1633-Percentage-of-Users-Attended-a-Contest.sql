# Write your MySQL query statement below
select contest_id , round( 100.0 * count(r.user_id) / (select count(user_id) from users) , 2) percentage
from users u join register r on u.user_id = r.user_id
group by contest_id 
order by percentage desc, contest_id asc