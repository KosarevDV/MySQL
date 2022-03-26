-- Любимый напиток покупателя - процедура

delimiter //
drop procedure if exists favorite_beverage //
create procedure favorite_beverage(in alkash int)
begin
	select c.name as customer, p.name as product, o.amount as total
	from orders o join customers c on o.customer_id = c.id 
	join products p on o.product_id = p.id
	where customer_id = alkash
	order by customer, total desc
	limit 1;
end//
delimiter ;

call favorite_beverage(5)			

