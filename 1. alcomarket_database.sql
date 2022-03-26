drop database if exists alcomarket;
create database alcomarket;
use alcomarket;
	

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  	id serial primary key ,
  	name VARCHAR(50)
	) COMMENT = 'Категория товара';


DROP TABLE IF EXISTS manufacturers;
CREATE TABLE manufacturers (
  	id serial primary key,
  	name VARCHAR(100) COMMENT,
  	country VARCHAR(100) COMMENT,
  	key manufacturer_index (name)
	) COMMENT = 'Производители';


DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id SERIAL,
    filename VARCHAR(200),
    `size` INT
	);


DROP TABLE IF EXISTS products;
CREATE TABLE products (
  	id SERIAL primary KEY,
 	name VARCHAR(100) unique COMMENT,
  	description TEXT COMMENT,
  	price DECIMAL (11,2) COMMENT,
  	catalog_id BIGINT UNSIGNED,
  	manufacturer_id BIGINT UNSIGNED,
  	rating float,
  	photo_id BIGINT UNSIGNED not null,
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	key product_index (name),
  	foreign key (catalog_id) references catalogs(id),
  	foreign key (manufacturer_id) references manufacturers(id),
  	foreign key (photo_id) references photos(id)
	) COMMENT = 'Товар';


drop table if exists customers;
create table customers (
	id SERIAL primary key,
	name VARCHAR(150) COMMENT,
	birthday date  COMMENT,
	email VARCHAR(120) unique,
	password_hash VARCHAR(100) COMMENT,
	phone_number BIGINT UNSIGNED unique COMMENT,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
	)	comment = 'Покупатели';
	
	
drop table if exists products_reviews;
create table products_reviews (
	id serial primary key,
	customer_id BIGINT UNSIGNED not null,
	product_id BIGINT UNSIGNED not NULL,
	review TEXT  COMMENT 'Отзыв',
	rating enum ('1','2','3','4','5') COMMENT 'Рейтинг',
	created_at datetime default now(),
	foreign key (customer_id) references customers(id),
	foreign key (product_id) references products(id)
	) comment = 'Отзывы о товарах';


drop table if exists stores;
create table stores (
	id SERIAL primary key,
	adress VARCHAR(100),
	rating float
	) comment = 'Магазины';
		
				
DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses(
  	id SERIAL primary key,
  	store_id BIGINT UNSIGNED,
  	product_id BIGINT UNSIGNED,
  	amount INT UNSIGNED COMMENT 'Количество',
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	foreign key (store_id) references stores(id),
  	foreign key (product_id) references products(id)
	) COMMENT = 'Склады магазинов';
		

drop table if exists store_reviews;
create table store_reviews (
	id serial primary key,
	customer_id BIGINT unsigned not NULL,
	store_id BIGINT unsigned not NULL,
	review TEXT COMMENT,
	rating enum ('1','2','3','4','5') COMMENT 'Рейтинг',
	created_at datetime default now(),
	foreign key (customer_id) references customers(id),
	foreign key (store_id) references stores(id)
	) comment = 'Отзывы о магазинах';


drop table if exists discounts;
create table discounts (
	id serial primary key,
	product_id BIGINT unsigned not NULL,
	discount int unsigned not null,
	starts_at date,
	ends_at date,
	foreign key (product_id) references products(id)
	) comment = 'Скидки';
	

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
 	id SERIAL primary KEY,
 	customer_id BIGINT unsigned not null,
 	store_id BIGINT unsigned not null,
	product_id BIGINT unsigned not null,
	price DECIMAL(11,2),
	amount INT UNSIGNED DEFAULT 1,
	total decimal (11,2) generated always as (price * amount),
	order_confirmed enum ('True', 'False') default 'False',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	foreign key (customer_id) references customers(id),
	foreign key (store_id) references stores(id),
	foreign key (product_id) references products(id)
	) comment = 'Заказы';


DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
	order_id BIGINT UNSIGNED NOT null unique,
	store_id BIGINT UNSIGNED NOT null,
	product_id BIGINT unsigned not null,
	amount INT UNSIGNED not null,
	total DECIMAL(11,2),
	foreign key (order_id) references orders(id),
	foreign key (store_id) references stores(id),
	foreign key (product_id) references products(id)
) comment = 'Продажи';