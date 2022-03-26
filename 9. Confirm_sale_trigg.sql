/* Триггер на подтверждение продаж
 */

UPDATE orders 
SET order_confirmed = 'True';	-- Сначала просто приведем вс заказы в подтвержденные, чтобы база была полнее 

select * from orders

delimiter //
drop trigger if exists sale//
create trigger sale after update on orders
for each row begin
	insert ignore into sales (order_id, store_id, product_id, amount, total)
	select o.id, o.store_id, o.product_id,o.amount, o.total from orders o
	where o.order_confirmed  = 'True';
end//
delimiter ;


call make_an_order (7, 3, 40, 5, @res);   -- Создаем заказ, пока по умолчанию он не подтвержден

select @res;							  -- test


UPDATE orders 						
SET order_confirmed = 'True' where id = LAST_INSERT_ID();				-- тут как бы нажимаем на кнопку подтверждения последнего заказа 


select * from sales;			     	-- test

