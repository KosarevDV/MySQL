/* Views
 1. Отзывы о магазине */

create or replace view store_2_rw as
	select st.adress , c.name, sr.review , sr.rating from store_reviews sr
	join stores st on sr.store_id = st.id 
	join customers c on sr.customer_id = c.id
	where sr.store_id = 2;
	
select * from store_2_rw;

 -- 2. Отзывы о товаре
create or replace view product_5_rw as
	select p.name as product, c.name as customer, pr.review , pr.rating from products_reviews pr
	join products p on pr.product_id = p.id 
	join customers c on pr.customer_id = c.id
	where pr.product_id = 50;
	
select * from product_5_rw;


-- 3. Все отзывы о товарах

select c.name, p.name, pr.review, pr.rating from products_reviews pr
join customers c on c.id = pr.customer_id
join products p on p.id  = pr.product_id 

-- 4. Все отзывы о магазинах

select c.name, s.adress, sr.review, sr.rating from store_reviews sr
join customers c on c.id = sr.customer_id
join stores s on s.id  = sr.store_id 


