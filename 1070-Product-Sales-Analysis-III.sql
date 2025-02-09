/* Write your PL/SQL query statement below */
select product_id , year first_year , quantity , price from sales s
where year = (select min(year) from sales where product_id = s.product_id)