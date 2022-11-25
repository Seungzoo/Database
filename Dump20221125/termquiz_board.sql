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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `bNo` int NOT NULL AUTO_INCREMENT,
  `bId` varchar(20) NOT NULL,
  `bTitle` varchar(100) NOT NULL,
  `bContent` varchar(1000) NOT NULL,
  `bTime` datetime NOT NULL,
  `bCount` int NOT NULL DEFAULT '0',
  `extra` varchar(45) DEFAULT NULL,
  `extra2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bNo`),
  KEY `bno_idx` (`bNo`),
  KEY `boardid_idx` (`bId`),
  CONSTRAINT `boardid` FOREIGN KEY (`bId`) REFERENCES `member` (`nickname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (15,'tester','sdhsdhs','hsdgsdg','2022-11-24 13:22:35',13,NULL,NULL),(16,'hikim95','sfsdfsdf','sfsdfsdfsf','2022-11-24 15:28:14',25,NULL,NULL),(17,'hikim95','sdgsgsdgsdgsg','sg','2022-11-24 15:28:18',19,NULL,NULL),(18,'testtest','ddd','ddd','2022-11-24 16:14:27',5,NULL,NULL),(19,'testtest','ddd','ddd','2022-11-24 16:14:31',1,NULL,NULL),(20,'testtest','ggg','ggg','2022-11-24 16:14:36',30,NULL,NULL),(21,'tester','qegewgwe','sdfsdfsdgweg<br>weg<br>weg<br>wg<br>ew<br>egw<br>egwgwegw<br>g<br>weg<br><br>gwe<br>gw<br>eg<br>weg<br>we<br>gw<br>egw<br>eg<br>wg<br>gw<br>eg<br>weg<br>weg<br>we<br>gw<br>eg','2022-11-24 16:53:12',8,NULL,NULL),(22,'tester','gsgsdg','sdgsdgsd','2022-11-25 13:59:13',0,NULL,NULL),(23,'tester','56756','757','2022-11-25 14:16:42',0,NULL,NULL);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-25 14:23:56
