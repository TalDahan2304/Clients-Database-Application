-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: humanzdb
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

--
-- Table structure for table `clients_db`
--

DROP TABLE IF EXISTS `clients_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_db` (
  `No` int NOT NULL AUTO_INCREMENT,
  `fullName` text NOT NULL,
  `ID` int NOT NULL,
  `ipAddress` text NOT NULL,
  `phoneNumber` int NOT NULL,
  PRIMARY KEY (`No`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_db`
--

LOCK TABLES `clients_db` WRITE;
/*!40000 ALTER TABLE `clients_db` DISABLE KEYS */;
INSERT INTO `clients_db` VALUES (19,'Jacqueline Hughes',875322869,'103.255.178.143',551448824),(20,'Max Dunn',338605579,'88.144.81.24',543503816),(21,'Christy Neal',68672047,'62.113.223.73',542202337),(22,'Jessica Rodriquez',150318228,'12.189.93.218',558975263),(23,'Terri Gordon',482018827,'212.74.99.171',505375808),(24,'Frank Hamilton',790979272,'70.32.16.194',541414650),(25,'Felecia Ford',534268339,'77.139.213.201',559328061),(26,'Aubree Long',39512322,'121.113.29.210',507896703),(27,'Tristan Brewer',91900407,'50.87.175.194',545165250),(28,'Mattie Ross',403769532,'94.252.132.224',534831657),(29,'Miriam Caldwell',767862527,'105.168.58.247',542739332),(30,'Dolores Robertson',68576123,'139.228.93.215',545560916),(31,'Christina Hunt',470236670,'75.128.159.27',549627649),(32,'Ethel Freeman',451148183,'198.55.114.244',535050005),(33,'Marilyn Kelley',127141687,'109.122.224.164',523314497),(34,'Marvin Kim',969423987,'86.140.236.36',543576817),(35,'Monica Shelton',8736928,'113.185.43.99',541350820),(36,'Flenn Neal',938993938,'207.171.162.115',530574010),(37,'Timmothy Riley',366232932,'71.69.19.61',548714955),(38,'Gladys Gomez',224058453,'62.221.151.150',553118725),(39,'Ray Ortiz',140198631,'123.139.35.70',501371777),(40,'Mike White',43993278,'197.253.220.3',541117565),(41,'Terri Byrd',624213302,'170.79.229.235',552658624),(42,'Joyce Duncan',760444406,'104.237.52.50',524138666),(43,'Carole Garrett',133292698,'106.10.73.22',523988066),(44,'Joan Jackson',976579458,'24.66.90.83',552037957),(45,'Mark Black',622795052,'191.6.137.31',537608013),(46,'Eugene Frazier',826328668,'216.208.233.155',544545920),(47,'Terry Carr',222487571,'103.19.16.90',527662962),(48,'Samuel Murray',562368886,'8.40.166.238',505707479),(49,'Donald May',201431194,'187.94.129.66',558091299),(50,'Claude Woods',637163908,'78.170.254.42',537094406),(51,'Alan Steward',631615440,'186.210.91.59',541849674),(52,'Christina Dean',379978463,'156.210.111.98',521882261),(53,'Maurice Boyd',871700894,'151.250.232.140',534230979),(54,'Daryl Mason',596921817,'104.218.66.37',548206508),(55,'Alyssa Stephens',139193023,'109.74.13.84',544077527),(56,'Stanley Rivera',432787646,'195.184.106.3',536586531),(57,'Bill Mitchelle',353546336,'209.58.169.183',520280447),(58,'Diana Peck',477398853,'13.225.189.253',541500479),(59,'Owen Pearson',429480874,'190.205.100.27',542685335),(60,'Alan Wheeler',21630314,'185.5.17.140',526012379),(61,'Theresa Griffin',991133273,'184.162.191.22',532713164),(62,'Dwayne Allen',840694103,'80.119.117.49',551937240),(63,'Franklin Phillips',870256526,'130.185.144.76',509060787),(64,'Greg Medina',18169151,'104.20.218.249',508112956),(65,'Kirk Fuller',545884686,'108.62.122.143',555611424),(74,'Priscilla Matthews',384525101,'80.119.117.187',523862672),(75,'Benjamin Douglas',660652470,'104.29.98.222',557712987);
/*!40000 ALTER TABLE `clients_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-25 11:42:04