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
-- Temporary view structure for view `vwuserdocuments`
--

DROP TABLE IF EXISTS `vwuserdocuments`;
/*!50001 DROP VIEW IF EXISTS `vwuserdocuments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwuserdocuments` AS SELECT 
 1 AS `documentID`,
 1 AS `Document`,
 1 AS `URL`,
 1 AS `Type`,
 1 AS `fCreatedAt`,
 1 AS `personId`,
 1 AS `Editor`,
 1 AS `user`,
 1 AS `userType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!50001 DROP VIEW IF EXISTS `userdata`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `userdata` AS SELECT 
 1 AS `personId`,
 1 AS `userId`,
 1 AS `Name`,
 1 AS `Lastname`,
 1 AS `RFC`,
 1 AS `personActive`,
 1 AS `user`,
 1 AS `userType`,
 1 AS `userActive`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allusers`
--

DROP TABLE IF EXISTS `allusers`;
/*!50001 DROP VIEW IF EXISTS `allusers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allusers` AS SELECT 
 1 AS `user`,
 1 AS `pass`,
 1 AS `Estado`,
 1 AS `userId`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vwuserdocuments`
--

/*!50001 DROP VIEW IF EXISTS `vwuserdocuments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwuserdocuments` AS select `d`.`documentID` AS `documentID`,`d`.`documentName` AS `Document`,`d`.`documentURL` AS `URL`,`d`.`documentType` AS `Type`,`d`.`fCreatedAt` AS `fCreatedAt`,`p`.`personId` AS `personId`,concat(`p`.`Name`,' ',`p`.`Lastname`) AS `Editor`,`p`.`user` AS `user`,`p`.`userType` AS `userType` from (`documentos` `d` join `userdata` `p` on((`d`.`personId` = `p`.`personId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userdata`
--

/*!50001 DROP VIEW IF EXISTS `userdata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `userdata` AS select `p`.`personId` AS `personId`,`u`.`userId` AS `userId`,`p`.`personName` AS `Name`,`p`.`personLastName` AS `Lastname`,`p`.`personRFC` AS `RFC`,`p`.`bActive` AS `personActive`,`u`.`user` AS `user`,`u`.`userType` AS `userType`,`u`.`bActive` AS `userActive` from (`personas` `p` join `users` `u` on((`u`.`personId` = `p`.`personId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allusers`
--

/*!50001 DROP VIEW IF EXISTS `allusers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allusers` AS select `users`.`user` AS `user`,`users`.`pass` AS `pass`,`users`.`bActive` AS `Estado`,`users`.`userId` AS `userId` from `users` */;
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

-- Dump completed on 2022-10-03 11:41:10
