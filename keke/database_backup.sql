-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: tt_holdings_system
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment` (
  `employment_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int DEFAULT NULL,
  `organization_id` int DEFAULT NULL,
  `employment_date` date NOT NULL,
  `termination_date` date DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employment_id`),
  KEY `person_id` (`person_id`),
  KEY `employment_ibfk_2` (`organization_id`),
  CONSTRAINT `employment_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`),
  CONSTRAINT `employment_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`organization_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment`
--

LOCK TABLES `employment` WRITE;
/*!40000 ALTER TABLE `employment` DISABLE KEYS */;
INSERT INTO `employment` VALUES (1,1,1,'2020-06-01',NULL,1000.00),(2,2,2,'2019-09-15',NULL,1500.00),(3,3,3,'2018-08-04',NULL,800.00),(4,4,4,'1999-08-04',NULL,870.00),(5,5,5,'2017-09-06',NULL,880.00),(6,6,7,'2017-09-07',NULL,810.00),(7,6,6,'2017-09-07',NULL,890.00),(8,7,8,'2017-09-08',NULL,820.00),(9,9,9,'2017-09-09',NULL,830.00),(10,8,10,'2017-10-09',NULL,230.00),(11,10,11,'2025-09-09',NULL,330.00),(12,11,12,'2025-09-08',NULL,340.00),(13,12,12,'2025-09-08',NULL,340.00),(14,13,12,'2025-09-08',NULL,340.00);
/*!40000 ALTER TABLE `employment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logtable`
--

DROP TABLE IF EXISTS `logtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logtable` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `Action` varchar(20) DEFAULT NULL,
  `Details` text,
  `LogDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logtable`
--

LOCK TABLES `logtable` WRITE;
/*!40000 ALTER TABLE `logtable` DISABLE KEYS */;
INSERT INTO `logtable` VALUES (1,'INSERT','Inserted new organization with ID: 13 and name: Tech Corp','2025-03-24 23:26:55'),(2,'UPDATE','Updated organization with ID: 1 from name: papa pty to name: Tech Innovators','2025-03-24 23:27:25');
/*!40000 ALTER TABLE `logtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `org_budget_number`
--

DROP TABLE IF EXISTS `org_budget_number`;
/*!50001 DROP VIEW IF EXISTS `org_budget_number`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `org_budget_number` AS SELECT 
 1 AS `name`,
 1 AS `budget_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `org_phone`
--

DROP TABLE IF EXISTS `org_phone`;
/*!50001 DROP VIEW IF EXISTS `org_phone`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `org_phone` AS SELECT 
 1 AS `name`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations` (
  `organization_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `budget_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'Tech Innovators','Pine Road','555-123-4567','1001'),(2,'bophelo clinic','mpilo','555-123-4568','2002'),(3,'p&p munufature','mabela','555-123-4569','3003'),(4,'m&s pty','labela','555-123-4560','4004'),(5,'T & T pty','Pine Road','555-123-6567','5005'),(6,'lilala resturant','maseru mall','555-123-6561','6006'),(7,'paper productions','NRH mall','555-123-6562','7007'),(8,'pencil production','down_town','555-123-6563','8008'),(9,'mr plastic','upper thamae','555-123-6564','9009'),(10,'Saldy catering','hanyenye','555-123-6566','1020'),(11,'kfc','crossong','555-123-6567','1030'),(12,'DNS services','matlapeng','555-123-6568','1040'),(13,'Tech Corp','123 Tech Street','555-1234','BUD123');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parttimeemployees`
--

DROP TABLE IF EXISTS `parttimeemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parttimeemployees` (
  `person_id` int NOT NULL,
  `extra_hours` int DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  CONSTRAINT `parttimeemployees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parttimeemployees`
--

LOCK TABLES `parttimeemployees` WRITE;
/*!40000 ALTER TABLE `parttimeemployees` DISABLE KEYS */;
INSERT INTO `parttimeemployees` VALUES (1,20),(3,13),(4,14),(5,15),(6,13),(7,14),(8,15),(9,35),(10,5),(11,2);
/*!40000 ALTER TABLE `parttimeemployees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permanentemployees`
--

DROP TABLE IF EXISTS `permanentemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permanentemployees` (
  `person_id` int NOT NULL,
  `extra_bonus` decimal(10,2) DEFAULT NULL,
  `credit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  CONSTRAINT `permanentemployees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permanentemployees`
--

LOCK TABLES `permanentemployees` WRITE;
/*!40000 ALTER TABLE `permanentemployees` DISABLE KEYS */;
INSERT INTO `permanentemployees` VALUES (1,5000.00,2000.00),(2,3000.00,1500.00),(3,4500.00,1800.00),(4,500.00,1000.00),(5,500.00,0.00),(6,600.00,340.00),(7,250.00,750.00),(8,20.00,0.00),(9,5000.00,0.00),(10,0.00,0.00);
/*!40000 ALTER TABLE `permanentemployees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'mpho','lifelekoaneng','12345678','1995-05-02'),(2,'lerato','lifelekoaneng','123409876','1995-05-01'),(3,'Lieketso','naledi','12341876','1995-05-03'),(4,'kekeletso','naledi','12343876','1995-05-04'),(5,'motsheoa','mabote','12343876','1995-05-05'),(6,'boitumelo','khubetsoana','12344876','1995-05-06'),(7,'tumelo','khubetsoana','12345876','1995-05-07'),(8,'keitumetse','khubetsoana','12346876','1995-05-08'),(9,'teboho','ha-foso','12347876','1995-05-09'),(10,'liteboho','ha-foso','12348876','1995-05-10'),(11,'thabiso','marabeng','12349876','1995-05-11'),(12,'mosoeu','marabeng','12349176','1995-05-12'),(13,'ts\'episo','tshenola','12349276','1995-02-12');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionassignments`
--

DROP TABLE IF EXISTS `positionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionassignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `employment_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `start_date` date NOT NULL,
  `termination_date` date DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`assignment_id`),
  KEY `employment_id` (`employment_id`),
  KEY `position_id` (`position_id`),
  CONSTRAINT `positionassignments_ibfk_1` FOREIGN KEY (`employment_id`) REFERENCES `employment` (`employment_id`),
  CONSTRAINT `positionassignments_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionassignments`
--

LOCK TABLES `positionassignments` WRITE;
/*!40000 ALTER TABLE `positionassignments` DISABLE KEYS */;
INSERT INTO `positionassignments` VALUES (4,1,16,'2025-01-01','2025-12-31',50000.00),(8,1,16,'2024-01-10','2025-06-30',50000.00),(9,2,18,'2023-09-15',NULL,60000.00),(10,3,24,'2022-05-20','2023-12-31',45000.00),(11,11,25,'2023-09-15',NULL,2000.00),(12,14,20,'2023-09-15',NULL,3000.00),(13,13,21,'2015-10-11','2025-09-08',4000.00);
/*!40000 ALTER TABLE `positionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `responsible_org_id` int DEFAULT NULL,
  PRIMARY KEY (`position_id`),
  KEY `positions_ibfk_1` (`responsible_org_id`),
  CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`responsible_org_id`) REFERENCES `organizations` (`organization_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (15,'hr assistant',11),(16,'Software Engineer',1),(17,'Project Manager',2),(18,'hr Manager',3),(19,'secretary',4),(20,'trasurer',5),(21,'cleanner',6),(22,'core worker',7),(23,'research manager',8),(24,'ceo',10),(25,'receptionist',12);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_active_employees`
--

DROP TABLE IF EXISTS `view_active_employees`;
/*!50001 DROP VIEW IF EXISTS `view_active_employees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_active_employees` AS SELECT 
 1 AS `person_name`,
 1 AS `organization_name`,
 1 AS `employment_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_active_position_assignments`
--

DROP TABLE IF EXISTS `view_active_position_assignments`;
/*!50001 DROP VIEW IF EXISTS `view_active_position_assignments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_active_position_assignments` AS SELECT 
 1 AS `person_name`,
 1 AS `position_title`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_employment_details`
--

DROP TABLE IF EXISTS `view_employment_details`;
/*!50001 DROP VIEW IF EXISTS `view_employment_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_employment_details` AS SELECT 
 1 AS `person_name`,
 1 AS `organization_name`,
 1 AS `employment_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_older_persons`
--

DROP TABLE IF EXISTS `view_older_persons`;
/*!50001 DROP VIEW IF EXISTS `view_older_persons`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_older_persons` AS SELECT 
 1 AS `name`,
 1 AS `birth_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_parttime_employees`
--

DROP TABLE IF EXISTS `view_parttime_employees`;
/*!50001 DROP VIEW IF EXISTS `view_parttime_employees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_parttime_employees` AS SELECT 
 1 AS `name`,
 1 AS `extra_hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_parttime_employees_high_hours`
--

DROP TABLE IF EXISTS `view_parttime_employees_high_hours`;
/*!50001 DROP VIEW IF EXISTS `view_parttime_employees_high_hours`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_parttime_employees_high_hours` AS SELECT 
 1 AS `name`,
 1 AS `extra_hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_permanent_employees`
--

DROP TABLE IF EXISTS `view_permanent_employees`;
/*!50001 DROP VIEW IF EXISTS `view_permanent_employees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_permanent_employees` AS SELECT 
 1 AS `name`,
 1 AS `extra_bonus`,
 1 AS `credit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_permanent_employees_high_credit`
--

DROP TABLE IF EXISTS `view_permanent_employees_high_credit`;
/*!50001 DROP VIEW IF EXISTS `view_permanent_employees_high_credit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_permanent_employees_high_credit` AS SELECT 
 1 AS `name`,
 1 AS `credit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_persons_contact`
--

DROP TABLE IF EXISTS `view_persons_contact`;
/*!50001 DROP VIEW IF EXISTS `view_persons_contact`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_persons_contact` AS SELECT 
 1 AS `name`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_position_assignments_details`
--

DROP TABLE IF EXISTS `view_position_assignments_details`;
/*!50001 DROP VIEW IF EXISTS `view_position_assignments_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_position_assignments_details` AS SELECT 
 1 AS `person_name`,
 1 AS `position_title`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_positions_for_org`
--

DROP TABLE IF EXISTS `view_positions_for_org`;
/*!50001 DROP VIEW IF EXISTS `view_positions_for_org`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_positions_for_org` AS SELECT 
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_positions_with_organization`
--

DROP TABLE IF EXISTS `view_positions_with_organization`;
/*!50001 DROP VIEW IF EXISTS `view_positions_with_organization`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_positions_with_organization` AS SELECT 
 1 AS `title`,
 1 AS `organization_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `org_budget_number`
--

/*!50001 DROP VIEW IF EXISTS `org_budget_number`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `org_budget_number` AS select `organizations`.`name` AS `name`,`organizations`.`budget_number` AS `budget_number` from `organizations` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `org_phone`
--

/*!50001 DROP VIEW IF EXISTS `org_phone`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `org_phone` AS select `organizations`.`name` AS `name`,`organizations`.`phone` AS `phone` from `organizations` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_active_employees`
--

/*!50001 DROP VIEW IF EXISTS `view_active_employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_active_employees` AS select `p`.`name` AS `person_name`,`o`.`name` AS `organization_name`,`e`.`employment_date` AS `employment_date` from ((`employment` `e` join `persons` `p` on((`e`.`person_id` = `p`.`person_id`))) join `organizations` `o` on((`e`.`organization_id` = `o`.`organization_id`))) where (`e`.`termination_date` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_active_position_assignments`
--

/*!50001 DROP VIEW IF EXISTS `view_active_position_assignments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_active_position_assignments` AS select `p`.`name` AS `person_name`,`pos`.`title` AS `position_title`,`pa`.`salary` AS `salary` from (((`positionassignments` `pa` join `employment` `e` on((`pa`.`employment_id` = `e`.`employment_id`))) join `persons` `p` on((`e`.`person_id` = `p`.`person_id`))) join `positions` `pos` on((`pa`.`position_id` = `pos`.`position_id`))) where (`pa`.`termination_date` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_employment_details`
--

/*!50001 DROP VIEW IF EXISTS `view_employment_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_employment_details` AS select `p`.`name` AS `person_name`,`o`.`name` AS `organization_name`,`e`.`employment_date` AS `employment_date` from ((`employment` `e` join `persons` `p` on((`e`.`person_id` = `p`.`person_id`))) join `organizations` `o` on((`e`.`organization_id` = `o`.`organization_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_older_persons`
--

/*!50001 DROP VIEW IF EXISTS `view_older_persons`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_older_persons` AS select `persons`.`name` AS `name`,`persons`.`birth_date` AS `birth_date` from `persons` where (`persons`.`birth_date` < '2000-01-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_parttime_employees`
--

/*!50001 DROP VIEW IF EXISTS `view_parttime_employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_parttime_employees` AS select `p`.`name` AS `name`,`pte`.`extra_hours` AS `extra_hours` from (`parttimeemployees` `pte` join `persons` `p` on((`pte`.`person_id` = `p`.`person_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_parttime_employees_high_hours`
--

/*!50001 DROP VIEW IF EXISTS `view_parttime_employees_high_hours`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_parttime_employees_high_hours` AS select `p`.`name` AS `name`,`pte`.`extra_hours` AS `extra_hours` from (`parttimeemployees` `pte` join `persons` `p` on((`pte`.`person_id` = `p`.`person_id`))) where (`pte`.`extra_hours` > 100) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_permanent_employees`
--

/*!50001 DROP VIEW IF EXISTS `view_permanent_employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_permanent_employees` AS select `p`.`name` AS `name`,`pe`.`extra_bonus` AS `extra_bonus`,`pe`.`credit` AS `credit` from (`permanentemployees` `pe` join `persons` `p` on((`pe`.`person_id` = `p`.`person_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_permanent_employees_high_credit`
--

/*!50001 DROP VIEW IF EXISTS `view_permanent_employees_high_credit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_permanent_employees_high_credit` AS select `p`.`name` AS `name`,`pe`.`credit` AS `credit` from (`permanentemployees` `pe` join `persons` `p` on((`pe`.`person_id` = `p`.`person_id`))) where (`pe`.`credit` > 1000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_persons_contact`
--

/*!50001 DROP VIEW IF EXISTS `view_persons_contact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_persons_contact` AS select `persons`.`name` AS `name`,`persons`.`phone` AS `phone` from `persons` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_position_assignments_details`
--

/*!50001 DROP VIEW IF EXISTS `view_position_assignments_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_position_assignments_details` AS select `p`.`name` AS `person_name`,`pos`.`title` AS `position_title`,`pa`.`salary` AS `salary` from (((`positionassignments` `pa` join `employment` `e` on((`pa`.`employment_id` = `e`.`employment_id`))) join `persons` `p` on((`e`.`person_id` = `p`.`person_id`))) join `positions` `pos` on((`pa`.`position_id` = `pos`.`position_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_positions_for_org`
--

/*!50001 DROP VIEW IF EXISTS `view_positions_for_org`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_positions_for_org` AS select `positions`.`title` AS `title` from `positions` where (`positions`.`responsible_org_id` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_positions_with_organization`
--

/*!50001 DROP VIEW IF EXISTS `view_positions_with_organization`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_positions_with_organization` AS select `p`.`title` AS `title`,`o`.`name` AS `organization_name` from (`positions` `p` join `organizations` `o` on((`p`.`responsible_org_id` = `o`.`organization_id`))) */;
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

-- Dump completed on 2025-03-26 16:01:28
