-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: amit
-- ------------------------------------------------------
-- Server version	8.0.20
use `web-project-g4`;
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
-- Table structure for table `cardsPayed`
--

DROP TABLE IF EXISTS `cardsPayed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardsPayed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `selectedProducts` json NOT NULL,
  `creda` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardsPayed`
--

LOCK TABLES `cardsPayed` WRITE;
/*!40000 ALTER TABLE `cardsPayed` DISABLE KEYS */;
INSERT INTO `cardsPayed` VALUES (17,1,'[{\"Onekg\": 1, \"brand\": \"Vanila\", \"Halfkg\": 0}, {\"Onekg\": 1, \"brand\": \"Chocolate\", \"Halfkg\": 0}, {\"Onekg\": 7, \"brand\": \"Pistachio\", \"Halfkg\": 1}, {\"Onekg\": 2, \"brand\": \"Strawberry\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Pretzel\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Pecan\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Candies\", \"Halfkg\": 0}, {\"Onekg\": 4, \"brand\": \"White\", \"Halfkg\": \"4\"}]','2021-09-19 21:33:25'),(41,1,'[{\"Onekg\": 0, \"brand\": \"Vanila\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Chocolate\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Pistachio\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Strawberry\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Pretzel\", \"Halfkg\": 1}, {\"Onekg\": 0, \"brand\": \"Pecan\", \"Halfkg\": 2}, {\"Onekg\": 1, \"brand\": \"Candies\", \"Halfkg\": 10}, {\"Onekg\": 0, \"brand\": \"White\", \"Halfkg\": 0}]','2021-09-29 19:49:31'),(42,1,'[{\"Onekg\": 0, \"brand\": \"Vanila\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Chocolate\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Pistachio\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Strawberry\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Pretzel\", \"Halfkg\": 0}, {\"Onekg\": 1, \"brand\": \"Pecan\", \"Halfkg\": 1}, {\"Onekg\": 0, \"brand\": \"Candies\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"White\", \"Halfkg\": 0}]','2021-10-01 13:46:13');
/*!40000 ALTER TABLE `cardsPayed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `message` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Ariel Booo','ariel@asf.com','dfgdgdfgfgdg');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userFullName` varchar(200) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `eventType` varchar(100) NOT NULL,
  `eventLocation` varchar(200) NOT NULL,
  `numOfParticipants` int NOT NULL,
  `eventDate` datetime NOT NULL,
  `details` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Roy Benisty','roy@asf.com','Wedding','Garden',200,'2021-09-29 00:00:00','Great wedding lot of ice creams'),(2,'Roy Benisty','roy@asf.com','Wedding','Garden',200,'2021-09-29 00:00:00','Great wedding lot of ice creams'),(3,'Roy Benisty','roy@asf.com','Wedding','dfdf',33,'2021-09-29 00:00:00','dffsfdsf'),(4,'Roy Benisty','roy@asf.com','Wedding','dfdf',33,'2021-09-29 00:00:00','dffsfdsf'),(5,'Roy Benisty','roy@asf.com','Wedding','dfdf',33,'2021-09-29 00:00:00','dffsfdsf'),(6,'Roy Benisty','roy@asf.com','safsadf','asdfasdf',433,'2021-09-29 00:00:00','sdsdsdsd'),(7,'Roy Benisty','roy@asf.com','safsadf','asdfasdf',433,'2021-09-29 00:00:00','sdsdsdsd'),(8,'Roy Benisty','roy@asf.com','Wedding','Garden',55,'2021-09-29 00:00:00','dfdfdfdfdfdf'),(9,'Roy Benisty','roy@asf.com','Wedding','Garden',55,'2021-09-29 00:00:00','dfdfdfdfdfdf'),(10,'Roy Benisty','roy@asf.com','Wedding','Garden',55,'2021-09-29 00:00:00','dfdfdfdfdfdf'),(11,'Roy Benisty','roy@asf.com','Wedding','Garden',55,'2021-09-29 00:00:00','dfdfdfdfdfdf'),(12,'Roy Benisty','roy@asf.com','Wedding','Garden',44,'2021-09-29 00:00:00','dfsfds'),(13,'Roy Benisty','roy@asf.com','Wedding','Garden',44,'2021-09-29 00:00:00','dfsfds'),(14,'Roy Benisty','roy@asf.com','Wedding','Garden',44,'2021-09-29 00:00:00','dfsfds'),(15,'Roy Benisty','roy@asf.com','Wedding','Garden',44,'2021-09-29 00:00:00','dfsfsdf');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icecream`
--

DROP TABLE IF EXISTS `icecream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icecream` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price1Kg` float NOT NULL,
  `priceHalfKg` float NOT NULL,
  `category` varchar(45) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icecream`
--

LOCK TABLES `icecream` WRITE;
/*!40000 ALTER TABLE `icecream` DISABLE KEYS */;
INSERT INTO `icecream` VALUES (4,'Vanila','Rich ice-cream with vanila touches',20,12,'cream','Vanilla.jpeg'),(5,'Chocolate','Belgian chocolate ice-cream',20,12,'cream','chocolate.jpeg'),(6,'Pistachio','Our favorite pistachio ice-cream\n\n',24,14,'sorbet','pistachio.jpeg'),(7,'Strawberry','Strawberries ice-cream\n\n',20,12,'sorbet','strawberry.jpeg');
/*!40000 ALTER TABLE `icecream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cartID` int NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(45) NOT NULL,
  `postalCode` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `idNumber` varchar(10) DEFAULT NULL,
  `creditCard` varchar(20) DEFAULT NULL,
  `expDate` varchar(6) DEFAULT NULL,
  `paymentNumber` int DEFAULT NULL,
  `cvv` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,0,'ddddd','Netanya','4256103','Israel','123123123','2342394239482394','0724',2,'456'),(2,17,'Shvat','Netanya','4256103','Israel','23423234','2324242342342342','0724',1,'123'),(3,41,'Shvat','Netanya','4256103','Israel','23423234','2324242342342342','0724',2,'678'),(4,42,'Shvat','Netanya','4256103','Israel','23423234','2324242342342342','0724',2,'678');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `selectedProducts` json NOT NULL,
  `creda` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (37,3,'[{\"Onekg\": 0, \"brand\": \"Vanila\", \"Halfkg\": 0}, {\"Onekg\": 3, \"brand\": \"Chocolate\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Pistachio\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Strawberry\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Pretzel\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Pecan\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"Candies\", \"Halfkg\": 0}, {\"Onekg\": 0, \"brand\": \"White\", \"Halfkg\": 0}]','2021-09-27 13:35:20');
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ariel@asf.com','123456','Ariel','Booo','0545593494'),(2,'ariel1@asf.com','123456','Ariel2','Boo222o','0545593494'),(3,'roy@asf.com','123456','Roy','Benisty','0545593494');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-01 17:07:49
