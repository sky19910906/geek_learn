-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: ds_0
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `eshop_order_0`
--

DROP TABLE IF EXISTS `eshop_order_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_0` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_0`
--

LOCK TABLES `eshop_order_0` WRITE;
/*!40000 ALTER TABLE `eshop_order_0` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_1`
--

DROP TABLE IF EXISTS `eshop_order_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_1` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_1`
--

LOCK TABLES `eshop_order_1` WRITE;
/*!40000 ALTER TABLE `eshop_order_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_10`
--

DROP TABLE IF EXISTS `eshop_order_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_10` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_10`
--

LOCK TABLES `eshop_order_10` WRITE;
/*!40000 ALTER TABLE `eshop_order_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_11`
--

DROP TABLE IF EXISTS `eshop_order_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_11` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_11`
--

LOCK TABLES `eshop_order_11` WRITE;
/*!40000 ALTER TABLE `eshop_order_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_12`
--

DROP TABLE IF EXISTS `eshop_order_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_12` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_12`
--

LOCK TABLES `eshop_order_12` WRITE;
/*!40000 ALTER TABLE `eshop_order_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_13`
--

DROP TABLE IF EXISTS `eshop_order_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_13` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_13`
--

LOCK TABLES `eshop_order_13` WRITE;
/*!40000 ALTER TABLE `eshop_order_13` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_14`
--

DROP TABLE IF EXISTS `eshop_order_14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_14` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_14`
--

LOCK TABLES `eshop_order_14` WRITE;
/*!40000 ALTER TABLE `eshop_order_14` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_15`
--

DROP TABLE IF EXISTS `eshop_order_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_15` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_15`
--

LOCK TABLES `eshop_order_15` WRITE;
/*!40000 ALTER TABLE `eshop_order_15` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_2`
--

DROP TABLE IF EXISTS `eshop_order_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_2` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_2`
--

LOCK TABLES `eshop_order_2` WRITE;
/*!40000 ALTER TABLE `eshop_order_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_3`
--

DROP TABLE IF EXISTS `eshop_order_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_3` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_3`
--

LOCK TABLES `eshop_order_3` WRITE;
/*!40000 ALTER TABLE `eshop_order_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_4`
--

DROP TABLE IF EXISTS `eshop_order_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_4` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_4`
--

LOCK TABLES `eshop_order_4` WRITE;
/*!40000 ALTER TABLE `eshop_order_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_5`
--

DROP TABLE IF EXISTS `eshop_order_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_5` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_5`
--

LOCK TABLES `eshop_order_5` WRITE;
/*!40000 ALTER TABLE `eshop_order_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_6`
--

DROP TABLE IF EXISTS `eshop_order_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_6` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_6`
--

LOCK TABLES `eshop_order_6` WRITE;
/*!40000 ALTER TABLE `eshop_order_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_7`
--

DROP TABLE IF EXISTS `eshop_order_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_7` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_7`
--

LOCK TABLES `eshop_order_7` WRITE;
/*!40000 ALTER TABLE `eshop_order_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_8`
--

DROP TABLE IF EXISTS `eshop_order_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_8` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_8`
--

LOCK TABLES `eshop_order_8` WRITE;
/*!40000 ALTER TABLE `eshop_order_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eshop_order_9`
--

DROP TABLE IF EXISTS `eshop_order_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eshop_order_9` (
  `ORDER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `USER_ID` bigint NOT NULL COMMENT '用户编号',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `ORDER_STATUS` char(1) NOT NULL COMMENT '订单状态 : 1-已下单\n2-支付中\n3-支付成功\n4-已取消\n5-支付失败\n6-已超时',
  `ORDER_PRICE` decimal(15,2) NOT NULL COMMENT '订单总价',
  `TIME_OUT` datetime NOT NULL COMMENT '超时时间',
  `ORDER_SOURCE` char(1) DEFAULT NULL COMMENT '订单来源 : 1-APP\n2-网站\n3-小程序\n4-三方推广\n',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `DELETE_FLAG` char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
  `JPA_VERSION` int NOT NULL COMMENT '乐观锁版本号',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电商订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eshop_order_9`
--

LOCK TABLES `eshop_order_9` WRITE;
/*!40000 ALTER TABLE `eshop_order_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `eshop_order_9` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-27 13:45:24
