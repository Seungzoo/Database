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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bcomments`
--

LOCK TABLES `bcomments` WRITE;
/*!40000 ALTER TABLE `bcomments` DISABLE KEYS */;
INSERT INTO `bcomments` VALUES (1,11,'tester','삭제된 댓글입니다','2022-11-22 17:38:39',1,0,0,NULL),(2,11,'tester','삭제된 댓글입니다','2022-11-22 17:38:41',2,0,0,NULL),(8,11,'tester','asdsadsad','2022-11-22 17:42:01',2,1,1,NULL),(9,11,'tester','asfdasf','2022-11-22 17:44:27',9,0,0,NULL),(10,11,'tester','ㅁㄴㅇ','2022-11-22 17:47:40',9,1,1,NULL),(11,11,'tester','ㅁㄴㅇ','2022-11-22 17:48:41',11,0,0,NULL),(12,11,'tester','ertret','2022-11-22 18:10:39',12,0,0,NULL),(13,11,'tester','sdfgdfgs','2022-11-22 18:11:09',13,0,0,NULL),(14,11,'tester','sdfhdshf','2022-11-22 18:11:57',14,0,0,NULL),(15,13,'HiKim95','삭제된 댓글입니다','2022-11-23 12:50:03',15,0,0,NULL);
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

-- Dump completed on 2022-11-23 18:15:19
