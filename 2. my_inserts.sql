use alcomarket

insert into catalogs (name) 
values	('vodka'), ('champaigne'), ('vine'), ('whiskey'), ('beer'), ('teqila'),('cognac');

insert into manufacturers (name, country) 
values	('Almaz', 'Russia'), ('BuhProm', 'Russia'), ('Podval Inc','Russia'), 
('Martini', 'Italy'),('Abrau', 'Russia'),('Hennesy', 'France'),('Pago Calzadilla', 'Spain'),
('ChivasR', 'Scotland'), ('Kentukki Whiskey', 'USA'), ('Spaten', 'Germany'), ('Kozel', 'Czech Republic' ), 
('Baltika', 'Russia'), ('Pernod Ricard', 'Mexico'), ('BelarusBuhProm', 'Mexico(Belarus)'),('Kurvuazie', 'France'),('Armyanskii', 'Armenia');


insert into photos (filename, size)
values	('photo1', 5), ('photo2', 5), ('photo3', 5), ('photo4', 5), ('photo5', 5), ('photo6', 5),('photo7', 5),
('photo8', 5),('photo9', 5),('photo10', 5),('photo11', 5),('photo12', 5),('photo13', 5),('photo14', 5),('photo15', 5),('photo16', 5)
,('photo17', 5),('photo18', 5),('photo19', 5),('photo20', 5),('photo21', 5),('photo22', 5),
('photo23', 5),('photo24', 5),('photo25', 5),('photo26', 5),('photo27', 5),('photo28', 5),('photo29', 5);


insert into products (id, name, price, manufacturer_id, catalog_id, photo_id) 
values	(30, 'President', 5000, 1, 1, 1), (31, 'Vice President', 2500, 1, 1, 2), (32,'Putinka', 500, 2, 1, 3), (33,'Navalninka', 1000, 2, 1, 4), (34,'Blue Friend', 70, 3, 1, 5), 
(35,'Asti', 1500, 4, 2, 6),(36,'Abrau', 800, 5, 2, 7), (37,'Sovetskoe', 500, 5, 2, 8), (38,'Rossiyskoe', 250, 2, 2, 9), (39,'Razlivnoe', 200, 3, 2, 10),
(40,'French bouquet', 2000, 6, 3, 11),(41,'Spain bouquet', 1500, 7, 3, 12), (42,'Italy bouquet', 1700, 8, 3, 13),(43,'Russian bouquet',250, 2, 3, 14), (44,'Arbatskoe semi white semi red', 70, 3, 3, 15),
(45,'Chivas', 1800, 8, 4, 16), (46,'Jack Daniels', 2100, 9, 4, 17), (47,'Lenin', 140, 3, 4, 18), 
(48,'Spaten', 120, 10, 5, 19), (49,'Kozel', 110, 11, 5, 20), (50,'Baltika', 60, 12, 5, 21), (51,'Tri starih tolstjaka', 30, 3, 5, 22),
(52,'Olmeca', 1850, 13, 6, 23), (53,'Kaktus', 800, 14, 6, 24), (54,'Sovetskaja iz podorozhnika', 140, 3, 6, 25),
(55,'Caesar', 2500, 14, 7, 26), (56,'Kurvuazie', 2150, 15, 7, 27), (57,'Armyanskii', 850, 16, 7, 28), (58,'Starina', 400, 3, 7, 29);


insert into customers (name, birthday, email, password_hash, phone_number)
values ('Nikolay Stepanovich', '1963-12-19', 'Koluchiy63@mail.ru', 'bububu123', 89155551122),
('Valentina Tereshkova', '1949-02-19', 'BelkaStrelkaValentinka@rambler.ru', 'CrazyValya', 89155551763),
('Dima Bilan', '1985-04-19', 'eblan@mail.ru', 'kokskokskoks', 89155558965),
('Nikita Mikhalkov', '1972-05-19', 'BadMikhalich@mail.ru', 'usirule', 89155554958),
('Olga Buzova','1986-07-19', 'Idiotina@gmail.ru', 'bezdarnost123', 89155550001),
('Alina Kabaeva', '1979-08-19', 'QueenPu@mail.ru', 'PapikVolodia', 89155559199),
('Oleg Gazmanov', '1955-10-19', 'Esaul@mail.ru', 'YasnieDni03', 8915554321),
('Vladimir Soloviev', '1959-10-19', 'Vecherniy@mail.ru', 'Modozvon', 89155554768),
('Maxim Galkin', '1979-11-19', 'LoveSexiBoy@rambler.ru', 'bubulya', 89155552132);


