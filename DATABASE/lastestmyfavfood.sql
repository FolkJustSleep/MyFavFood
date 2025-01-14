CREATE DATABASE  IF NOT EXISTS `myfavfood` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `myfavfood`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: myfavfood
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cash_control`
--

DROP TABLE IF EXISTS `cash_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_control` (
  `NO` int NOT NULL AUTO_INCREMENT,
  `DRAWER_CASH` int NOT NULL,
  `COIN` double NOT NULL,
  `BREAD_IN` double NOT NULL,
  `DATE_IN` datetime DEFAULT NULL,
  `EMP_ID` int NOT NULL,
  `SAFE` int NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO_UNIQUE` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_control`
--

LOCK TABLES `cash_control` WRITE;
/*!40000 ALTER TABLE `cash_control` DISABLE KEYS */;
INSERT INTO `cash_control` VALUES (1,1,1,1,NULL,3,1),(3,2,2,2,NULL,3,2),(4,3,3,3,NULL,3,3),(5,2,3,1,NULL,3,1),(6,1,1,1,NULL,1,1);
/*!40000 ALTER TABLE `cash_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `CONTRACT_ID` int NOT NULL,
  `SALARY` int NOT NULL,
  `SDATE` datetime NOT NULL,
  PRIMARY KEY (`CONTRACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (10001,10000,'2024-04-22 00:00:00'),(10002,10000,'2024-04-22 00:00:00'),(10003,10000,'2024-04-22 00:00:00');
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daywork`
--

DROP TABLE IF EXISTS `daywork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daywork` (
  `EMP_ID` int NOT NULL,
  `WDAY` int DEFAULT NULL,
  `OUTDAY` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daywork`
--

LOCK TABLES `daywork` WRITE;
/*!40000 ALTER TABLE `daywork` DISABLE KEYS */;
/*!40000 ALTER TABLE `daywork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `DELIVERY_ID` int NOT NULL AUTO_INCREMENT,
  `DELIVERY_DATE` datetime NOT NULL,
  `EMP_ID` int NOT NULL,
  PRIMARY KEY (`DELIVERY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'2024-11-19 00:00:00',1),(2,'2024-11-18 00:00:00',1),(3,'2024-11-17 00:00:00',2),(4,'2024-11-16 00:00:00',3),(5,'2024-12-16 20:45:59',3),(6,'2024-12-16 21:49:40',3),(7,'2024-12-17 07:31:21',3);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverybasket`
--

DROP TABLE IF EXISTS `deliverybasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverybasket` (
  `DELIVERY_ID` int NOT NULL,
  `ITEM_ID` int NOT NULL,
  `ITEM_QTY` int NOT NULL,
  `ITEM_PRICE` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverybasket`
--

LOCK TABLES `deliverybasket` WRITE;
/*!40000 ALTER TABLE `deliverybasket` DISABLE KEYS */;
INSERT INTO `deliverybasket` VALUES (1,3,1,1200),(1,5,1,1600),(1,9,1,2000),(2,4,2,1700),(2,6,2,900),(2,1,2,2500),(3,7,4,600),(3,10,4,800),(3,15,4,2000),(5,1,1,1),(6,1,10,1300),(2,1,2,0),(2,2,2,0),(7,1,2,0),(7,2,2,0),(1,1,2,0),(1,2,3,0);
/*!40000 ALTER TABLE `deliverybasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EMP_ID` int NOT NULL AUTO_INCREMENT,
  `EMP_FNAME` varchar(100) DEFAULT NULL,
  `EMP_LNAME` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(10000) DEFAULT NULL,
  `EMP_POS` varchar(45) DEFAULT NULL,
  `EMP_GENDER` varchar(45) DEFAULT NULL,
  `EMP_EMAIL` varchar(45) DEFAULT NULL,
  `EMP_PHONE` varchar(10) DEFAULT NULL,
  `CONTRACT_ID` int DEFAULT NULL,
  `EMP_PASS` varchar(45) DEFAULT NULL,
  `EMP_UNAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Kobchok','Chuawong','Bangkok Thailand','Manager','M','kobchok.ch@gmail.com','0829099626',10001,'folk2548',''),(3,'MOMIE','ZAZAZA','Bangkok Thailand','Part-time','M','momie@gmail.com','0999999999',10002,'123','MOMIE'),(4,'Kao','ZAZAZA','Bangkok Thailand','Part-time','M','kobchok.ch@gmail.com','0999999999',10003,'KAOZA888','KAO'),(11,' Zlatan','Ibrahimovic','Sweden','Assistance-manager','M','zlatan@mail.com','0999999999',NULL,'111','God');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finishwaste`
--

DROP TABLE IF EXISTS `finishwaste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finishwaste` (
  `FINISHWASTE_ID` int NOT NULL,
  `SAND_NAME` int NOT NULL,
  `amount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finishwaste`
--

LOCK TABLES `finishwaste` WRITE;
/*!40000 ALTER TABLE `finishwaste` DISABLE KEYS */;
/*!40000 ALTER TABLE `finishwaste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ITEM_ID` int NOT NULL AUTO_INCREMENT,
  `ITEM_NAME` varchar(100) NOT NULL,
  `ITEM_QTY` double DEFAULT NULL,
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'beef',2),(2,'ham',3),(3,'chickenslice',4),(4,'meatball',3),(5,'teriyaki',6),(6,'bulgogi',4),(7,'bbq',6),(8,'mozzarella',6),(9,'cheeseslice',6),(10,'lettuce',4),(11,'carrot',6),(12,'tomato',3),(13,'onion',4),(14,'cucumber',5),(15,'bacon',5),(16,'tuna',7),(17,'BRD',200),(18,'KETCHUB',50),(19,'CHILLI',50),(20,'SPICYMAYO',50),(21,'CHEESE',50),(22,'thousandISLAND',50),(23,'HONEYMUSTARD',50),(24,'SWEETONION',50),(25,'MAYO',50),(26,'MUSTARD',50);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meat`
--

DROP TABLE IF EXISTS `meat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meat` (
  `SAND_ID` int NOT NULL,
  `ITEM_ID` int NOT NULL,
  `MEAT_AMOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meat`
--

LOCK TABLES `meat` WRITE;
/*!40000 ALTER TABLE `meat` DISABLE KEYS */;
INSERT INTO `meat` VALUES (12,1,0),(12,2,0),(12,3,0),(10,16,0),(11,2,0),(11,3,0),(9,2,0),(9,3,0),(9,15,0),(8,5,0),(7,6,0),(6,7,0),(5,1,0),(4,4,0),(3,3,0),(2,2,0),(1,15,0);
/*!40000 ALTER TABLE `meat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `RECIPE_ID` int NOT NULL AUTO_INCREMENT,
  `EMP_ID` int NOT NULL,
  PRIMARY KEY (`RECIPE_ID`),
  UNIQUE KEY `RECIPE_ID_UNIQUE` (`RECIPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,1),(2,1),(22,22),(23,23),(24,24),(25,25);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesbasket`
--

DROP TABLE IF EXISTS `salesbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesbasket` (
  `RECIPE_NO` int NOT NULL,
  `SAND_NO` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesbasket`
--

LOCK TABLES `salesbasket` WRITE;
/*!40000 ALTER TABLE `salesbasket` DISABLE KEYS */;
INSERT INTO `salesbasket` VALUES (1,1),(1,8),(1,7),(2,7),(2,9);
/*!40000 ALTER TABLE `salesbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sandwich`
--

DROP TABLE IF EXISTS `sandwich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sandwich` (
  `SAND_ID` int NOT NULL AUTO_INCREMENT,
  `SAND_NAME` varchar(45) NOT NULL,
  `SAND_PRICE` decimal(10,0) NOT NULL,
  PRIMARY KEY (`SAND_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sandwich`
--

LOCK TABLES `sandwich` WRITE;
/*!40000 ALTER TABLE `sandwich` DISABLE KEYS */;
INSERT INTO `sandwich` VALUES (1,'BLT',129),(2,'HAM',129),(3,'CHICKENSLICE',109),(4,'MEATBALL',209),(5,'ROASTBEEF',209),(6,'BBQ',149),(7,'BULGOGI',149),(8,'TERIYAKI',149),(9,'SANDWICHMELT',169),(10,'TUNA',109),(11,'HAM&CHICK',119),(12,'ALLSTAR',149),(20,'HAM',129),(21,'BBQ',149),(22,'BLT',129),(23,'BLT',129),(24,'HAM',129),(25,'HAM',129);
/*!40000 ALTER TABLE `sandwich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sauce`
--

DROP TABLE IF EXISTS `sauce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sauce` (
  `SAND_ID` int NOT NULL,
  `ITEM_ID` int NOT NULL,
  `SAUCE_AMOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sauce`
--

LOCK TABLES `sauce` WRITE;
/*!40000 ALTER TABLE `sauce` DISABLE KEYS */;
INSERT INTO `sauce` VALUES (2,18,0.001),(2,19,0.001),(1,20,0.001),(3,22,0.001),(1,23,0.001),(2,25,0.001),(3,20,0.001),(3,23,0.001),(4,25,0.001),(5,26,0.001),(5,24,0.001),(6,22,0.001),(6,23,0.001),(7,21,0.001),(7,20,0.001),(8,20,0.001),(8,23,0.001),(9,22,0.001),(9,23,0.001),(9,20,0.001),(10,23,0.001),(11,19,0.001),(11,20,0.001),(12,20,0.001),(12,23,0.001),(12,22,0.001),(1,9,0.02),(2,9,0.02),(3,9,0.02),(4,9,0.02),(5,9,0.02),(6,9,0.02),(7,9,0.02),(8,9,0.02),(9,9,0.02),(10,9,0.02),(11,9,0.02),(12,9,0.02);
/*!40000 ALTER TABLE `sauce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_punch`
--

DROP TABLE IF EXISTS `time_punch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_punch` (
  `PUNCH_NO` int NOT NULL AUTO_INCREMENT,
  `DATE_IN` datetime DEFAULT NULL,
  `DATE_OUT` datetime DEFAULT NULL,
  `TOTAL_TIME` int DEFAULT NULL,
  `OT_TIME` int DEFAULT NULL,
  `EMP_ID` int NOT NULL,
  PRIMARY KEY (`PUNCH_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_punch`
--

LOCK TABLES `time_punch` WRITE;
/*!40000 ALTER TABLE `time_punch` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_punch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetable`
--

DROP TABLE IF EXISTS `vegetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegetable` (
  `ITEM_ID` int NOT NULL,
  `VEG_AMOUNT` double NOT NULL,
  `SAND_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetable`
--

LOCK TABLES `vegetable` WRITE;
/*!40000 ALTER TABLE `vegetable` DISABLE KEYS */;
INSERT INTO `vegetable` VALUES (10,0.02,1),(12,0.03,1),(10,0.02,2),(11,0.007,2),(12,0.03,2),(13,0.007,2),(14,0.03,2),(10,0.02,3),(11,0.007,3),(12,0.03,3),(13,0.007,3),(14,0.03,3),(10,0.02,4),(11,0.007,4),(12,0.03,4),(13,0.007,4),(14,0.03,4),(10,0.02,5),(11,0.007,5),(12,0.03,5),(13,0.007,5),(14,0.03,5),(10,0.02,6),(11,0.007,6),(12,0.03,6),(13,0.007,6),(14,0.03,6),(10,0.02,7),(11,0.007,7),(12,0.03,7),(13,0.007,7),(14,0.03,7),(10,0.02,8),(11,0.007,8),(12,0.03,8),(13,0.007,8),(14,0.03,8),(10,0.02,9),(11,0.007,9),(12,0.03,9),(13,0.007,9),(14,0.03,9),(10,0.02,10),(11,0.007,10),(12,0.03,10),(13,0.007,10),(14,0.03,10),(10,0.02,11),(11,0.007,11),(12,0.03,11),(13,0.007,11),(14,0.03,11),(10,0.02,12),(11,0.007,12),(12,0.03,12),(13,0.007,12),(14,0.03,12);
/*!40000 ALTER TABLE `vegetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `void`
--

DROP TABLE IF EXISTS `void`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `void` (
  `VOID_ID` int NOT NULL,
  `RECIPE_NO` int NOT NULL,
  `EMP_ID` int NOT NULL,
  `VOID_DATE` datetime NOT NULL,
  PRIMARY KEY (`VOID_ID`),
  UNIQUE KEY `RECIPE_NO_UNIQUE` (`RECIPE_NO`),
  UNIQUE KEY `VOID_ID_UNIQUE` (`VOID_ID`),
  UNIQUE KEY `EMP_ID_UNIQUE` (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `void`
--

LOCK TABLES `void` WRITE;
/*!40000 ALTER TABLE `void` DISABLE KEYS */;
/*!40000 ALTER TABLE `void` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waste`
--

DROP TABLE IF EXISTS `waste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waste` (
  `WASTE_ID` int NOT NULL AUTO_INCREMENT,
  `WASTE_DATE` datetime DEFAULT NULL,
  `EMP_ID` int DEFAULT NULL,
  PRIMARY KEY (`WASTE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste`
--

LOCK TABLES `waste` WRITE;
/*!40000 ALTER TABLE `waste` DISABLE KEYS */;
INSERT INTO `waste` VALUES (1,'2024-12-16 23:41:28',3),(2,'2024-12-17 07:08:31',3),(4,'2024-12-16 23:51:22',3),(5,'2024-12-16 23:37:44',3);
/*!40000 ALTER TABLE `waste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wastebasket`
--

DROP TABLE IF EXISTS `wastebasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wastebasket` (
  `WASTE_ID` int NOT NULL AUTO_INCREMENT,
  `ITEM_ID` varchar(20) NOT NULL,
  `ITEM_QTY` int DEFAULT NULL,
  PRIMARY KEY (`WASTE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wastebasket`
--

LOCK TABLES `wastebasket` WRITE;
/*!40000 ALTER TABLE `wastebasket` DISABLE KEYS */;
INSERT INTO `wastebasket` VALUES (1,'ROASTBEEF',NULL),(2,'SANDWICHMELT',NULL),(3,'SANDWICHMELT',NULL),(4,'1',NULL);
/*!40000 ALTER TABLE `wastebasket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-17 19:30:59
