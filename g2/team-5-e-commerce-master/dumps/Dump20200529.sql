CREATE DATABASE IF NOT EXISTS `ecommerceone` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerceone`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerceone
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `a`
--

DROP TABLE IF EXISTS `a`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a`
(
    `PRODUCTID` int DEFAULT NULL,
    `ORDERID`   int DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a`
--

LOCK TABLES `a` WRITE;
/*!40000 ALTER TABLE `a`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `a`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address`
(
    `ADDRESSID`  int NOT NULL,
    `ORDERID`    int         DEFAULT NULL,
    `CITY`       varchar(45) DEFAULT NULL,
    `PROVINCE`   varchar(45) DEFAULT NULL,
    `STATE`      varchar(45) DEFAULT NULL,
    `STREETNO`   varchar(45) DEFAULT NULL,
    `STREETNAME` varchar(45) DEFAULT NULL,
    `POSTALCODE` int         DEFAULT NULL,
    PRIMARY KEY (`ADDRESSID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `address`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin`
(
    `ADMINID`       int NOT NULL,
    `ADMINNAME`     varchar(45) DEFAULT NULL,
    `ADMINPASSWORD` varchar(45) DEFAULT NULL,
    `ADMINEMAIL`    varchar(45) DEFAULT NULL,
    PRIMARY KEY (`ADMINID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `admin`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer`
(
    `CUSTOMERID` int NOT NULL,
    `PAYMENTID`  int         DEFAULT NULL,
    `WISHLISTID` int         DEFAULT NULL,
    `USERNAME`   varchar(45) DEFAULT NULL,
    `PASSWORDS`  varchar(45) DEFAULT NULL,
    `FULL_NAME`  varchar(45) DEFAULT NULL,
    `GENDER`     varchar(45) DEFAULT NULL,
    `PHONE`      bigint      DEFAULT NULL,
    PRIMARY KEY (`CUSTOMERID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `customer`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders`
(
    `ORDERID`    int NOT NULL,
    `ADDRESSID`  int      DEFAULT NULL,
    `PAYMENTID`  int      DEFAULT NULL,
    `CUSTOMERID` int      DEFAULT NULL,
    `SHIPPINGID` int      DEFAULT NULL,
    `ORDERDATE`  datetime DEFAULT NULL,
    `TOTALPRICE` double   DEFAULT NULL,
    `QUANTITY`   double   DEFAULT NULL,
    PRIMARY KEY (`ORDERID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `orders`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment`
(
    `PAYMENTID`  int NOT NULL,
    `CUSTOMERID` int         DEFAULT NULL,
    `CARD`       varchar(45) DEFAULT NULL,
    `WECHAT`     varchar(45) DEFAULT NULL,
    `ALIPAY`     varchar(45) DEFAULT NULL,
    PRIMARY KEY (`PAYMENTID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `payment`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product`
(
    `PRODUCTID`   int NOT NULL,
    `WISHLISTID`  int         DEFAULT NULL,
    `ADMINID`     int         DEFAULT NULL,
    `NAME`        varchar(45) DEFAULT NULL,
    `PRICE`       double      DEFAULT NULL,
    `DESCRIPTION` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`PRODUCTID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `product`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping`
(
    `SHIPPINGID`   int NOT NULL,
    `ORDERID`      int      DEFAULT NULL,
    `SHIPPINGFEE`  double   DEFAULT NULL,
    `SHIPPINGTIME` datetime DEFAULT NULL,
    PRIMARY KEY (`SHIPPINGID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist`
(
    `WISHLISTID` int NOT NULL,
    `CUSTOMERID` int DEFAULT NULL,
    PRIMARY KEY (`WISHLISTID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ecommerceone'
--

--
-- Dumping routines for database 'ecommerceone'
--
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2020-05-29  9:30:44
