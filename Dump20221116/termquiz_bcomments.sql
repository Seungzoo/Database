-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: termquiz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `bcomments`
--

DROP TABLE IF EXISTS `bcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bcomments` (
  `bcNo` int NOT NULL AUTO_INCREMENT,
  `bNo` int NOT NULL,
  `bcId` varchar(20) NOT NULL,
  `bComment` varchar(300) NOT NULL,
  `bCommentTime` datetime NOT NULL,
  `root` int NOT NULL DEFAULT '0',
  `step` int NOT NULL DEFAULT '0',
  `indent` int NOT NULL DEFAULT '0',
  `extra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bcNo`),
  KEY `bNo_idx` (`bNo`),
  KEY `bcId_idx` (`bcId`),
  CONSTRAINT `bcId` FOREIGN KEY (`bcId`) REFERENCES `member` (`nickname`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bNo` FOREIGN KEY (`bNo`) REFERENCES `board` (`bNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bcomments`
--

LOCK TABLES `bcomments` WRITE;
/*!40000 ALTER TABLE `bcomments` DISABLE KEYS */;
INSERT INTO `bcomments` VALUES (7,3,'test','tyutryuryustrt<br>sertrseqwewqe','2022-11-11 16:24:43',7,0,0,NULL),(14,3,'test','asdasdasdasdasgs<br>safsdf','2022-11-11 17:20:14',14,0,0,NULL),(20,3,'test','gdgdgasdasdsadasdadsad','2022-11-14 10:07:45',20,0,0,NULL),(23,3,'test','sfdsfdsfd','2022-11-15 17:35:55',23,0,0,NULL),(24,3,'test','qw','2022-11-16 12:27:22',24,0,0,NULL),(25,3,'test','asaasdasd','2022-11-16 12:29:53',25,0,0,NULL),(26,3,'test','sasdasda','2022-11-16 12:30:21',26,0,0,NULL);
/*!40000 ALTER TABLE `bcomments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-16 12:46:55
