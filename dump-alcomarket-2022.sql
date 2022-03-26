-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: alcomarket
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT 'Название раздела',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Разделы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'vodka'),(2,'champaigne'),(3,'vine'),(4,'whiskey'),(5,'beer'),(6,'teqila'),(7,'cognac');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL COMMENT 'Имя покупателя',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `email` varchar(120) DEFAULT NULL,
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Пароль',
  `phone_number` bigint unsigned DEFAULT NULL COMMENT 'Номер телефона',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Покупатели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Nikolay Stepanovich','1963-12-19','Koluchiy63@mail.ru','bububu123',89155551122,'2022-03-19 12:44:32','2022-03-19 12:44:32'),(2,'Valentina Tereshkova','1949-02-19','BelkaStrelkaValentinka@rambler.ru','CrazyValya',89155551763,'2022-03-19 12:44:32','2022-03-19 12:44:32'),(3,'Dima Bilan','1985-04-19','eblan@mail.ru','kokskokskoks',89155558965,'2022-03-19 12:44:32','2022-03-19 12:44:32'),(4,'Nikita Mikhalkov','1972-05-19','BadMikhalich@mail.ru','usirule',89155554958,'2022-03-19 12:44:32','2022-03-19 12:44:32'),(5,'Olga Buzova','1986-07-19','Idiotina@gmail.ru','bezdarnost123',89155550001,'2022-03-19 12:44:32','2022-03-19 12:44:32'),(6,'Alina Kabaeva','1979-08-19','QueenPu@mail.ru','PapikVolodia',89155559199,'2022-03-19 12:44:32','2022-03-19 12:44:32'),(7,'Oleg Gazmanov','1955-10-19','Esaul@mail.ru','YasnieDni03',8915554321,'2022-03-19 12:44:32','2022-03-19 12:44:32'),(8,'Vladimir Soloviev','1959-10-19','Vecherniy@mail.ru','Modozvon',89155554768,'2022-03-19 12:44:32','2022-03-19 12:44:32'),(9,'Maxim Galkin','1979-11-19','LoveSexiBoy@rambler.ru','bubulya',89155552132,'2022-03-19 12:44:32','2022-03-19 12:44:32');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `discount` int unsigned NOT NULL COMMENT 'Размер скидки',
  `starts_at` date DEFAULT NULL COMMENT 'Начало акции',
  `ends_at` date DEFAULT NULL COMMENT 'Конец акции',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='скидки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,31,15,'2021-10-26','2022-03-23'),(2,35,15,'2021-02-20','2022-01-01'),(3,40,10,'2021-06-01','2022-12-07'),(4,45,15,'2021-04-01','2022-02-15'),(5,50,15,'2021-12-24','2022-05-01');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT 'Наименование производителя',
  `country` varchar(100) DEFAULT NULL COMMENT 'Страна производства',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `manufacturer_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Производители';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Almaz','Russia'),(2,'BuhProm','Russia'),(3,'Podval Inc','Russia'),(4,'Martini','Italy'),(5,'Abrau','Russia'),(6,'Hennesy','France'),(7,'Pago Calzadilla','Spain'),(8,'ChivasR','Scotland'),(9,'Kentukki Whiskey','USA'),(10,'Spaten','Germany'),(11,'Kozel','Czech Republic'),(12,'Baltika','Russia'),(13,'Pernod Ricard','Mexico'),(14,'BelarusBuhProm','Mexico(Belarus)'),(15,'Kurvuazie','France'),(16,'Armyanskii','Armenia');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `store_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `amount` int unsigned DEFAULT '1',
  `total` decimal(11,2) GENERATED ALWAYS AS ((`price` * `amount`)) VIRTUAL,
  `order_confirmed` enum('True','False') DEFAULT 'False',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `store_id` (`store_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `product_id`, `price`, `amount`, `order_confirmed`, `created_at`, `updated_at`) VALUES (1,1,1,30,5000.00,1,'True','2021-04-11 20:24:12','2022-03-20 23:16:41'),(2,2,2,31,2500.00,5,'True','2021-06-27 10:21:45','2022-03-20 23:16:41'),(3,3,3,32,500.00,3,'True','2021-09-24 21:02:28','2022-03-20 23:16:41'),(4,4,1,33,1000.00,1,'True','2021-08-29 03:39:17','2022-01-24 19:32:55'),(5,5,2,34,700.00,5,'True','2022-01-12 04:58:30','2021-09-15 01:43:21'),(6,6,3,35,1500.00,2,'True','2021-03-24 13:21:06','2021-05-06 00:32:30'),(7,7,1,36,800.00,3,'True','2021-10-03 03:17:39','2022-03-20 23:16:41'),(8,8,2,37,500.00,5,'True','2021-11-11 22:45:51','2021-06-20 12:05:00'),(9,9,3,38,250.00,4,'True','2022-02-06 08:29:59','2022-03-20 23:16:41'),(10,1,1,39,200.00,5,'True','2021-05-15 01:15:45','2022-03-20 23:16:41'),(11,2,2,40,2000.00,3,'True','2022-01-31 12:32:41','2022-03-20 23:16:41'),(12,3,3,41,1500.00,3,'True','2021-08-24 19:17:43','2021-08-03 23:13:59'),(13,4,1,42,1700.00,4,'True','2021-07-26 05:14:30','2022-03-20 23:16:41'),(14,5,2,43,250.00,4,'True','2021-07-28 09:28:39','2022-03-20 23:16:41'),(15,6,3,44,70.00,6,'True','2021-04-11 23:45:36','2021-08-22 00:23:30'),(16,7,1,45,1800.00,1,'True','2021-03-07 23:36:58','2022-01-07 17:21:37'),(17,8,2,46,2100.00,2,'True','2021-11-28 00:02:50','2021-09-22 17:45:54'),(18,9,3,47,140.00,1,'True','2021-02-28 11:54:45','2022-03-20 23:16:41'),(19,1,1,48,120.00,1,'True','2022-02-16 20:58:13','2022-03-20 23:16:41'),(20,2,2,49,110.00,1,'True','2021-12-14 18:48:49','2022-03-20 23:16:41'),(21,3,3,50,60.00,2,'True','2021-10-25 15:54:24','2022-03-20 23:16:41'),(22,4,1,51,30.00,2,'True','2021-12-25 06:10:10','2022-01-19 19:30:28'),(23,5,2,52,1850.00,2,'True','2021-11-03 02:08:29','2022-03-20 23:16:41'),(24,6,3,53,800.00,3,'True','2021-03-29 10:42:14','2022-03-20 23:16:41'),(25,7,1,54,140.00,2,'True','2021-03-31 05:11:43','2021-08-17 07:55:01'),(26,8,2,55,2500.00,2,'True','2021-05-20 05:11:42','2021-10-06 05:30:50'),(27,9,3,56,2150.00,2,'True','2021-10-15 04:16:28','2022-03-20 23:16:41'),(28,1,1,57,850.00,3,'True','2021-02-27 22:49:43','2021-09-20 23:47:30'),(29,2,2,58,400.00,2,'True','2022-01-17 18:13:02','2022-03-20 23:16:41'),(30,3,3,34,70.00,4,'True','2021-07-30 23:36:43','2021-11-24 04:35:08'),(31,4,1,33,1000.00,2,'True','2021-12-15 00:14:04','2021-10-17 09:02:46'),(32,5,2,37,500.00,2,'True','2021-04-04 11:24:57','2021-06-06 21:56:57'),(33,6,3,38,250.00,3,'True','2022-02-16 02:01:28','2022-03-20 23:16:41'),(34,7,1,39,200.00,3,'True','2021-10-11 15:36:29','2021-11-05 20:50:49'),(35,8,2,44,70.00,5,'True','2021-09-02 22:14:08','2022-03-20 23:16:41'),(36,9,3,47,140.00,1,'True','2021-05-19 19:43:22','2022-01-21 07:37:13'),(37,1,1,50,60.00,5,'True','2021-12-03 01:06:53','2021-07-24 23:42:27'),(38,2,2,51,30.00,5,'True','2021-03-27 04:32:51','2022-01-05 22:06:33'),(39,3,3,53,800.00,2,'True','2021-09-14 21:39:44','2022-03-20 23:16:41'),(40,4,1,54,140.00,3,'True','2021-12-03 20:36:27','2022-03-20 23:16:41'),(41,5,2,57,850.00,4,'True','2022-01-18 17:38:01','2021-09-05 16:03:46'),(42,6,3,58,400.00,5,'True','2021-07-01 13:58:43','2022-03-20 23:16:41'),(43,7,1,33,1000.00,2,'True','2021-07-26 22:44:13','2022-03-20 23:16:41'),(44,8,2,34,70.00,2,'True','2021-06-16 00:55:10','2021-05-26 10:46:54'),(45,9,3,31,2500.00,1,'True','2021-10-24 06:20:44','2021-12-20 09:49:13'),(46,1,1,37,500.00,5,'True','2021-04-24 09:45:12','2022-03-20 23:16:41'),(47,2,2,39,200.00,5,'True','2021-11-12 17:29:08','2022-03-20 23:16:41'),(48,3,3,44,70.00,3,'True','2021-09-26 17:06:00','2022-03-20 23:16:41'),(49,4,1,47,140.00,1,'True','2021-09-27 04:11:28','2021-09-17 09:06:18'),(50,5,2,50,60.00,4,'True','2021-02-27 15:27:19','2021-07-03 14:11:01'),(51,6,3,51,30.00,1,'True','2021-05-06 19:11:40','2021-07-06 19:07:10'),(52,7,1,58,400.00,5,'True','2021-09-09 02:57:23','2022-03-20 23:16:41'),(53,8,2,57,850.00,1,'True','2021-04-19 01:48:08','2022-03-20 23:16:41'),(54,9,3,49,110.00,4,'True','2021-09-17 02:23:42','2021-12-30 06:22:03'),(55,1,1,47,140.00,1,'True','2021-04-07 19:41:29','2022-03-20 23:16:41'),(56,2,2,53,800.00,2,'True','2021-07-22 06:10:48','2021-11-11 06:06:51'),(57,3,3,57,850.00,2,'True','2022-02-15 16:57:13','2022-03-20 23:16:41'),(58,4,1,31,2500.00,1,'True','2021-07-31 13:01:13','2021-04-28 08:04:29'),(59,5,2,31,2500.00,1,'True','2021-08-27 18:38:01','2021-12-28 04:03:46'),(60,6,3,32,500.00,5,'True','2021-10-16 21:10:57','2022-03-20 23:16:41'),(61,7,1,33,1000.00,2,'True','2021-03-31 16:33:33','2021-10-22 13:40:44'),(62,8,2,34,70.00,4,'True','2021-09-15 04:53:26','2022-03-20 23:16:41'),(63,9,3,36,800.00,2,'True','2021-08-17 08:59:07','2021-07-10 16:06:49'),(64,1,1,36,800.00,1,'True','2021-05-18 11:14:58','2022-01-14 18:37:28'),(65,2,2,47,140.00,4,'True','2021-12-24 02:27:47','2022-03-20 23:16:41'),(66,3,3,38,250.00,1,'True','2021-10-20 07:49:40','2022-03-20 23:16:41'),(67,4,1,46,2100.00,2,'True','2021-04-01 23:42:13','2022-03-20 23:16:41'),(68,5,2,40,2000.00,3,'True','2021-08-29 07:42:25','2022-03-20 23:16:41'),(69,6,3,41,1500.00,2,'True','2021-11-18 15:51:08','2022-03-20 23:16:41'),(70,7,1,42,1700.00,5,'True','2021-05-11 20:47:11','2021-04-29 20:04:39'),(71,8,2,43,250.00,6,'True','2021-11-15 05:01:40','2021-07-30 09:38:53'),(72,9,3,44,70.00,3,'True','2021-03-14 16:57:05','2021-05-11 02:15:12'),(73,1,1,45,1800.00,1,'True','2021-04-15 22:25:08','2022-03-20 23:16:41'),(74,2,2,46,2100.00,2,'True','2022-01-31 12:54:17','2022-03-20 23:16:41'),(75,3,3,47,140.00,2,'True','2021-07-27 02:38:02','2022-03-20 23:16:41'),(76,4,1,48,120.00,4,'True','2021-06-04 20:54:55','2022-02-18 09:51:59'),(77,5,2,49,110.00,3,'True','2021-10-27 18:03:03','2022-03-20 23:16:41'),(78,6,3,50,60.00,1,'True','2021-09-28 10:36:18','2022-03-20 23:16:41'),(79,7,1,51,30.00,4,'True','2021-06-07 14:08:38','2021-04-03 22:27:20'),(80,8,2,52,1850.00,1,'True','2021-05-24 16:56:28','2021-11-12 14:20:51'),(81,9,3,53,800.00,3,'True','2021-12-28 13:57:33','2021-03-26 13:03:11'),(82,1,1,54,140.00,2,'True','2021-09-05 22:53:57','2022-03-20 23:16:41'),(83,2,2,54,140.00,2,'True','2021-04-16 04:35:31','2022-03-20 23:16:41'),(84,3,3,54,140.00,5,'True','2021-12-26 06:46:03','2022-03-20 23:16:41'),(85,4,1,54,140.00,4,'True','2021-08-15 16:25:16','2021-06-03 05:01:57'),(86,5,2,58,400.00,2,'True','2021-05-23 09:23:29','2021-12-15 14:03:27'),(87,6,3,39,200.00,1,'True','2021-12-13 21:14:10','2022-03-20 23:16:41'),(88,7,1,31,2500.00,3,'True','2021-06-09 20:42:18','2021-04-05 01:33:47'),(89,8,2,32,500.00,1,'True','2021-08-27 05:43:28','2022-03-20 23:16:41'),(90,9,3,33,70.00,4,'True','2021-04-30 05:35:22','2022-03-20 23:16:41'),(109,4,1,31,2125.00,5,'True','2022-03-20 23:13:26','2022-03-20 23:16:41'),(110,5,2,35,1275.00,5,'True','2022-03-20 23:18:53','2022-03-20 23:36:22'),(111,5,2,35,1275.00,5,'True','2022-03-20 23:37:21','2022-03-20 23:50:43'),(112,7,3,40,1800.00,5,'True','2022-03-20 23:51:26','2022-03-20 23:53:32'),(113,4,1,31,2125.00,5,'False','2022-03-21 22:36:20','2022-03-21 22:36:20');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sale` AFTER UPDATE ON `orders` FOR EACH ROW begin
	insert ignore into sales (order_id, store_id, product_id, amount, total)
	select o.id, o.store_id, o.product_id,o.amount, o.total from orders o
	where o.order_confirmed  = 'True';
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) DEFAULT NULL,
  `size` int DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Фото товаров';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'photo1',5),(2,'photo2',5),(3,'photo3',5),(4,'photo4',5),(5,'photo5',5),(6,'photo6',5),(7,'photo7',5),(8,'photo8',5),(9,'photo9',5),(10,'photo10',5),(11,'photo11',5),(12,'photo12',5),(13,'photo13',5),(14,'photo14',5),(15,'photo15',5),(16,'photo16',5),(17,'photo17',5),(18,'photo18',5),(19,'photo19',5),(20,'photo20',5),(21,'photo21',5),(22,'photo22',5),(23,'photo23',5),(24,'photo24',5),(25,'photo25',5),(26,'photo26',5),(27,'photo27',5),(28,'photo28',5),(29,'photo29',5);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_5_rw`
