-- Любимые напитки покупателей

select distinct customer, product from
(select c.name as customer, p.name as product, max(o.amount) as total
from orders o join customers c on o.customer_id = c.id 
join products p on o.product_id = p.id
group by product, customer 
order by total desc) as nested_q
group by customer;