insert into stores (id, adress)
values (01, 'Victory st./1'), (02, 'Sezam st./2'), (03, 'Baker st./3');


insert into storehouses (store_id, product_id, amount)
values 
(01, 30, 50),(01, 31, 50),(01, 32, 50),(01, 33, 50),(01, 34, 50),(01, 35, 50),(01, 36, 50),(01, 37, 50),(01, 38, 50),(01, 39, 50),(01, 40, 50),
(01, 41, 50),(01, 42, 50),(01, 43, 50),(01, 44, 50),(01, 45, 50),(01, 46, 50),(01, 47, 50),(01, 48, 50),(01, 49, 50),(01, 50, 50),(01, 51, 50),(01, 52, 50),
(01, 53, 50),(01, 54, 50),(01, 55, 50),(01, 56, 50),(01, 57, 50),(01, 58, 50),
(02, 30, 50),(02, 31, 50),(02, 32, 50),(02, 33, 50),(02, 34, 50),(02, 35, 50),(02, 36, 50),(02, 37, 50),(02, 38, 50),(02, 39, 50),(02, 40, 50),
(02, 41, 50),(02, 42, 50),(02, 43, 50),(02, 44, 50),(02, 45, 50),(02, 46, 50),(02, 47, 50),(02, 48, 50),(02, 49, 50),(02, 50, 50),(02, 51, 50),(02, 52, 50),
(02, 53, 50),(02, 54, 50),(02, 55, 50),(02, 56, 50),(02, 57, 50),(02, 58, 50),
(03, 30, 50),(03, 31, 50),(03, 32, 50),(03, 33, 50),(03, 34, 50),(03, 35, 50),(03, 36, 50),(03, 37, 50),(03, 38, 50),(03, 39, 50),(03, 40, 50),
(03, 41, 50),(03, 42, 50),(03, 43, 50),(03, 44, 50),(03, 45, 50),(03, 46, 50),(03, 47, 50),(03, 48, 50),(03, 49, 50),(03, 50, 50),(03, 51, 50),(03, 52, 50),
(03, 53, 50),(03, 54, 50),(03, 55, 50),(03, 56, 50),(03, 57, 50),(03, 58, 50);


INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('1', '31', '1', 'Не вкусно', '1', '2021-03-07 02:36:17');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('2', '32', '2', 'Норм хрючево', '3', '2021-12-24 09:40:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('3', '33', '3', 'Не вкусно', '1', '2021-05-12 12:11:56');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('4', '34', '4', 'Норм хрючево', '3', '2021-02-01 11:48:00');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('5', '35', '5', 'Таким пойлом только прыщи протиать', '2', '2021-04-01 07:21:32');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('6', '36', '6', 'Норм хрючево', '3', '2021-06-27 04:19:48');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('7', '37', '7', 'Норм хрючево', '3', '2021-02-09 19:00:13');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('8', '38', '8', 'Таким пойлом только прыщи протиать', '2', '2021-06-07 00:44:23');
INSERT INTO `products_reviews` (`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('39', '9', 'Таким пойлом только прыщи протиать', '2', '2021-05-23 03:35:53');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('61', '40', '1', 'Не вкусно', '1', '2021-01-08 08:06:54');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('62', '42', '2', 'Напиток богов', '5', '2021-07-27 12:04:04');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('63', '43', '3', 'Таким пойлом только прыщи протиать', '2', '2021-10-05 08:11:35');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('64', '44', '4', 'Можно бахнуть', '4', '2021-03-26 13:46:30');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('65', '45', '5', 'Можно бахнуть', '4', '2021-06-22 17:05:42');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('66', '46', '6', 'Можно бахнуть', '4', '2021-10-27 02:53:18');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('67', '47', '7', 'Можно бахнуть', '4', '2021-09-02 07:29:37');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('68', '48', '8', 'Можно бахнуть', '3', '2021-07-29 05:32:43');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('69', '49', '9', 'Можно бахнуть', '4', '2021-04-12 15:00:53');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('20', '50', '1', 'Не вкусно', '1', '2021-02-22 21:34:13');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('21', '51', '2', 'Норм хрючево', '3', '2021-07-04 09:55:50');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('22', '52', '2', 'Таким пойлом только прыщи протиать', '2', '2021-09-03 13:20:09');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('23', '53', '3', 'Напиток богов', '4', '2021-03-06 22:24:28');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('24', '54', '4', 'Таким пойлом только прыщи протиать', '2', '2021-03-27 09:28:51');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('25', '55', '5', 'Напиток богов', '5', '2021-03-26 20:14:10');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('26', '56', '6', 'Норм хрючево', '3', '2021-08-11 05:53:34');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('27', '57', '7', 'Можно бахнуть', '4', '2021-03-11 17:19:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('28', '58', '8', 'Таким пойлом только прыщи протиать', '2', '2021-03-14 00:02:16');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('29', '33', '9', 'Напиток богов', '5', '2021-02-25 10:58:28');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('30', '31', '1', 'Таким пойлом только прыщи протиать', '2', '2021-04-13 03:49:06');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('31', '32', '2', 'Можно бахнуть', '4', '2021-02-28 08:27:48');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('32', '34', '3', 'Не вкусно', '1', '2021-02-21 17:38:26');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('33', '35', '4', 'Норм хрючево', '3', '2021-05-25 16:07:01');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('34', '36', '5', 'Норм хрючево', '3', '2021-09-22 21:44:22');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('35', '35', '6','Можно бахнуть', '4', '2021-06-29 19:43:06');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('36', '34', '7', 'Напиток богов', '5', '2021-06-03 18:34:02');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('37', '37', '8', 'Напиток богов', '5', '2021-06-22 19:44:41');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('38', '38', '9', 'Не вкусно', '1', '2021-09-24 06:29:13');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('39', '42', '1', 'Не вкусно', '1', '2021-09-18 10:31:37');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('40', '43', '1', 'Можно бахнуть', '4', '2021-08-19 17:01:27');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('41', '41', '2', 'Не вкусно', '1', '2021-09-23 07:43:22');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('42', '44', '3', 'Таким пойлом только прыщи протиать', '2', '2021-01-17 02:29:29');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('43', '54', '4', 'Можно бахнуть', '4', '2021-07-08 23:57:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('44', '45', '5', 'Можно бахнуть', '4', '2021-12-20 20:19:29');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('45', '53', '6', 'Норм хрючево', '3', '2021-01-06 22:04:50');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('46', '46', '7', 'Таким пойлом только прыщи протиать', '2', '2021-07-25 03:48:56');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('47', '47', '8', 'Норм хрючево', '3', '2021-08-25 14:17:00');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('48', '48', '9', 'Норм хрючево', '3', '2021-09-28 10:55:17');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('49', '49', '2', 'Напиток богов', '5', '2021-02-06 21:40:26');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('50', '52', '2', 'Таким пойлом только прыщи протиать', '2', '2021-11-26 11:09:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('51', '53', '1', 'Можно бахнуть', '4', '2021-11-26 11:09:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('52', '51', '3', 'Напиток богов', '5', '2021-11-26 11:09:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('53', '50', '4', 'Таким пойлом только прыщи протиать', '2', '2021-11-26 11:09:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('54', '34', '5', 'Норм хрючево', '3', '2021-11-26 11:09:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('55', '35', '6', 'Напиток богов', '5', '2021-11-26 11:09:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('56', '36', '7', 'Можно бахнуть', '4', '2021-11-26 11:09:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('57', '37', '8', 'Не вкусно', '1', '2021-11-26 11:09:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('58', '38', '9', 'Норм хрючево', '3', '2021-11-26 11:09:14');
INSERT INTO `products_reviews` (`id`,`product_id`, `customer_id`, `review`, `rating`, `created_at`) VALUES ('59', '39', '4', 'Напиток богов', '5', '2021-11-26 11:09:14');


INSERT INTO `discounts` (`id`, `product_id`, `discount`, `starts_at`, `ends_at`) VALUES ('1', '31', 15, '2021-10-26', '2023-03-23');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `starts_at`, `ends_at`) VALUES ('2', '35', 15, '2021-02-20', '2023-01-01');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `starts_at`, `ends_at`) VALUES ('3', '40', 10, '2021-06-01', '2023-12-07');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `starts_at`, `ends_at`) VALUES ('4', '45', 15, '2021-04-01', '2023-02-15');
INSERT INTO `discounts` (`id`, `product_id`, `discount`, `starts_at`, `ends_at`) VALUES ('5', '50', 15, '2021-12-24', '2023-05-01');

select * from store_reviews sr 

INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('1', '1', '1', 'Продавщица хамло', '1', '2021-09-12 22:41:45');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('2', '2', '2', 'Нет дегустационного зала', '3', '2021-06-04 16:06:47');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('3', '3', '3', 'Обсчитали. Но я все равно украл больше', '2', '2022-01-20 14:51:11');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('4', '4', '1', 'Торгуют паленкой. Вчера отравился. Завтра приду еще возьму', '4', '2021-05-05 16:57:02');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('5', '5', '2', 'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую', '5', '2021-12-02 13:53:42');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('6', '6', '3', 'Нет дегустационного зала', '3', '2021-05-30 09:24:30');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('7', '7', '1', 'Обсчитали. Но я все равно украл больше', '2', '2021-08-14 05:10:01');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('8', '8', '2', 'Обсчитали. Но я все равно украл больше', '2', '2021-06-24 11:55:13');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('9', '9', '3', 'Нет дегустационного зала', '3', '2022-01-26 02:53:12');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('10', '1', '2', 'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую', '5', '2021-03-31 02:21:52');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('11', '2', '1', 'Нет дегустационного зала', '3', '2021-03-02 04:49:54');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('12', '3', '3', 'Обсчитали. Но я все равно украл больше', '2', '2021-08-27 18:01:13');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('13', '4', '1', 'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую', '5', '2021-08-27 18:01:13');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('14', '5', '2', 'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую', '5', '2021-08-17 20:44:43');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('15', '6', '3', 'Продавщица хамло', '1', '2021-10-05 01:41:46');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('16', '7', '1', 'Торгуют паленкой. Вчера отравился. Завтра приду еще возьму', '4', '2022-01-28 15:48:59');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('17', '8', '3', 'Обсчитали. Но я все равно украл больше', '2', '2021-08-31 05:15:34');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('18', '9', '2', 'Продавщица хамло', '1', '2022-02-07 10:47:19');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('19', '1', '1', 'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую', '5', '2021-10-17 14:36:02');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('20', '2', '3', 'Да что же у вас нигде нет дегустационного зала то', '3', '2021-02-24 15:30:58');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('21', '3', '3', 'Обсчитали. Но я все равно украл больше', '2', '2021-09-22 09:37:36');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('22', '4', '1', 'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую', '5', '2021-08-23 14:53:44');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('23', '5', '2', 'Торгуют паленкой. Вчера отравился. Завтра приду еще возьму', '4', '2021-04-06 11:31:27');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('24', '6', '3', 'Нет дегустационного зала', '3', '2022-01-02 07:56:24');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('25', '7', '1', 'Торгуют паленкой. Вчера отравился. Завтра приду еще возьму', '4', '2022-01-11 07:33:09');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('26', '8', '2', 'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую', '5', '2021-08-11 19:49:03');
INSERT INTO `store_reviews` (`id`, `customer_id`, `store_id`, `review`, `rating`, `created_at`) VALUES ('27', '9', '3', 'Продавщица хамло', '1', '2021-09-09 09:39:26');


INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('1', '1', '1', '30', 5000, 1, 'False', '2021-04-11 20:24:12', '2021-06-18 05:56:37');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('2', '2', '2', '31', 2500, 5, 'False', '2021-06-27 10:21:45', '2021-05-21 21:35:50');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('3', '3', '3', '32', 500 , 3, 'False', '2021-09-24 21:02:28', '2021-11-14 11:18:49');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('4', '4', '1', '33', 1000 , 1, 'True', '2021-08-29 03:39:17', '2022-01-24 19:32:55');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('5', '5', '2', '34', 700, 5, 'True', '2022-01-12 04:58:30', '2021-09-15 01:43:21');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('6', '6', '3', '35', 1500, 2, 'True', '2021-03-24 13:21:06', '2021-05-06 00:32:30');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('7', '7', '1', '36', 800, 3, 'False', '2021-10-03 03:17:39', '2021-07-21 16:08:14');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('8', '8', '2', '37', 500, 5, 'True', '2021-11-11 22:45:51', '2021-06-20 12:05:00');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('9', '9', '3', '38', 250, 4, 'False', '2022-02-06 08:29:59', '2021-05-11 19:07:53');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('10', '1', '1', '39', 200, 5, 'False', '2021-05-15 01:15:45', '2021-10-22 01:31:05');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('11', '2', '2', '40', 2000, 3, 'False', '2022-01-31 12:32:41', '2021-10-27 01:52:20');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('12', '3', '3', '41', 1500, 3, 'True', '2021-08-24 19:17:43', '2021-08-03 23:13:59');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('13', '4', '1', '42', 1700, 4, 'False', '2021-07-26 05:14:30', '2021-09-06 16:41:52');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('14', '5', '2', '43', 250, 4, 'False', '2021-07-28 09:28:39', '2021-04-22 22:17:33');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('15', '6', '3', '44', 70, 6, 'True', '2021-04-11 23:45:36', '2021-08-22 00:23:30');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('16', '7', '1', '45', 1800, 1, 'True', '2021-03-07 23:36:58', '2022-01-07 17:21:37');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('17', '8', '2', '46', 2100, 2, 'True', '2021-11-28 00:02:50', '2021-09-22 17:45:54');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('18', '9', '3', '47', 140, 1, 'False', '2021-02-28 11:54:45', '2021-05-07 11:43:31');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('19', '1', '1', '48', 120, 1, 'False', '2022-02-16 20:58:13', '2021-03-27 15:52:23');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('20', '2', '2', '49', 110, 1, 'False', '2021-12-14 18:48:49', '2021-08-06 16:01:18');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('21', '3', '3', '50', 60, 2, 'False', '2021-10-25 15:54:24', '2022-02-06 20:01:54');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('22', '4', '1', '51', 30, 2, 'True', '2021-12-25 06:10:10', '2022-01-19 19:30:28');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('23', '5', '2', '52', 1850, 2, 'False', '2021-11-03 02:08:29', '2021-04-01 02:15:30');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('24', '6', '3', '53', 800, 3, 'False', '2021-03-29 10:42:14', '2021-11-20 15:54:36');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('25', '7', '1', '54', 140, 2, 'True', '2021-03-31 05:11:43', '2021-08-17 07:55:01');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('26', '8', '2', '55', 2500, 2, 'True', '2021-05-20 05:11:42', '2021-10-06 05:30:50');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('27', '9', '3', '56', 2150, 2, 'False', '2021-10-15 04:16:28', '2021-09-23 09:04:19');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('28', '1', '1', '57', 850, 3, 'True', '2021-02-27 22:49:43', '2021-09-20 23:47:30');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('29', '2', '2', '58', 400, 2, 'False', '2022-01-17 18:13:02', '2021-11-30 05:45:34');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('30', '3', '3', '34', 70, 4, 'True', '2021-07-30 23:36:43', '2021-11-24 04:35:08');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('31', '4', '1', '33', 1000, 2, 'True', '2021-12-15 00:14:04', '2021-10-17 09:02:46');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('32', '5', '2', '37', 500, 2, 'True', '2021-04-04 11:24:57', '2021-06-06 21:56:57');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('33', '6', '3', '38', 250, 3, 'False', '2022-02-16 02:01:28', '2021-03-15 16:07:26');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('34', '7', '1', '39', 200, 3, 'True', '2021-10-11 15:36:29', '2021-11-05 20:50:49');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('35', '8', '2', '44', 70, 5, 'False', '2021-09-02 22:14:08', '2021-06-10 02:19:00');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('36', '9', '3', '47', 140, 1, 'True', '2021-05-19 19:43:22', '2022-01-21 07:37:13');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('37', '1', '1', '50', 60, 5, 'True', '2021-12-03 01:06:53', '2021-07-24 23:42:27');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('38', '2', '2', '51', 30, 5, 'True', '2021-03-27 04:32:51', '2022-01-05 22:06:33');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('39', '3', '3', '53', 800, 2, 'False', '2021-09-14 21:39:44', '2021-09-29 03:37:11');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('40', '4', '1', '54', 140, 3, 'False', '2021-12-03 20:36:27', '2021-03-07 11:13:39');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('41', '5', '2', '57', 850, 4, 'True', '2022-01-18 17:38:01', '2021-09-05 16:03:46');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('42', '6', '3', '58', 400, 5, 'False', '2021-07-01 13:58:43', '2021-11-01 15:16:24');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('43', '7', '1', '33', 1000, 2, 'False', '2021-07-26 22:44:13', '2021-12-03 21:48:11');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('44', '8', '2', '34', 70, 2, 'True', '2021-06-16 00:55:10', '2021-05-26 10:46:54');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('45', '9', '3', '31', 2500, 1, 'True', '2021-10-24 06:20:44', '2021-12-20 09:49:13');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('46', '1', '1', '37', 500, 5, 'False', '2021-04-24 09:45:12', '2021-09-18 17:34:28');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('47', '2', '2', '39', 200, 5, 'False', '2021-11-12 17:29:08', '2021-02-22 07:25:26');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('48', '3', '3', '44', 70, 3, 'False', '2021-09-26 17:06:00', '2021-02-28 12:18:25');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('49', '4', '1', '47', 140, 1, 'True', '2021-09-27 04:11:28', '2021-09-17 09:06:18');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('50', '5', '2', '50', 60, 4, 'True', '2021-02-27 15:27:19', '2021-07-03 14:11:01');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('51', '6', '3', '51', 30, 1, 'True', '2021-05-06 19:11:40', '2021-07-06 19:07:10');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('52', '7', '1', '58', 400, 5, 'False', '2021-09-09 02:57:23', '2021-10-31 18:32:12');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('53', '8', '2', '57', 850, 1, 'False', '2021-04-19 01:48:08', '2021-12-18 21:42:54');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('54', '9', '3', '49', 110, 4, 'True', '2021-09-17 02:23:42', '2021-12-30 06:22:03');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('55', '1', '1', '47', 140, 1, 'False', '2021-04-07 19:41:29', '2021-11-10 03:03:15');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('56', '2', '2', '53', 800, 2, 'True', '2021-07-22 06:10:48', '2021-11-11 06:06:51');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('57', '3', '3', '57', 850, 2, 'False', '2022-02-15 16:57:13', '2021-05-10 07:57:07');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('58', '4', '1', '31', 2500, 1, 'True', '2021-07-31 13:01:13', '2021-04-28 08:04:29');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('59', '5', '2', '31', 2500, 1, 'True', '2021-08-27 18:38:01', '2021-12-28 04:03:46');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('60', '6', '3', '32', 500, 5, 'False', '2021-10-16 21:10:57', '2021-04-01 21:59:53');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('61', '7', '1', '33', 1000, 2, 'True', '2021-03-31 16:33:33', '2021-10-22 13:40:44');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('62', '8', '2', '34', 70, 4, 'False', '2021-09-15 04:53:26', '2022-01-09 00:20:01');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('63', '9', '3', '36', 800, 2, 'True', '2021-08-17 08:59:07', '2021-07-10 16:06:49');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('64', '1', '1', '36', 800, 1, 'True', '2021-05-18 11:14:58', '2022-01-14 18:37:28');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('65', '2', '2', '47', 140, 4, 'False', '2021-12-24 02:27:47', '2021-04-13 20:59:21');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('66', '3', '3', '38', 250, 1, 'False', '2021-10-20 07:49:40', '2021-06-12 13:40:04');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('67', '4', '1', '46', 2100, 2, 'False', '2021-04-01 23:42:13', '2021-02-23 07:14:59');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('68', '5', '2', '40', 2000, 3, 'False', '2021-08-29 07:42:25', '2021-02-21 15:08:30');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('69', '6', '3', '41', 1500, 2, 'False', '2021-11-18 15:51:08', '2021-11-08 00:45:08');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('70', '7', '1', '42', 1700, 5, 'True', '2021-05-11 20:47:11', '2021-04-29 20:04:39');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('71', '8', '2', '43', 250, 6, 'True', '2021-11-15 05:01:40', '2021-07-30 09:38:53');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('72', '9', '3', '44', 70, 3, 'True', '2021-03-14 16:57:05', '2021-05-11 02:15:12');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('73', '1', '1', '45', 1800, 1, 'False', '2021-04-15 22:25:08', '2021-04-15 12:10:48');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('74', '2', '2', '46', 2100, 2, 'False', '2022-01-31 12:54:17', '2021-09-03 07:35:01');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('75', '3', '3', '47', 140, 2, 'False', '2021-07-27 02:38:02', '2021-12-16 12:34:25');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('76', '4', '1', '48', 120, 4, 'True', '2021-06-04 20:54:55', '2022-02-18 09:51:59');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('77', '5', '2', '49', 110, 3, 'False', '2021-10-27 18:03:03', '2021-06-14 22:58:55');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('78', '6', '3', '50', 60, 1, 'False', '2021-09-28 10:36:18', '2022-01-18 06:06:17');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('79', '7', '1', '51', 30, 4, 'True', '2021-06-07 14:08:38', '2021-04-03 22:27:20');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('80', '8', '2', '52', 1850, 1, 'True', '2021-05-24 16:56:28', '2021-11-12 14:20:51');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('81', '9', '3', '53', 800, 3, 'True', '2021-12-28 13:57:33', '2021-03-26 13:03:11');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('82', '1', '1', '54', 140, 2, 'False', '2021-09-05 22:53:57', '2021-07-20 11:51:11');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('83', '2', '2', '54', 140, 2, 'False', '2021-04-16 04:35:31', '2021-09-20 02:48:28');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('84', '3', '3', '54', 140, 5, 'False', '2021-12-26 06:46:03', '2022-01-17 19:36:17');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('85', '4', '1', '54', 140, 4, 'True', '2021-08-15 16:25:16', '2021-06-03 05:01:57');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('86', '5', '2', '58', 400, 2, 'True', '2021-05-23 09:23:29', '2021-12-15 14:03:27');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('87', '6', '3', '39', 200, 1, 'False', '2021-12-13 21:14:10', '2022-02-15 06:35:50');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('88', '7', '1', '31', 2500, 3, 'True', '2021-06-09 20:42:18', '2021-04-05 01:33:47');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('89', '8', '2', '32', 500, 1, 'False', '2021-08-27 05:43:28', '2021-04-27 08:40:06');
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES ('90', '9', '3', '33', 70, 4, 'False', '2021-04-30 05:35:22', '2021-08-26 23:19:03');


