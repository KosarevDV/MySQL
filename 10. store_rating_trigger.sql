-- Триггер на обновление рейтинга магазина


delimiter //
drop trigger if exists store_rating_checker_trigger//
create trigger store_rating_checker_trigger after insert on store_reviews
for each row begin
	update stores set rating = (select round(avg(rating), 1) from store_reviews sr where sr.store_id = new.store_id) where stores.id = new.store_id;
end//
delimiter ;


# Test

select * from stores 

INSERT INTO `store_reviews` (`customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('3', '1', 'Отличное место для всей семьи', '4', '2021-09-12 22:41:45');
INSERT INTO `store_reviews` (`customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('4', '2',  'Отличное место для всей семьи', '4', '2021-06-04 16:06:47');
INSERT INTO `store_reviews` (`customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('5', '3', 'Отличное место для всей семьи', '4', '2022-01-20 14:51:11');

select sr.store_id, round(avg(sr.rating), 1) from store_reviews sr
group by store_id 