--

DROP TABLE IF EXISTS `product_5_rw`;
/*!50001 DROP VIEW IF EXISTS `product_5_rw`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_5_rw` AS SELECT 
 1 AS `product`,
 1 AS `customer`,
 1 AS `review`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT 'Наименование',
  `description` text COMMENT 'Описание',
  `price` decimal(11,2) DEFAULT NULL COMMENT 'Цена',
  `catalog_id` bigint unsigned DEFAULT NULL,
  `manufacturer_id` bigint unsigned DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `photo_id` bigint unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `product_index` (`name`),
  KEY `catalog_id` (`catalog_id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`),
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Товарные позиции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (30,'President',NULL,5000.00,1,1,NULL,1,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(31,'Vice President',NULL,2500.00,1,1,NULL,2,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(32,'Putinka',NULL,500.00,1,2,NULL,3,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(33,'Navalninka',NULL,1000.00,1,2,NULL,4,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(34,'Blue Friend',NULL,70.00,1,3,NULL,5,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(35,'Asti',NULL,1500.00,2,4,NULL,6,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(36,'Abrau',NULL,800.00,2,5,NULL,7,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(37,'Sovetskoe',NULL,500.00,2,5,NULL,8,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(38,'Rossiyskoe',NULL,250.00,2,2,NULL,9,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(39,'Razlivnoe',NULL,200.00,2,3,NULL,10,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(40,'French bouquet',NULL,2000.00,3,6,NULL,11,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(41,'Spain bouquet',NULL,1500.00,3,7,NULL,12,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(42,'Italy bouquet',NULL,1700.00,3,8,NULL,13,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(43,'Russian bouquet',NULL,250.00,3,2,NULL,14,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(44,'Arbatskoe semi white semi red',NULL,70.00,3,3,NULL,15,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(45,'Chivas',NULL,1800.00,4,8,3.7,16,'2022-03-19 12:44:22','2022-03-21 00:06:51'),(46,'Jack Daniels',NULL,2100.00,4,9,2.7,17,'2022-03-19 12:44:22','2022-03-21 00:06:54'),(47,'Lenin',NULL,140.00,4,3,3.3,18,'2022-03-19 12:44:22','2022-03-21 00:07:15'),(48,'Spaten',NULL,120.00,5,10,NULL,19,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(49,'Kozel',NULL,110.00,5,11,NULL,20,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(50,'Baltika',NULL,60.00,5,12,NULL,21,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(51,'Tri starih tolstjaka',NULL,30.00,5,3,NULL,22,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(52,'Olmeca',NULL,1850.00,6,13,NULL,23,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(53,'Kaktus',NULL,800.00,6,14,NULL,24,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(54,'Sovetskaja iz podorozhnika',NULL,140.00,6,3,NULL,25,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(55,'Caesar',NULL,2500.00,7,14,NULL,26,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(56,'Kurvuazie',NULL,2150.00,7,15,NULL,27,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(57,'Armyanskii',NULL,850.00,7,16,NULL,28,'2022-03-19 12:44:22','2022-03-19 12:44:22'),(58,'Starina',NULL,400.00,7,3,NULL,29,'2022-03-19 12:44:22','2022-03-19 12:44:22');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_reviews`
--

DROP TABLE IF EXISTS `products_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `review` text COMMENT 'Отзыв',
  `rating` enum('1','2','3','4','5') DEFAULT NULL COMMENT 'Рейтинг',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `products_reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `products_reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Отзывы о товарах';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_reviews`
--

LOCK TABLES `products_reviews` WRITE;
/*!40000 ALTER TABLE `products_reviews` DISABLE KEYS */;
INSERT INTO `products_reviews` VALUES (1,1,31,'Не вкусно','1','2021-03-07 02:36:17'),(2,2,32,'Норм хрючево','3','2021-12-24 09:40:14'),(3,3,33,'Не вкусно','1','2021-05-12 12:11:56'),(4,4,34,'Норм хрючево','3','2021-02-01 11:48:00'),(5,5,35,'Таким пойлом только прыщи протиать','2','2021-04-01 07:21:32'),(6,6,36,'Норм хрючево','3','2021-06-27 04:19:48'),(7,7,37,'Норм хрючево','3','2021-02-09 19:00:13'),(8,8,38,'Таким пойлом только прыщи протиать','2','2021-06-07 00:44:23'),(9,9,39,'Таким пойлом только прыщи протиать','2','2021-05-23 03:35:53'),(20,1,50,'Не вкусно','1','2021-02-22 21:34:13'),(21,2,51,'Норм хрючево','3','2021-07-04 09:55:50'),(22,2,52,'Таким пойлом только прыщи протиать','2','2021-09-03 13:20:09'),(23,3,53,'Напиток богов','4','2021-03-06 22:24:28'),(24,4,54,'Таким пойлом только прыщи протиать','2','2021-03-27 09:28:51'),(25,5,55,'Напиток богов','5','2021-03-26 20:14:10'),(26,6,56,'Норм хрючево','3','2021-08-11 05:53:34'),(27,7,57,'Можно бахнуть','4','2021-03-11 17:19:14'),(28,8,58,'Таким пойлом только прыщи протиать','2','2021-03-14 00:02:16'),(29,9,33,'Напиток богов','5','2021-02-25 10:58:28'),(30,1,31,'Таким пойлом только прыщи протиать','2','2021-04-13 03:49:06'),(31,2,32,'Можно бахнуть','4','2021-02-28 08:27:48'),(32,3,34,'Не вкусно','1','2021-02-21 17:38:26'),(33,4,35,'Норм хрючево','3','2021-05-25 16:07:01'),(34,5,36,'Норм хрючево','3','2021-09-22 21:44:22'),(35,6,35,'Можно бахнуть','4','2021-06-29 19:43:06'),(36,7,34,'Напиток богов','5','2021-06-03 18:34:02'),(37,8,37,'Напиток богов','5','2021-06-22 19:44:41'),(38,9,38,'Не вкусно','1','2021-09-24 06:29:13'),(39,1,42,'Не вкусно','1','2021-09-18 10:31:37'),(40,1,43,'Можно бахнуть','4','2021-08-19 17:01:27'),(41,2,41,'Не вкусно','1','2021-09-23 07:43:22'),(42,3,44,'Таким пойлом только прыщи протиать','2','2021-01-17 02:29:29'),(43,4,54,'Можно бахнуть','4','2021-07-08 23:57:14'),(44,5,45,'Можно бахнуть','4','2021-12-20 20:19:29'),(45,6,53,'Норм хрючево','3','2021-01-06 22:04:50'),(46,7,46,'Таким пойлом только прыщи протиать','2','2021-07-25 03:48:56'),(47,8,47,'Норм хрючево','3','2021-08-25 14:17:00'),(48,9,48,'Норм хрючево','3','2021-09-28 10:55:17'),(49,2,49,'Напиток богов','5','2021-02-06 21:40:26'),(50,2,52,'Таким пойлом только прыщи протиать','2','2021-11-26 11:09:14'),(51,1,53,'Можно бахнуть','4','2021-11-26 11:09:14'),(52,3,51,'Напиток богов','5','2021-11-26 11:09:14'),(53,4,50,'Таким пойлом только прыщи протиать','2','2021-11-26 11:09:14'),(54,5,34,'Норм хрючево','3','2021-11-26 11:09:14'),(55,6,35,'Напиток богов','5','2021-11-26 11:09:14'),(56,7,36,'Можно бахнуть','4','2021-11-26 11:09:14'),(57,8,37,'Не вкусно','1','2021-11-26 11:09:14'),(58,9,38,'Норм хрючево','3','2021-11-26 11:09:14'),(59,4,39,'Напиток богов','5','2021-11-26 11:09:14'),(61,1,40,'Не вкусно','1','2021-01-08 08:06:54'),(62,2,42,'Напиток богов','5','2021-07-27 12:04:04'),(63,3,43,'Таким пойлом только прыщи протиать','2','2021-10-05 08:11:35'),(64,4,44,'Можно бахнуть','4','2021-03-26 13:46:30'),(65,5,45,'Можно бахнуть','4','2021-06-22 17:05:42'),(66,6,46,'Можно бахнуть','4','2021-10-27 02:53:18'),(67,7,47,'Можно бахнуть','4','2021-09-02 07:29:37'),(68,8,48,'Можно бахнуть','3','2021-07-29 05:32:43'),(69,9,49,'Можно бахнуть','4','2021-04-12 15:00:53'),(70,6,45,'Норм хрючево','3','2021-09-02 07:29:37'),(71,7,46,'Таким пойлом только прыщи протиать','2','2021-07-29 05:32:43'),(72,5,47,'Норм хрючево','3','2021-04-12 15:00:53');
/*!40000 ALTER TABLE `products_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_rating_checker_trigger` AFTER INSERT ON `products_reviews` FOR EACH ROW begin
	update products set rating = (select round(avg(rating), 1) from products_reviews pr where pr.product_id = new.product_id) where products.id = new.product_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `order_id` bigint unsigned NOT NULL,
  `store_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `amount` int unsigned NOT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  UNIQUE KEY `order_id` (`order_id`),
  KEY `store_id` (`store_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Продажи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,30,1,5000.00),(2,2,31,5,12500.00),(3,3,32,3,1500.00),(4,1,33,1,1000.00),(5,2,34,5,3500.00),(6,3,35,2,3000.00),(7,1,36,3,2400.00),(8,2,37,5,2500.00),(9,3,38,4,1000.00),(10,1,39,5,1000.00),(11,2,40,3,6000.00),(12,3,41,3,4500.00),(13,1,42,4,6800.00),(14,2,43,4,1000.00),(15,3,44,6,420.00),(16,1,45,1,1800.00),(17,2,46,2,4200.00),(18,3,47,1,140.00),(19,1,48,1,120.00),(20,2,49,1,110.00),(21,3,50,2,120.00),(22,1,51,2,60.00),(23,2,52,2,3700.00),(24,3,53,3,2400.00),(25,1,54,2,280.00),(26,2,55,2,5000.00),(27,3,56,2,4300.00),(28,1,57,3,2550.00),(29,2,58,2,800.00),(30,3,34,4,280.00),(31,1,33,2,2000.00),(32,2,37,2,1000.00),(33,3,38,3,750.00),(34,1,39,3,600.00),(35,2,44,5,350.00),(36,3,47,1,140.00),(37,1,50,5,300.00),(38,2,51,5,150.00),(39,3,53,2,1600.00),(40,1,54,3,420.00),(41,2,57,4,3400.00),(42,3,58,5,2000.00),(43,1,33,2,2000.00),(44,2,34,2,140.00),(45,3,31,1,2500.00),(46,1,37,5,2500.00),(47,2,39,5,1000.00),(48,3,44,3,210.00),(49,1,47,1,140.00),(50,2,50,4,240.00),(51,3,51,1,30.00),(52,1,58,5,2000.00),(53,2,57,1,850.00),(54,3,49,4,440.00),(55,1,47,1,140.00),(56,2,53,2,1600.00),(57,3,57,2,1700.00),(58,1,31,1,2500.00),(59,2,31,1,2500.00),(60,3,32,5,2500.00),(61,1,33,2,2000.00),(62,2,34,4,280.00),(63,3,36,2,1600.00),(64,1,36,1,800.00),(65,2,47,4,560.00),(66,3,38,1,250.00),(67,1,46,2,4200.00),(68,2,40,3,6000.00),(69,3,41,2,3000.00),(70,1,42,5,8500.00),(71,2,43,6,1500.00),(72,3,44,3,210.00),(73,1,45,1,1800.00),(74,2,46,2,4200.00),(75,3,47,2,280.00),(76,1,48,4,480.00),(77,2,49,3,330.00),(78,3,50,1,60.00),(79,1,51,4,120.00),(80,2,52,1,1850.00),(81,3,53,3,2400.00),(82,1,54,2,280.00),(83,2,54,2,280.00),(84,3,54,5,700.00),(85,1,54,4,560.00),(86,2,58,2,800.00),(87,3,39,1,200.00),(88,1,31,3,7500.00),(89,2,32,1,500.00),(90,3,33,4,280.00),(109,1,31,5,10625.00),(110,2,35,5,6375.00),(111,2,35,5,6375.00),(112,3,40,5,9000.00);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `store_2_rw`
--

DROP TABLE IF EXISTS `store_2_rw`;
/*!50001 DROP VIEW IF EXISTS `store_2_rw`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `store_2_rw` AS SELECT 
 1 AS `adress`,
 1 AS `name`,
 1 AS `review`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `store_reviews`
--

DROP TABLE IF EXISTS `store_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `store_id` bigint unsigned NOT NULL,
  `review` text COMMENT 'Отзыв',
  `rating` enum('1','2','3','4','5') DEFAULT NULL COMMENT 'Рейтинг',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `store_reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `store_reviews_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='отзывы о магазинах';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_reviews`
--

LOCK TABLES `store_reviews` WRITE;
/*!40000 ALTER TABLE `store_reviews` DISABLE KEYS */;
INSERT INTO `store_reviews` VALUES (1,1,1,'Продавщица хамло','1','2021-09-12 22:41:45'),(2,2,2,'Нет дегустационного зала','3','2021-06-04 16:06:47'),(3,3,3,'Обсчитали. Но я все равно украл больше','2','2022-01-20 14:51:11'),(4,4,1,'Торгуют паленкой. Вчера отравился. Завтра приду еще возьму','4','2021-05-05 16:57:02'),(5,5,2,'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую','5','2021-12-02 13:53:42'),(6,6,3,'Нет дегустационного зала','3','2021-05-30 09:24:30'),(7,7,1,'Обсчитали. Но я все равно украл больше','2','2021-08-14 05:10:01'),(8,8,2,'Обсчитали. Но я все равно украл больше','2','2021-06-24 11:55:13'),(9,9,3,'Нет дегустационного зала','3','2022-01-26 02:53:12'),(10,1,2,'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую','5','2021-03-31 02:21:52'),(11,2,1,'Нет дегустационного зала','3','2021-03-02 04:49:54'),(12,3,3,'Обсчитали. Но я все равно украл больше','2','2021-08-27 18:01:13'),(13,4,1,'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую','5','2021-08-27 18:01:13'),(14,5,2,'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую','5','2021-08-17 20:44:43'),(15,6,3,'Продавщица хамло','1','2021-10-05 01:41:46'),(16,7,1,'Торгуют паленкой. Вчера отравился. Завтра приду еще возьму','4','2022-01-28 15:48:59'),(17,8,3,'Обсчитали. Но я все равно украл больше','2','2021-08-31 05:15:34'),(18,9,2,'Продавщица хамло','1','2022-02-07 10:47:19'),(19,1,1,'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую','5','2021-10-17 14:36:02'),(20,2,3,'Да что же у вас нигде нет дегустационного зала то','3','2021-02-24 15:30:58'),(21,3,3,'Обсчитали. Но я все равно украл больше','2','2021-09-22 09:37:36'),(22,4,1,'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую','5','2021-08-23 14:53:44'),(23,5,2,'Торгуют паленкой. Вчера отравился. Завтра приду еще возьму','4','2021-04-06 11:31:27'),(24,6,3,'Нет дегустационного зала','3','2022-01-02 07:56:24'),(25,7,1,'Торгуют паленкой. Вчера отравился. Завтра приду еще возьму','4','2022-01-11 07:33:09'),(26,8,2,'Не магазин а просто праздник какой то. Всю зарплату туда отношу. Всем советую','5','2021-08-11 19:49:03'),(27,9,3,'Продавщица хамло','1','2021-09-09 09:39:26'),(28,3,1,'Отличное место для всей семьи','4','2021-09-12 22:41:45'),(29,4,2,'Отличное место для всей семьи','4','2021-06-04 16:06:47'),(30,5,3,'Отличное место для всей семьи','4','2022-01-20 14:51:11');
/*!40000 ALTER TABLE `store_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `store_rating_checker_trigger` AFTER INSERT ON `store_reviews` FOR EACH ROW begin
	update stores set rating = (select round(avg(rating), 1) from store_reviews sr where sr.store_id = new.store_id) where stores.id = new.store_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `storehouses`
--

DROP TABLE IF EXISTS `storehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned DEFAULT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `amount` int unsigned DEFAULT NULL COMMENT 'Запас товарной позиции на складе',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `store_id` (`store_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `storehouses_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `storehouses_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Запасы на складе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses`
--

LOCK TABLES `storehouses` WRITE;
/*!40000 ALTER TABLE `storehouses` DISABLE KEYS */;
INSERT INTO `storehouses` VALUES (1,1,30,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(2,1,31,15,'2022-03-19 12:44:36','2022-03-21 22:36:20'),(3,1,32,5,'2022-03-19 12:44:36','2022-03-20 22:46:45'),(4,1,33,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(5,1,34,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(6,1,35,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(7,1,36,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(8,1,37,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(9,1,38,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(10,1,39,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(11,1,40,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(12,1,41,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(13,1,42,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(14,1,43,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(15,1,44,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(16,1,45,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(17,1,46,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(18,1,47,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(19,1,48,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(20,1,49,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(21,1,50,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(22,1,51,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(23,1,52,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(24,1,53,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(25,1,54,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(26,1,55,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(27,1,56,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(28,1,57,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(29,1,58,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(30,2,30,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(31,2,31,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(32,2,32,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(33,2,33,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(34,2,34,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(35,2,35,40,'2022-03-19 12:44:36','2022-03-20 23:37:21'),(36,2,36,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(37,2,37,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(38,2,38,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(39,2,39,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(40,2,40,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(41,2,41,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(42,2,42,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(43,2,43,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(44,2,44,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(45,2,45,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(46,2,46,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(47,2,47,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(48,2,48,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(49,2,49,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(50,2,50,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(51,2,51,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(52,2,52,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(53,2,53,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(54,2,54,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(55,2,55,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(56,2,56,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(57,2,57,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(58,2,58,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(59,3,30,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(60,3,31,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(61,3,32,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(62,3,33,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(63,3,34,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(64,3,35,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(65,3,36,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(66,3,37,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(67,3,38,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(68,3,39,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(69,3,40,45,'2022-03-19 12:44:36','2022-03-20 23:51:26'),(70,3,41,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(71,3,42,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(72,3,43,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(73,3,44,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(74,3,45,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(75,3,46,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(76,3,47,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(77,3,48,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(78,3,49,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(79,3,50,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(80,3,51,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(81,3,52,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(82,3,53,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(83,3,54,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(84,3,55,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(85,3,56,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(86,3,57,50,'2022-03-19 12:44:36','2022-03-19 12:44:36'),(87,3,58,50,'2022-03-19 12:44:36','2022-03-19 12:44:36');
/*!40000 ALTER TABLE `storehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `adress` varchar(100) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Магазины';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Victory st./1',3.7),(2,'Sezam st./2',3.8),(3,'Baker st./3',2.4);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top_3`
--

DROP TABLE IF EXISTS `top_3`;
/*!50001 DROP VIEW IF EXISTS `top_3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_3` AS SELECT 
 1 AS `customer_id`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'alcomarket'
--
/*!50003 DROP PROCEDURE IF EXISTS `favorite_beverage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `favorite_beverage`(in alkash int)
begin
	select c.name as customer, p.name as product, o.amount as total
	from orders o join customers c on o.customer_id = c.id 
	join products p on o.product_id = p.id
	where customer_id = alkash
	order by customer, total desc
	limit 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `make_an_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `make_an_order`(customer bigint, store bigint, product bigint, order_amount int, out res text)
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
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `store_total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `store_total`(store int)
begin
	select stores.adress, sum(sales.total)
	from stores
	join sales
	on stores.id = sales.store_id
	where store_id = store
	group by stores.adress;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `product_5_rw`
--

/*!50001 DROP VIEW IF EXISTS `product_5_rw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_5_rw` AS select `p`.`name` AS `product`,`c`.`name` AS `customer`,`pr`.`review` AS `review`,`pr`.`rating` AS `rating` from ((`products_reviews` `pr` join `products` `p` on((`pr`.`product_id` = `p`.`id`))) join `customers` `c` on((`pr`.`customer_id` = `c`.`id`))) where (`pr`.`product_id` = 50) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `store_2_rw`
--

/*!50001 DROP VIEW IF EXISTS `store_2_rw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `store_2_rw` AS select `st`.`adress` AS `adress`,`c`.`name` AS `name`,`sr`.`review` AS `review`,`sr`.`rating` AS `rating` from ((`store_reviews` `sr` join `stores` `st` on((`sr`.`store_id` = `st`.`id`))) join `customers` `c` on((`sr`.`customer_id` = `c`.`id`))) where (`sr`.`store_id` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_3`
--

/*!50001 DROP VIEW IF EXISTS `top_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_3` AS select `o`.`customer_id` AS `customer_id`,sum(`o`.`total`) AS `total` from (`orders` `o` join `products` `p` on((`o`.`product_id` = `p`.`id`))) where (`o`.`order_confirmed` = 'True') group by `o`.`customer_id` order by `total` desc limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-21 22:57:14
