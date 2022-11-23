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
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `qnaNo` int NOT NULL AUTO_INCREMENT,
  `qnaId` varchar(20) NOT NULL,
  `qnaTitle` varchar(100) NOT NULL,
  `qnaContent` varchar(1000) NOT NULL,
  `qnaAnswer` varchar(300) DEFAULT NULL,
  `qnaTime` date NOT NULL,
  `extra` varchar(45) DEFAULT NULL,
  `extra2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`qnaNo`),
  KEY `qnaid_idx` (`qnaId`),
  CONSTRAINT `qnaid` FOREIGN KEY (`qnaId`) REFERENCES `member` (`nickname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'tester','테스트','test','teaweaw','2022-11-05',NULL,NULL),(2,'tester','테스트2','test','test','2022-11-06',NULL,NULL),(3,'tester','test','test',NULL,'2000-10-10',NULL,NULL),(4,'tester','test','test','update','2000-10-10',NULL,NULL),(6,'tester','tete','teteteasd',NULL,'2022-11-08',NULL,NULL),(7,'tester','tt','tt','asdasfsag','2022-11-08',NULL,NULL),(8,'tester','테스트2221','테테트','asdasd','2022-11-09',NULL,NULL),(9,'tester','test','test','','2022-11-09',NULL,NULL),(10,'tester','test','test','','2022-11-09',NULL,NULL),(11,'tester','test','test','','2022-11-09',NULL,NULL),(12,'tester','test','test','','2022-11-09',NULL,NULL),(13,'tester','test','test','','2022-11-09',NULL,NULL),(14,'tester','test','test','','2022-11-09',NULL,NULL),(15,'tester','test','test','','2022-11-09',NULL,NULL),(16,'tester','test','test','','2022-11-09',NULL,NULL),(17,'tester','test','test','','2022-11-09',NULL,NULL),(18,'tester','test','test','','2022-11-09',NULL,NULL),(19,'tester','test','test','','2022-11-09',NULL,NULL),(20,'tester','test','test','','2022-11-09',NULL,NULL),(21,'tester','t','t',NULL,'2022-11-11',NULL,NULL),(22,'tester','y','y',NULL,'2022-11-11',NULL,NULL);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
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
