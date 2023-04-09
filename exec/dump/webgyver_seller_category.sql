-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: database-1.ci2hp2jo8ok0.ap-northeast-2.rds.amazonaws.com    Database: webgyver
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `seller_category`
--

DROP TABLE IF EXISTS `seller_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_category` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `category_idx` bigint NOT NULL,
  `seller_idx` bigint NOT NULL,
  PRIMARY KEY (`idx`),
  KEY `FKpb6f9qivb31fqby8b6bawui81` (`category_idx`),
  KEY `FKdxdnb22yuen4d87r8not8d2fg` (`seller_idx`),
  CONSTRAINT `FKdxdnb22yuen4d87r8not8d2fg` FOREIGN KEY (`seller_idx`) REFERENCES `seller` (`idx`),
  CONSTRAINT `FKpb6f9qivb31fqby8b6bawui81` FOREIGN KEY (`category_idx`) REFERENCES `category` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_category`
--

LOCK TABLES `seller_category` WRITE;
/*!40000 ALTER TABLE `seller_category` DISABLE KEYS */;
INSERT INTO `seller_category` VALUES (62,'2023-02-14 16:47:46.485000','2023-02-14 16:47:46.485000',3000,1,1),(63,'2023-02-14 16:47:46.487000','2023-02-14 16:47:46.487000',3000,2,1),(64,'2023-02-14 16:47:46.489000','2023-02-14 16:47:46.489000',5000,3,1),(65,'2023-02-14 16:47:46.491000','2023-02-14 16:47:46.491000',4000,4,1),(66,'2023-02-14 16:47:46.493000','2023-02-14 16:47:46.493000',5500,5,1),(67,'2023-02-14 17:08:43.033000','2023-02-14 17:08:43.033000',1000,1,4),(68,'2023-02-14 17:08:43.054000','2023-02-14 17:08:43.054000',2000,2,4),(69,'2023-02-14 17:08:43.057000','2023-02-14 17:08:43.057000',2500,3,4),(70,'2023-02-14 17:08:43.060000','2023-02-14 17:08:43.060000',2000,4,4),(71,'2023-02-14 17:08:43.063000','2023-02-14 17:08:43.063000',1500,5,4),(72,'2023-02-14 17:08:43.066000','2023-02-14 17:08:43.066000',1000,6,4),(73,'2023-02-14 17:08:43.069000','2023-02-14 17:08:43.069000',2000,7,4),(74,'2023-02-14 17:08:43.071000','2023-02-14 17:08:43.071000',1500,8,4),(75,'2023-02-14 17:08:43.075000','2023-02-14 17:08:43.075000',1700,9,4),(112,'2023-02-14 23:26:23.965000','2023-02-14 23:26:23.965000',3000,1,6),(113,'2023-02-14 23:26:23.968000','2023-02-14 23:26:23.968000',3000,2,6),(114,'2023-02-14 23:26:23.971000','2023-02-14 23:26:23.971000',4000,3,6),(115,'2023-02-14 23:26:23.973000','2023-02-14 23:26:23.973000',5000,4,6),(116,'2023-02-14 23:26:23.975000','2023-02-14 23:26:23.975000',5000,5,6),(117,'2023-02-14 23:26:23.978000','2023-02-14 23:26:23.978000',7000,6,6),(118,'2023-02-14 23:26:23.980000','2023-02-14 23:26:23.980000',3000,7,6),(119,'2023-02-14 23:26:23.982000','2023-02-14 23:26:23.982000',5000,8,6),(120,'2023-02-14 23:26:23.984000','2023-02-14 23:26:23.984000',10000,9,6),(139,'2023-02-15 08:45:17.647000','2023-02-15 08:45:17.647000',2000,1,2),(140,'2023-02-15 08:45:17.651000','2023-02-15 08:45:17.651000',2000,2,2),(141,'2023-02-15 08:45:17.653000','2023-02-15 08:45:17.653000',2000,3,2),(142,'2023-02-15 08:45:17.655000','2023-02-15 08:45:17.655000',2000,4,2),(143,'2023-02-15 08:45:17.657000','2023-02-15 08:45:17.657000',2000,5,2),(144,'2023-02-15 08:45:17.660000','2023-02-15 08:45:17.660000',2000,6,2),(145,'2023-02-15 08:45:17.662000','2023-02-15 08:45:17.662000',2000,7,2),(146,'2023-02-15 08:45:17.664000','2023-02-15 08:45:17.664000',2000,8,2),(147,'2023-02-15 08:45:17.666000','2023-02-15 08:45:17.666000',2000,9,2),(193,'2023-02-15 10:24:25.916000','2023-02-15 10:24:25.916000',3000,1,11),(194,'2023-02-15 10:24:25.916000','2023-02-15 10:24:25.916000',3000,2,11),(195,'2023-02-15 10:24:25.916000','2023-02-15 10:24:25.916000',3000,3,11),(196,'2023-02-15 10:24:25.916000','2023-02-15 10:24:25.916000',3000,4,11),(197,'2023-02-15 10:24:25.916000','2023-02-15 10:24:25.916000',3000,5,11),(198,'2023-02-15 10:24:25.916000','2023-02-15 10:24:25.916000',3000,6,11),(199,'2023-02-15 10:24:25.916000','2023-02-15 10:24:25.916000',3000,7,11),(200,'2023-02-15 10:24:25.916000','2023-02-15 10:24:25.916000',3000,8,11),(201,'2023-02-15 10:24:25.916000','2023-02-15 10:24:25.916000',3000,9,11),(211,'2023-02-15 22:10:39.026000','2023-02-15 22:10:39.026000',3000,1,12),(221,'2023-02-15 22:22:06.723000','2023-02-15 22:22:06.723000',1000,1,5),(222,'2023-02-15 22:22:06.725000','2023-02-15 22:22:06.725000',1000,2,5),(223,'2023-02-15 22:22:06.728000','2023-02-15 22:22:06.728000',1000,3,5),(224,'2023-02-15 22:22:06.730000','2023-02-15 22:22:06.730000',1000,4,5),(225,'2023-02-15 22:22:06.732000','2023-02-15 22:22:06.732000',1000,5,5),(226,'2023-02-15 22:22:06.734000','2023-02-15 22:22:06.734000',1000,6,5),(227,'2023-02-15 22:22:06.737000','2023-02-15 22:22:06.737000',1000,7,5),(228,'2023-02-15 22:22:06.739000','2023-02-15 22:22:06.739000',1000,8,5),(229,'2023-02-15 22:22:06.741000','2023-02-15 22:22:06.741000',1000,9,5),(230,'2023-02-16 09:47:57.439000','2023-02-16 09:47:57.439000',2000,1,3),(231,'2023-02-16 09:47:57.443000','2023-02-16 09:47:57.443000',3000,2,3),(232,'2023-02-16 09:47:57.445000','2023-02-16 09:47:57.445000',2000,3,3),(233,'2023-02-16 09:47:57.447000','2023-02-16 09:47:57.447000',4000,4,3),(234,'2023-02-16 09:47:57.449000','2023-02-16 09:47:57.449000',2000,5,3),(235,'2023-02-16 09:47:57.451000','2023-02-16 09:47:57.451000',5500,6,3),(236,'2023-02-16 19:06:02.591000','2023-02-16 19:06:02.591000',5000,9,10),(237,'2023-02-16 19:06:02.598000','2023-02-16 19:06:02.598000',5000,4,10),(244,'2023-02-16 19:14:56.328000','2023-02-16 19:14:56.328000',1000,1,13),(245,'2023-02-16 19:14:56.330000','2023-02-16 19:14:56.330000',1000,2,13),(246,'2023-02-16 19:14:56.333000','2023-02-16 19:14:56.333000',1000,3,13),(247,'2023-02-16 19:14:56.336000','2023-02-16 19:14:56.336000',1000,6,13),(248,'2023-02-16 19:14:56.339000','2023-02-16 19:14:56.339000',1000,7,13),(249,'2023-02-16 19:14:56.341000','2023-02-16 19:14:56.341000',1000,8,13),(255,'2023-02-16 19:18:05.961000','2023-02-16 19:18:05.961000',3000,1,14),(256,'2023-02-16 19:18:05.964000','2023-02-16 19:18:05.964000',3000,2,14),(257,'2023-02-16 19:18:05.966000','2023-02-16 19:18:05.966000',3000,6,14),(258,'2023-02-16 19:18:05.968000','2023-02-16 19:18:05.968000',3000,7,14),(259,'2023-02-16 19:18:05.970000','2023-02-16 19:18:05.970000',3000,8,14),(273,'2023-02-16 20:12:50.188000','2023-02-16 20:12:50.188000',2000,1,9),(274,'2023-02-16 20:12:50.190000','2023-02-16 20:12:50.190000',2000,2,9),(275,'2023-02-16 20:12:50.193000','2023-02-16 20:12:50.193000',0,6,9),(279,'2023-02-16 20:13:54.131000','2023-02-16 20:13:54.131000',1500,2,8),(280,'2023-02-16 20:13:54.134000','2023-02-16 20:13:54.134000',0,7,8),(281,'2023-02-16 20:13:54.136000','2023-02-16 20:13:54.136000',0,8,8),(282,'2023-02-16 20:14:26.266000','2023-02-16 20:14:26.266000',3000,3,7),(283,'2023-02-16 20:14:26.268000','2023-02-16 20:14:26.268000',3000,9,7),(284,'2023-02-16 20:14:26.270000','2023-02-16 20:14:26.270000',3000,4,7),(285,'2023-02-16 22:05:41.817000','2023-02-16 22:05:41.817000',3000,9,15),(286,'2023-02-16 22:05:41.817000','2023-02-16 22:05:41.817000',3000,4,15),(287,'2023-02-16 22:09:23.581000','2023-02-16 22:09:23.581000',2000,7,16),(288,'2023-02-16 22:09:23.581000','2023-02-16 22:09:23.581000',3000,8,16),(289,'2023-02-16 22:09:23.581000','2023-02-16 22:09:23.581000',1990,3,16);
/*!40000 ALTER TABLE `seller_category` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17  1:25:15
