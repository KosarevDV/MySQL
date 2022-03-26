/* Топ 3 алкаша - вариант с представлением*/
-- вариант 1 - представление
create or replace view top_3 as select o.customer_id, sum(o.total) as total from orders o 
join 
products p 
on o.product_id = p.id
where o.order_confirmed = 'True'
group by customer_id 
order by total desc
limit 3

select c.name, top_3.total from customers c join top_3
on c.id = top_3.customer_id 

