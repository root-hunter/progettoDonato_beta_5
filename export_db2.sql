-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version       8.0.22

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
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  `telegram_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (10,NULL,NULL,NULL,'846989549'),(11,NULL,NULL,NULL,'43428913');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `telegram_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `availability` int DEFAULT '0',
  `state` varchar(45) DEFAULT '0',
  `last_update` date DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `availability_update` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'846989549','Antonio','Ricciardi',1,'1','2021-03-19','VALLE D\'AOSTA','AOSTA','2021-03-19'),(7,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(9,NULL,'Michele','Scaramuzzi',0,'0',NULL,NULL,NULL,NULL),(10,NULL,'Michele','Scaramuzzi',1,'0',NULL,'LAZIO','ROMA','2021-02-11'),(11,NULL,'Michele','Scaramuzzi',1,'0',NULL,'LAZIO','ROMA','2021-02-11'),(12,NULL,'Giovanni','Mucciaccia',0,'0',NULL,'PUGLIA','BARI','2021-01-13'),(13,NULL,'Mario','Rossi',1,'0',NULL,'PUGLIA','FOGGIA','2020-09-25'),(14,NULL,'Mario','Draghi',0,'0',NULL,'LOMBARDIA','BRESCIA','2021-03-10'),(15,NULL,'Antonio','Lo Conte',0,'0',NULL,'LOMBARDIA','MILANO','2021-02-21'),(17,'43428913',NULL,NULL,0,'1','2021-03-19',NULL,NULL,NULL),(18,NULL,'Francesco','Cozza',0,'0',NULL,'PUGLIA','FOGGIA','2019-12-21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `users_active`
--

DROP TABLE IF EXISTS `users_active`;
/*!50001 DROP VIEW IF EXISTS `users_active`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_active` AS SELECT
 1 AS `id`,
 1 AS `telegram_id`,
 1 AS `name`,
 1 AS `surname`,
 1 AS `availability`,
 1 AS `state`,
 1 AS `last_update`,
 1 AS `region`,
 1 AS `province`,
 1 AS `availability_update`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users_disponibility`
--

DROP TABLE IF EXISTS `users_disponibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_disponibility` (
  `id` int NOT NULL AUTO_INCREMENT,
  `telegram_id` varchar(45) DEFAULT NULL,
  `time_update` date DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_disponibility`
--

LOCK TABLES `users_disponibility` WRITE;
/*!40000 ALTER TABLE `users_disponibility` DISABLE KEYS */;
INSERT INTO `users_disponibility` VALUES (1,'846989549','2021-03-18',0,'MARCHE','ASCOLI PICENO','Antonio','Ricciardi'),(2,'846989549','2021-03-18',0,'MARCHE','ASCOLI PICENO','Antonio','Ricciardi'),(3,'846989549','2021-03-18',0,'MARCHE','ASCOLI PICENO','Antonio','Ricciardi'),(4,'846989549','2021-03-18',0,'MARCHE','ASCOLI PICENO','Antonio','Ricciardi'),(5,'846989549','2021-03-18',0,'MARCHE','ASCOLI PICENO','Antonio','Ricciardi'),(6,'846989549','2021-03-18',0,'MARCHE','ASCOLI PICENO','Antonio','Ricciardi'),(7,'846989549','2021-03-18',0,'MARCHE','ASCOLI PICENO','Antonio','Ricciardi'),(8,'846989549','2021-03-18',1,'ABRUZZO','CHIETI','Antonio','Ricciardi'),(9,'846989549','2021-03-18',1,'ABRUZZO','CHIETI','Antonio','Ricciardi'),(10,'846989549','2021-03-18',1,'ABRUZZO','CHIETI','Antonio','Ricciardi'),(11,'846989549','2021-03-18',0,'ABRUZZO','CHIETI','Antonio','Ricciardi'),(12,'846989549','2021-03-18',0,'ABRUZZO','CHIETI','Antonio','Ricciardi'),(13,'846989549','2021-03-18',0,'ABRUZZO','CHIETI','Antonio','Ricciardi'),(14,'846989549','2021-03-18',0,'ABRUZZO','CHIETI','Antonio','Ricciardi'),(15,'846989549','2021-03-18',0,'ABRUZZO','CHIETI','Antonio','Ricciardi'),(16,'846989549','2021-03-18',0,'ABRUZZO','CHIETI','Antonio','Ricciardi'),(17,'846989549','2021-03-18',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(18,'846989549','2021-03-18',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(19,'846989549','2021-03-18',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(20,'846989549','2021-03-18',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(21,'846989549','2021-03-18',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(22,'846989549','2021-03-18',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(23,'846989549','2021-03-18',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(24,'846989549','2021-03-18',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(25,'846989549','2021-03-18',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(26,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(27,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(28,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(29,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(30,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(31,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(32,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(33,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(34,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(35,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(36,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(37,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(38,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(39,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(40,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(41,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(42,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(43,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(44,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(45,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(46,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(47,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(48,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(49,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(50,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(51,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(52,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(53,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(54,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(55,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(56,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(57,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(58,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(59,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(60,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi'),(61,'846989549','2021-03-19',1,'VALLE D\'AOSTA','AOSTA','Antonio','Ricciardi');
/*!40000 ALTER TABLE `users_disponibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `users_for_search`
--

DROP TABLE IF EXISTS `users_for_search`;
/*!50001 DROP VIEW IF EXISTS `users_for_search`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_for_search` AS SELECT
 1 AS `id`,
 1 AS `telegram_id`,
 1 AS `name`,
 1 AS `surname`,
 1 AS `availability`,
 1 AS `state`,
 1 AS `last_update`,
 1 AS `region`,
 1 AS `province`,
 1 AS `availability_update`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `users_not_active`
--

DROP TABLE IF EXISTS `users_not_active`;
/*!50001 DROP VIEW IF EXISTS `users_not_active`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_not_active` AS SELECT
 1 AS `id`,
 1 AS `telegram_id`,
 1 AS `name`,
 1 AS `surname`,
 1 AS `availability`,
 1 AS `state`,
 1 AS `last_update`,
 1 AS `region`,
 1 AS `province`,
 1 AS `availability_update`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `users_active`
--

/*!50001 DROP VIEW IF EXISTS `users_active`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_active` AS select `users`.`id` AS `id`,`users`.`telegram_id` AS `telegram_id`,`users`.`name` AS `name`,`users`.`surname` AS `surname`,`users`.`availability` AS `availability`,`users`.`state` AS `state`,`users`.`last_update` AS `last_update`,`users`.`region` AS `region`,`users`.`province` AS `province`,`users`.`availability_update` AS `availability_update` from `users` where ((`users`.`region` is not null) and (`users`.`availability` = 1) and (`users`.`name` is not null) and (`users`.`surname` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_for_search`
--

/*!50001 DROP VIEW IF EXISTS `users_for_search`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_for_search` AS select `users`.`id` AS `id`,`users`.`telegram_id` AS `telegram_id`,`users`.`name` AS `name`,`users`.`surname` AS `surname`,`users`.`availability` AS `availability`,`users`.`state` AS `state`,`users`.`last_update` AS `last_update`,`users`.`region` AS `region`,`users`.`province` AS `province`,`users`.`availability_update` AS `availability_update` from `users` where ((`users`.`name` is not null) and (`users`.`surname` is not null) and (`users`.`region` is not null) and (`users`.`province` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_not_active`
--

/*!50001 DROP VIEW IF EXISTS `users_not_active`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_not_active` AS select `users`.`id` AS `id`,`users`.`telegram_id` AS `telegram_id`,`users`.`name` AS `name`,`users`.`surname` AS `surname`,`users`.`availability` AS `availability`,`users`.`state` AS `state`,`users`.`last_update` AS `last_update`,`users`.`region` AS `region`,`users`.`province` AS `province`,`users`.`availability_update` AS `availability_update` from `users` where ((`users`.`region` is not null) and ((`users`.`availability` = 0) or (`users`.`availability` is null)) and (`users`.`name` is not null) and (`users`.`surname` is not null)) */;
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
