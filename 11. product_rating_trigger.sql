-- Триггер на обновление рейтинга продукта

delimiter //
drop trigger if exists product_rating_checker_trigger//
create trigger product_rating_checker_trigger after insert on products_reviews
for each row begin
	update products set rating = (select round(avg(rating), 1) from products_reviews pr where pr.product_id = new.product_id) where products.id = new.product_id;
end//
delimiter ;


# Test

select * from products p 

INSERT INTO `products_reviews` (`customer_id`, `product_id`, `review`, `rating`, `created_at`) VALUES ('6', '45', 'Норм хрючево', '3', '2021-09-02 07:29:37');
INSERT INTO `products_reviews` (`customer_id`, `product_id`, `review`, `rating`, `created_at`) VALUES ('7', '46', 'Таким пойлом только прыщи протиать', '2', '2021-07-29 05:32:43');
INSERT INTO `products_reviews` (`customer_id`, `product_id`, `review`, `rating`, `created_at`) VALUES ('5', '47', 'Норм хрючево', '3', '2021-04-12 15:00:53');


select p.name, round(avg(pr.rating), 1) from products_reviews pr
join products p 
on p.id = pr.product_id 
group by p.name;


