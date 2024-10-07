-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dblogin
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `usuarios_token`
--

DROP TABLE IF EXISTS `usuarios_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_token` (
  `tokenId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `txtToken` varchar(50) NOT NULL,
  `bEstado` varchar(10) NOT NULL,
  `feDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tokenId`)
)AUTO_INCREMENT=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_token`
--

LOCK TABLES `usuarios_token` WRITE;
/*!40000 ALTER TABLE `usuarios_token` DISABLE KEYS */;
INSERT INTO `usuarios_token` VALUES (1,1,'3aa7eafaef2eb026eaeea1dd0769ab64','Activo','2022-10-03 17:14:00'),(2,1,'04a9cb8c8fb11e896cb8faa2553a068f','Activo','2022-10-03 17:17:00'),(3,1,'a771c695700d2b7a0d1d61db125b8a38','Activo','2022-10-03 17:23:00'),(4,1,'c9760d7d57f9e26d00052d8376da220a','Activo','2022-10-03 17:24:00'),(5,1,'14b3f8a9066dc0cbeb35d99362d32559','Activo','2022-10-03 17:25:00'),(6,1,'8af642f5767be5d9b8eaa3144951f7ea','Activo','2022-10-03 17:33:00'),(7,1,'70bcb9ce6f6e8b1588d6629cf27a2abe','Activo','2022-10-03 18:35:00');
/*!40000 ALTER TABLE `usuarios_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-03 11:41:10
