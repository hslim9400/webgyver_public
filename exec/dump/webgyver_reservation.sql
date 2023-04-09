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
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `c_detail_address` varchar(255) DEFAULT NULL,
  `r_price` int DEFAULT NULL,
  `r_state` varchar(255) DEFAULT NULL,
  `r_time` datetime(6) DEFAULT NULL,
  `r_type` varchar(255) DEFAULT NULL,
  `r_category_idx` bigint DEFAULT NULL,
  `c_idx` bigint DEFAULT NULL,
  `s_idx` bigint DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `FKtieg9do758ls2rqmuwrwwod8i` (`r_category_idx`),
  KEY `FKl95udkx456h2l98gt90e51fiv` (`c_idx`),
  KEY `FKr0vm22a9on56mo20wkudiubiu` (`s_idx`),
  CONSTRAINT `FKl95udkx456h2l98gt90e51fiv` FOREIGN KEY (`c_idx`) REFERENCES `customer` (`idx`),
  CONSTRAINT `FKr0vm22a9on56mo20wkudiubiu` FOREIGN KEY (`s_idx`) REFERENCES `seller` (`idx`),
  CONSTRAINT `FKtieg9do758ls2rqmuwrwwod8i` FOREIGN KEY (`r_category_idx`) REFERENCES `category` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2023-02-14 16:21:40.992000','2023-02-14 16:21:40.992000','대전 유성구 덕명동 124','B102호',3000,'2','2023-02-17 09:30:00.000000','2',1,2,1),(2,'2023-02-14 16:40:02.731000','2023-02-14 16:40:02.731000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-14 16:40:02.731000','2',2,2,1),(3,'2023-02-14 16:47:45.724000','2023-02-14 16:47:45.724000','대전 유성구 덕명동 124','B102호',111,'3','2023-02-14 16:47:45.724000','1',1,4,6),(4,'2023-02-14 16:50:33.832000','2023-02-14 16:50:33.832000','대전 유성구 덕명동 124','B102호',12312,'3','2023-02-14 16:50:33.832000','1',1,4,6),(5,'2023-02-14 17:00:42.674000','2023-02-14 17:00:42.674000','대전 유성구 덕명동 124','B102호',3000,'2','2023-02-17 10:15:00.000000','2',1,2,1),(6,'2023-02-14 17:09:47.350000','2023-02-14 17:09:47.350000','대전 유성구 덕명동 124','B102호',5000,'3','2023-02-14 17:09:47.350000','2',1,2,3),(7,'2023-02-14 20:49:27.460000','2023-02-14 20:49:27.460000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-14 20:49:27.461000','1',1,4,6),(8,'2023-02-14 20:56:23.174000','2023-02-14 20:56:23.174000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-14 20:56:23.174000','1',2,4,6),(9,'2023-02-14 21:06:54.351000','2023-02-14 21:06:54.351000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-14 21:06:54.351000','2',1,4,6),(10,'2023-02-14 21:33:28.035000','2023-02-14 21:33:28.035000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-14 21:33:28.036000','1',1,3,2),(11,'2023-02-14 21:45:45.848000','2023-02-14 21:45:45.848000','대전 유성구 덕명동 124','B102호',2500,'3','2023-02-14 21:45:45.848000','1',2,4,6),(12,'2023-02-14 21:51:01.828000','2023-02-14 21:51:01.828000','대전 유성구 덕명동 124','B102호',1000,'5','2023-02-14 21:51:01.828000','1',1,2,1),(13,'2023-02-14 22:37:41.331000','2023-02-14 22:37:41.331000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-14 22:37:41.331000','1',1,3,2),(14,'2023-02-14 22:39:10.204000','2023-02-14 22:39:10.204000','서울 동대문구 서울시립대로 5','B102호',1000,'2','2023-02-17 17:00:00.000000','2',2,5,5),(15,'2023-02-14 22:46:12.270000','2023-02-14 22:46:12.270000','서울 동대문구 서울시립대로 5','B102호',2000,'3','2023-02-14 22:46:12.270000','1',2,5,5),(16,'2023-02-14 23:10:55.752000','2023-02-14 23:10:55.752000','서울 동대문구 서울시립대로 5','B102호',1000,'3','2023-02-14 23:10:55.752000','1',9,6,5),(17,'2023-02-14 23:18:20.573000','2023-02-14 23:18:20.573000','대전 유성구 가정로 8','B102호',23123,'3','2023-02-14 23:18:20.573000','1',2,4,6),(18,'2023-02-14 23:29:37.995000','2023-02-14 23:29:37.995000','대전 유성구 덕명동 124','B102호',2000,'3','2023-02-14 23:29:37.996000','1',2,3,2),(19,'2023-02-14 23:46:03.824000','2023-02-14 23:46:03.824000','대전 유성구 죽동로 321','110동 1101호',0,'5','2023-02-14 23:46:03.824000','1',1,6,5),(20,'2023-02-14 23:53:47.325000','2023-02-14 23:53:47.325000','대전 유성구 덕명동 124','B102호',1000,'5','2023-02-14 23:53:47.325000','1',1,5,5),(21,'2023-02-15 00:57:14.541000','2023-02-15 00:57:14.541000','대전 유성구 죽동로 321','110동 1101호',2000,'2','2023-02-17 11:00:00.000000','2',4,5,2),(22,'2023-02-15 00:57:41.266000','2023-02-15 00:57:41.266000','대전 유성구 죽동로 321','110동 1101호',2000,'3','2023-02-15 00:57:41.266000','1',4,5,5),(23,'2023-02-15 00:59:10.143000','2023-02-15 00:59:10.143000','대전 유성구 덕명동 124','B102호',2000,'3','2023-02-15 00:59:10.143000','1',2,3,2),(24,'2023-02-15 01:03:27.560000','2023-02-15 01:03:27.560000','대전 유성구 죽동로 321','110동 1101호',0,'3','2023-02-15 01:03:27.560000','1',4,5,5),(25,'2023-02-15 01:16:34.473000','2023-02-15 01:16:34.473000','대전 유성구 죽동로 321','110동 1101호',1000,'3','2023-02-15 15:30:00.000000','2',9,5,5),(26,'2023-02-15 01:21:24.045000','2023-02-15 01:21:24.045000','대전 유성구 죽동로 321','110동 1101호',0,'3','2023-02-15 01:21:24.045000','1',4,5,2),(27,'2023-02-15 01:21:24.044000','2023-02-15 01:21:24.044000','대전 유성구 죽동로 321','110동 1101호',0,'3','2023-02-15 01:21:24.045000','1',4,5,5),(28,'2023-02-15 09:01:59.155000','2023-02-15 09:01:59.155000','대전 유성구 덕명동 124','B102호',3000,'3','2023-02-15 09:01:59.156000','1',2,4,6),(29,'2023-02-15 09:21:01.837000','2023-02-15 09:21:01.837000','대전 유성구 구즉로 16','301동 1405호',3000,'3','2023-02-17 10:00:00.000000','2',1,2,1),(30,'2023-02-15 09:59:15.386000','2023-02-15 09:59:15.386000','대전 유성구 덕명동 124','B102호',3000,'3','2023-02-15 09:59:15.387000','1',1,1,2),(31,'2023-02-15 10:04:25.825000','2023-02-15 10:04:25.825000','대전 유성구 덕명동 124','B102호',2000,'3','2023-02-15 10:04:25.825000','1',2,1,4),(32,'2023-02-15 10:08:52.666000','2023-02-15 10:08:52.666000','대전 서구 청사로 253','111동 1401호',3000,'3','2023-02-02 10:00:00.000000','2',1,2,1),(33,'2023-02-15 10:13:02.967000','2023-02-15 10:13:02.967000','대전 유성구 덕명동 124','B102호',2000,'5','2023-02-15 10:13:02.968000','1',1,1,1),(34,'2023-02-15 10:23:28.593000','2023-02-15 10:23:28.593000','대전 유성구 덕명동 124','B102호',1000,'5','2023-02-15 10:23:28.593000','1',2,2,1),(35,'2023-02-15 10:27:16.649000','2023-02-15 10:27:16.649000','대전 유성구 덕명동 124','B102호',500,'3','2023-02-15 10:27:16.649000','1',1,4,6),(36,'2023-02-15 10:29:11.176000','2023-02-15 10:29:11.176000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-15 10:29:11.177000','1',1,7,2),(37,'2023-02-15 10:30:49.727000','2023-02-15 10:30:49.727000','대전 유성구 덕명동 124','B102호',1500,'3','2023-02-15 10:30:49.727000','1',1,1,2),(38,'2023-02-15 10:32:21.304000','2023-02-15 10:32:21.304000','부산 금정구 중앙대로 1614','1911호',0,'3','2023-02-15 10:32:21.304000','1',4,6,2),(39,'2023-02-15 10:33:48.648000','2023-02-15 10:33:48.648000','대전 유성구 덕명동 124','B102호',2500,'3','2023-02-15 10:33:48.648000','1',1,1,2),(40,'2023-02-15 10:41:26.155000','2023-02-15 10:41:26.155000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-15 10:41:26.155000','1',2,7,8),(41,'2023-02-15 10:51:17.505000','2023-02-15 10:51:17.505000','대전 유성구 덕명동 124','B102호',2000,'3','2023-02-15 10:51:17.505000','1',1,4,6),(42,'2023-02-15 10:55:27.416000','2023-02-15 10:55:27.416000','대전 유성구 덕명동 124','B102호',2000,'3','2023-02-15 10:55:27.417000','1',1,4,6),(43,'2023-02-15 11:00:22.019000','2023-02-15 11:00:22.019000','대전 유성구 덕명동 124','B102호',2000,'5','2023-02-15 11:00:22.019000','1',1,7,9),(44,'2023-02-15 11:03:02.109000','2023-02-15 11:03:02.109000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-15 11:03:02.109000','1',2,4,6),(45,'2023-02-15 11:12:40.592000','2023-02-15 11:12:40.592000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-15 11:30:00.000000','2',1,4,5),(46,'2023-02-15 11:14:36.215000','2023-02-15 11:14:36.215000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-15 12:00:00.000000','2',1,4,5),(47,'2023-02-15 11:58:28.666000','2023-02-15 11:58:28.666000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-15 12:00:00.000000','2',1,1,4),(48,'2023-02-15 12:03:47.060000','2023-02-15 12:03:47.060000','대전 유성구 궁동로 5','102동',2000,'5','2023-02-15 12:03:47.060000','1',2,7,9),(49,'2023-02-15 12:19:51.524000','2023-02-15 12:19:51.524000','대전 유성구 궁동로 5','102동',2000,'5','2023-02-15 12:19:51.525000','1',2,7,2),(50,'2023-02-15 12:26:00.092000','2023-02-15 12:26:00.092000','대전 유성구 덕명동 124','B102호',2000,'5','2023-02-16 11:00:00.000000','3',1,1,2),(51,'2023-02-15 12:26:56.373000','2023-02-15 12:26:56.373000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-15 12:30:00.000000','2',1,4,4),(52,'2023-02-15 12:28:53.545000','2023-02-15 12:28:53.545000','대전 유성구 덕명동 124','B102호',100,'5','2023-02-15 12:28:53.546000','1',4,2,2),(53,'2023-02-15 12:30:17.137000','2023-02-15 12:30:17.137000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-15 13:15:00.000000','2',1,4,4),(54,'2023-02-15 12:30:47.018000','2023-02-15 12:30:47.018000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-15 13:00:00.000000','2',1,1,4),(55,'2023-02-15 12:36:20.061000','2023-02-15 12:36:20.061000','대전 유성구 덕명동 124','B102호',3000,'3','2023-02-15 12:45:00.000000','2',1,4,6),(56,'2023-02-15 12:39:36.521000','2023-02-15 12:39:36.521000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-15 12:39:36.522000','1',3,4,6),(57,'2023-02-15 12:39:57.735000','2023-02-15 12:39:57.735000','대전 서구 청사로 253','111동 1401호',3000,'3','2023-02-02 10:00:00.000000','2',1,2,1),(58,'2023-02-15 12:40:26.086000','2023-02-15 12:40:26.086000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-15 12:40:26.086000','1',2,4,6),(59,'2023-02-15 12:56:43.519000','2023-02-15 12:56:43.519000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-15 12:56:43.519000','1',1,4,6),(60,'2023-02-15 13:31:42.067000','2023-02-15 13:31:42.068000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-15 15:00:00.000000','2',1,3,4),(61,'2023-02-15 14:03:45.111000','2023-02-15 14:03:45.111000','대전 유성구 덕명동 124','B102호',1000,'5','2023-02-15 14:03:45.112000','1',1,3,4),(62,'2023-02-15 16:47:20.919000','2023-02-15 16:47:20.919000','대전 유성구 덕명동 124','B102호',2000,'3','2023-02-15 17:45:00.000000','2',2,5,4),(63,'2023-02-15 17:14:44.792000','2023-02-15 17:14:44.792000','대전 유성구 가정로 168','102호',2000,'3','2023-02-15 18:00:00.000000','2',2,5,4),(64,'2023-02-15 17:21:36.845000','2023-02-15 17:21:36.845000','대전 유성구 덕명동 124','B102호',1000,'5','2023-02-15 17:21:36.846000','1',2,5,2),(65,'2023-02-15 17:23:20.673000','2023-02-15 17:23:20.673000','대전 유성구 가정로 168','102호',3000,'5','2023-02-15 17:23:20.673000','1',2,5,2),(66,'2023-02-15 17:23:50.843000','2023-02-15 17:23:50.843000','대전 서구 청사로 253','111동 1401호',1230,'5','2023-02-15 17:23:50.843000','1',1,2,2),(67,'2023-02-15 17:27:36.810000','2023-02-15 17:27:36.810000','대전 서구 청사로 253','111동 1401호',2500,'5','2023-02-16 11:00:00.000000','3',2,2,2),(68,'2023-02-15 20:45:13.295000','2023-02-15 20:45:13.295000','대전 유성구 덕명동 124','B102호',2000,'5','2023-02-15 20:45:13.295000','1',1,3,2),(69,'2023-02-15 21:38:21.126000','2023-02-15 21:38:21.126000','대전 유성구 가정로 168','102호',3000,'5','2023-02-15 21:38:21.126000','1',3,5,5),(70,'2023-02-15 21:40:44.700000','2023-02-15 21:40:44.700000','대전 유성구 가정로 168','102호',0,'5','2023-02-15 21:40:44.700000','1',2,5,5),(71,'2023-02-16 00:21:08.700000','2023-02-16 00:21:08.700000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-16 09:15:00.000000','2',1,1,4),(72,'2023-02-16 09:17:29.604000','2023-02-16 09:17:29.604000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-16 14:00:00.000000','2',1,5,5),(73,'2023-02-16 09:20:20.939000','2023-02-16 09:20:20.939000','대전 유성구 죽동로 321','111동 1011호',1000,'3','2023-02-16 17:30:00.000000','2',4,6,5),(74,'2023-02-16 09:22:42.444000','2023-02-16 09:22:42.444000','대전 유성구 가정로 8','1층',1000,'3','2023-02-16 11:30:00.000000','2',4,6,5),(75,'2023-02-16 09:24:49.626000','2023-02-16 09:24:49.626000','서울 강남구 올림픽대로 2847','3층 301호',1000,'3','2023-02-16 09:30:00.000000','2',6,8,5),(76,'2023-02-16 09:31:23.749000','2023-02-16 09:31:23.749000','서울 강남구 올림픽대로 2847','3층 301호',1000,'3','2023-02-16 11:15:00.000000','2',4,3,5),(77,'2023-02-16 09:48:29.054000','2023-02-16 09:48:29.054000','서울 강남구 올림픽대로 2847','3층 301호',1000,'3','2023-02-16 10:00:00.000000','2',5,3,5),(78,'2023-02-16 09:56:59.850000','2023-02-16 09:56:59.850000','서울 강남구 올림픽대로 2847','3층 301호',0,'5','2023-02-16 09:56:59.851000','1',1,3,2),(79,'2023-02-16 10:00:12.480000','2023-02-16 10:00:12.480000','서울 강남구 올림픽대로 2847','3층 301호',1000,'3','2023-02-16 12:00:00.000000','2',2,5,5),(80,'2023-02-16 10:04:05.030000','2023-02-16 10:04:05.030000','대전 서구 청사로 253','111동 1401호',1500,'5','2023-02-16 10:04:05.030000','1',1,2,2),(81,'2023-02-16 10:21:35.963000','2023-02-16 10:21:35.963000','대전 유성구 덕명동 124','B102호',2000,'3','2023-02-16 10:21:35.963000','1',1,4,5),(82,'2023-02-16 10:25:53.633000','2023-02-16 10:25:53.633000','서울 강남구 올림픽대로 2847','3층 301호',3000,'3','2023-02-16 10:25:53.633000','1',2,5,5),(83,'2023-02-16 10:56:53.689000','2023-02-16 10:56:53.689000','대전 유성구 덕명동 124','B102호',3000,'5','2023-02-16 10:56:53.689000','1',2,1,4),(84,'2023-02-16 11:01:17.102000','2023-02-16 11:01:17.102000','대전 유성구 계룡로 84','B102호',100,'3','2023-02-16 11:01:17.102000','1',1,4,6),(85,'2023-02-16 11:04:43.980000','2023-02-16 11:04:43.980000','대전 유성구 덕명동 124','105호',500,'3','2023-02-16 11:04:43.980000','1',1,4,6),(86,'2023-02-16 11:12:59.767000','2023-02-16 11:12:59.767000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-17 13:00:00.000000','2',3,5,5),(87,'2023-02-16 11:19:42.102000','2023-02-16 11:19:42.102000','대전 유성구 덕명동 124','105호',2000,'3','2023-02-16 11:19:42.102000','1',9,9,6),(88,'2023-02-16 12:30:10.791000','2023-02-16 12:30:10.791000','대전 유성구 덕명동 124','B102호',3000,'3','2023-02-16 12:30:10.791000','1',1,10,6),(89,'2023-02-16 12:36:42.082000','2023-02-16 12:36:42.083000','대전 유성구 덕명동 124','105호',4214,'3','2023-02-16 12:36:42.083000','1',2,4,6),(90,'2023-02-16 12:42:23.604000','2023-02-16 12:42:23.604000','대전 유성구 덕명동 124','B102호',2500,'5','2023-02-16 12:42:23.604000','1',9,1,4),(91,'2023-02-16 12:54:31.294000','2023-02-16 12:54:31.294000','대전 유성구 덕명동 124','105호',3000,'3','2023-02-16 13:45:00.000000','2',1,4,6),(92,'2023-02-16 12:56:00.116000','2023-02-16 12:56:00.116000','대전 유성구 덕명동 124','B102호',3000,'3','2023-02-16 14:00:00.000000','2',2,4,6),(93,'2023-02-16 13:17:05.771000','2023-02-16 13:17:05.771000','대전 서구 청사로 253','111동 1401호',1500,'3','2023-02-16 13:17:05.772000','1',3,2,6),(94,'2023-02-16 13:24:18.529000','2023-02-16 13:24:18.529000','대전 유성구 덕명동 124','B102호',1500,'5','2023-02-16 13:24:18.529000','1',3,2,1),(95,'2023-02-16 13:32:41.232000','2023-02-16 13:32:41.232000','대전 유성구 덕명동 124','B102호',0,'5','2023-02-16 13:32:41.232000','1',2,2,1),(96,'2023-02-16 13:43:23.461000','2023-02-16 13:43:23.461000','대전 유성구 덕명동 124','B102호',1700,'3','2023-02-16 14:00:00.000000','2',9,11,4),(97,'2023-02-16 13:45:46.939000','2023-02-16 13:45:46.939000','대전 유성구 덕명동 124','B102호',3000,'3','2023-02-16 14:15:00.000000','2',2,11,11),(98,'2023-02-16 13:51:48.718000','2023-02-16 13:51:48.718000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-16 13:51:48.718000','1',2,2,6),(99,'2023-02-16 14:06:47.284000','2023-02-16 14:06:47.284000','대전 유성구 덕명동 124','B102호',1500,'5','2023-02-16 14:06:47.284000','1',3,2,4),(100,'2023-02-16 14:14:03.259000','2023-02-16 14:14:03.259000','대전 유성구 덕명동 124','B102호',0,'5','2023-02-16 14:14:03.259000','1',2,2,1),(101,'2023-02-16 14:14:06.976000','2023-02-16 14:14:06.976000','대전 유성구 덕명동로10번길 14','102',2000,'5','2023-02-16 14:14:06.977000','1',2,1,4),(102,'2023-02-16 14:51:28.438000','2023-02-16 14:51:28.438000','대전 유성구 덕명동 124','B102호',2500,'3','2023-02-16 14:51:28.438000','1',3,2,6),(103,'2023-02-16 15:28:24.044000','2023-02-16 15:28:24.044000','대전 유성구 덕명동 124','B102호',0,'5','2023-02-16 15:28:24.044000','1',1,1,4),(104,'2023-02-16 15:30:31.854000','2023-02-16 15:30:31.854000','대전 유성구 덕명동 124','B102호',100,'3','2023-02-16 15:30:31.854000','1',1,4,6),(105,'2023-02-16 15:33:08.964000','2023-02-16 15:33:08.964000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-16 15:33:08.964000','1',2,4,6),(106,'2023-02-16 15:38:40.015000','2023-02-16 15:38:40.015000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-16 15:38:40.015000','1',1,4,6),(107,'2023-02-16 15:50:22.687000','2023-02-16 15:50:22.687000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-16 15:50:22.687000','1',1,4,6),(108,'2023-02-16 16:14:24.187000','2023-02-16 16:14:24.187000','대전 유성구 덕명동 124','B102호',1234,'3','2023-02-16 16:14:24.187000','1',1,4,6),(109,'2023-02-16 16:39:49.660000','2023-02-16 16:39:49.660000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-16 16:39:49.660000','1',3,2,6),(110,'2023-02-16 16:41:09.037000','2023-02-16 16:41:09.037000','대전 유성구 덕명동 124','B102호',3000,'5','2023-02-16 16:41:09.037000','1',2,5,2),(111,'2023-02-16 16:54:18.603000','2023-02-16 16:54:18.603000','대전 유성구 덕명동 124','B102호',0,'3','2023-02-16 16:54:18.603000','1',3,2,6),(112,'2023-02-16 17:21:09.675000','2023-02-16 17:21:09.675000','대전 유성구 덕명동 124','B102호',100,'5','2023-02-16 17:21:09.675000','1',2,4,6),(113,'2023-02-16 17:43:41.435000','2023-02-16 17:43:41.435000','대전 유성구 덕명동 124','B102호',0,'5','2023-02-16 17:43:41.436000','1',3,2,2),(114,'2023-02-16 19:21:13.696000','2023-02-16 19:21:13.696000','대전 유성구 덕명동 124','B102호',1000,'3','2023-02-17 11:30:00.000000','2',2,5,5),(115,'2023-02-16 20:12:49.905000','2023-02-16 20:12:49.905000','대전 유성구 덕명동 124','B102호',1000,'2','2023-02-17 11:30:00.000000','2',1,1,4),(116,'2023-02-16 20:14:51.144000','2023-02-16 20:14:51.144000','경북 안동시 강남11길 13','1011호',1000,'2','2023-02-17 12:00:00.000000','2',2,5,5),(117,'2023-02-16 20:43:33.984000','2023-02-16 20:43:33.984000','대전 유성구 덕명동 124','B102호',1000,'2','2023-02-17 13:00:00.000000','2',2,6,5),(118,'2023-02-16 20:45:34.364000','2023-02-16 20:45:34.364000','충북 괴산군 칠성면 각연길 3','순이네',1000,'2','2023-02-17 13:45:00.000000','2',8,8,5),(119,'2023-02-16 20:47:05.027000','2023-02-16 20:47:05.027000','충북 음성군 감곡면 가곡로 3-2','우측',1000,'2','2023-02-17 15:15:00.000000','2',6,8,5),(120,'2023-02-16 20:47:54.282000','2023-02-16 20:47:54.282000','서울 성동구 뚝섬로 310','103호',2000,'3','2023-02-17 13:00:00.000000','2',1,3,2),(121,'2023-02-16 20:48:44.830000','2023-02-16 20:48:44.830000','충북 음성군 감곡면 가곡로 3-2','우측',1000,'5','2023-02-16 20:48:44.830000','1',6,8,5),(122,'2023-02-16 20:49:11.704000','2023-02-16 20:49:11.704000','서울 성동구 뚝섬로 310','103호',2000,'3','2023-02-17 13:00:00.000000','2',2,11,9),(123,'2023-02-16 20:49:59.263000','2023-02-16 20:49:59.263000','서울 성동구 뚝섬로 310','103호',3000,'1','2023-02-17 13:00:00.000000','2',3,7,7),(124,'2023-02-16 22:29:36.233000','2023-02-16 22:29:36.233000','대전 유성구 덕명동 124','B102호',5000,'2','2023-02-17 10:00:00.000000','2',4,10,6),(125,'2023-02-16 22:35:51.260000','2023-02-16 22:35:51.260000','대전 유성구 덕명동 124','B102호',3000,'2','2023-02-17 09:15:00.000000','2',1,9,6),(126,'2023-02-16 22:42:12.463000','2023-02-16 22:42:12.463000','대전 유성구 덕명동 124','B102호',2000,'5','2023-02-16 22:42:12.463000','1',6,9,6),(127,'2023-02-16 22:51:04.404000','2023-02-16 22:51:04.404000','대전 유성구 덕명동 124','B102호',5000,'2','2023-02-17 10:45:00.000000','2',5,10,6),(128,'2023-02-16 22:53:03.681000','2023-02-16 22:53:03.681000','대전 유성구 덕명동 124','B102호',4000,'5','2023-02-16 22:53:03.681000','1',5,9,6),(129,'2023-02-16 22:58:01.635000','2023-02-16 22:58:01.635000','대전 유성구 죽동로 321','301동 1102호',5000,'2','2023-02-17 12:00:00.000000','2',8,5,6),(130,'2023-02-16 22:58:39.654000','2023-02-16 22:58:39.654000','대전 유성구 계룡로 84','108호',10000,'2','2023-02-17 11:30:00.000000','2',9,4,6),(131,'2023-02-16 22:59:29.226000','2023-02-16 22:59:29.226000','대전 동구 가양남로 1','1층',3000,'2','2023-02-17 13:00:00.000000','2',2,6,6),(132,'2023-02-16 23:00:48.223000','2023-02-16 23:00:48.223000','경북 안동시 강남11길 36','3층',5000,'2','2023-02-17 14:15:00.000000','2',5,8,6),(133,'2023-02-16 23:08:49.108000','2023-02-16 23:08:49.108000','경북 포항시 남구 호미곶면 고래마을길 6','골목 우측',1000,'3','2023-02-17 12:30:00.000000','2',2,5,13),(134,'2023-02-16 23:09:49.595000','2023-02-16 23:09:49.595000','대전 유성구 덕명동 124','B102호',1000,'5','2023-02-17 13:30:00.000000','3',3,3,2),(135,'2023-02-16 23:10:26.230000','2023-02-16 23:10:26.230000','울산 북구 가대서길 25','1층',3000,'2','2023-02-17 13:45:00.000000','2',2,5,6),(136,'2023-02-16 23:13:40.172000','2023-02-16 23:13:40.172000','대전 유성구 덕명동 124','B102호',2000,'5','2023-02-16 23:13:40.172000','1',2,1,4),(137,'2023-02-16 23:13:53.042000','2023-02-16 23:13:53.042000','울산 북구 가대서길 25','1층',3000,'2','2023-02-17 15:30:00.000000','2',1,5,6),(138,'2023-02-16 23:15:15.812000','2023-02-16 23:15:15.812000','대전 유성구 죽동로 321','11동 33호',10000,'3','2023-02-17 16:00:00.000000','2',9,5,6);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
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

-- Dump completed on 2023-02-17  1:25:16
