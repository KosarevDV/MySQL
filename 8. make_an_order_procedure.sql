-- Сделать заказ. Процедура.

delimiter //
drop procedure if exists make_an_order//
create procedure make_an_order(customer bigint, store bigint, product bigint, order_amount int, out res text)

begin
	
	declare `rollback` bool default 0;			
	declare code varchar(100);					
	declare error_str varchar(500);				
	declare new_amount int;					-- для расчета остатка на складе
	declare new_price decimal (11,2);		-- для расчета цены с учетом скидки\без учетаскидки
	declare disco int;						-- для расчета размера скидки
	declare current_amount int;				-- текущий остаток на складе
		
	declare continue handler for sqlexception	-- обработчик ошибок
	begin
		set `rollback` = 1;						
		get stacked diagnostics condition 1	
		code = returned_sqlstate, error_str = MESSAGE_TEXT; 
		set res = concat('Error occured!', code, 'Text: ', error_str);
	end;

	start transaction;		-- т.к. процедура обновляет данные нескольких таблиц то делать лучше в транзакции

	set current_amount = (select amount from storehouses where store_id = store and product_id = product); -- текущий остаток товара

	if order_amount > current_amount  then						-- проверяем хватает ли товара на складе, если нет - ошибка 
 		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'На складе магазина нет столько товара';		
  	END IF;

  
  	if (select product in (select d.product_id from discounts d where now() between d.starts_at and d.ends_at)) then  -- проверяем действет ли скидка
  		set disco = (select discount from discounts where product_id = product);		-- высчитывает размер скидки
  		set new_price = (select price - price * disco/100 from products where id = product);		-- пересчитываем стоимость
  	else 
  		set new_price = (select price from products where id = product);
  	end if;
  
  
	insert into orders (customer_id, store_id, product_id, price, amount) 				-- вносим заказ в таблицу orders
		values(customer, store, product, new_price, order_amount);										

	set new_amount = (select storehouses.amount - order_amount from storehouses			-- пересчитываем остаток
		where storehouses.store_id = store and storehouses.product_id = product);	

	update storehouses 																	-- обновляем остаток в магазине	
		set amount = new_amount where store_id = store and product_id = product;			

	if `rollback` then rollback;							
	else set res = 'Ok';
		commit;
	end if;
end//
delimiter ;


# Test

call make_an_order (4, 1, 31, 5, @res)

select @res;

select * from storehouses s; 

select * from orders;

delete from orders where id = last_insert_id() 
