CREATE DATABASE  IF NOT EXISTS `speak` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `speak`;
-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: 121.40.68.202    Database: speak
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_app_history`
--

DROP TABLE IF EXISTS `t_app_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(45) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `partOne` text,
  `partOneQuestion` text,
  `partTwo` text,
  `partThree` text,
  `partThreeQuestion` text,
  `topic` text,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `part` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `point` varchar(45) DEFAULT NULL,
  `num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_history`
--

LOCK TABLES `t_app_history` WRITE;
/*!40000 ALTER TABLE `t_app_history` DISABLE KEYS */;
INSERT INTO `t_app_history` VALUES (36,'1bd3a90c-ec77-4de1-ba0b-cd578dd53d66',1,'3,7,','0','','','0','Home,Neighbors,','admin@speak.com','2014-09-19 17:48:13','admin@speak.com','2014-09-19 17:48:13','self',NULL,NULL,NULL,NULL,NULL),(37,'c87f7f21-21e1-4b9d-8a91-d1a8aff85942',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-19 17:49:31','admin@speak.com','2014-09-19 17:49:31','self',NULL,NULL,NULL,NULL,NULL),(38,'3ce56cec-402a-4ae2-aeee-0fcff1ca4025',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-19 17:52:21','admin@speak.com','2014-09-19 17:52:21','self',NULL,NULL,NULL,NULL,NULL),(39,'4c892c28-f140-4e1f-9a1d-a9a640ad6ac7',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-19 17:54:19','admin@speak.com','2014-09-19 17:54:19','self',NULL,NULL,NULL,NULL,NULL),(40,'5b217688-8e17-4bf5-adda-846f8e6d8ad8',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-19 17:55:32','admin@speak.com','2014-09-19 17:55:32','self',NULL,NULL,NULL,NULL,NULL),(41,'847a11d7-ec59-411e-84ad-8448c123acda',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-19 17:55:41','admin@speak.com','2014-09-19 17:55:41','self',NULL,NULL,NULL,NULL,NULL),(42,'815dd5b5-a354-4279-b358-b3203390eff8',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-19 17:56:00','admin@speak.com','2014-09-19 17:56:00','self',NULL,NULL,NULL,NULL,NULL),(43,'2d7d24cb-25f1-4a45-b012-b62ac1351772',1,'1,6,','0','','','0','Animals,Music,','admin@speak.com','2014-09-19 17:57:13','admin@speak.com','2014-09-19 17:57:13','self',NULL,NULL,NULL,NULL,NULL),(44,'2eb0f516-07df-4cc4-b5fe-700d5db7c430',1,'16,18,9,13,27,','0','','','0',NULL,'admin@speak.com','2014-09-19 18:01:03','admin@speak.com','2014-09-19 18:01:03','point','part1','2014-09-30','上海','考点一','5'),(45,'5e433529-488a-45fd-9ed1-0747656f941d',1,'10,5,24,15,11,','0','','','0',NULL,'admin@speak.com','2014-09-19 18:01:12','admin@speak.com','2014-09-19 18:01:12','point','part1','2014-09-30','上海','考点一','5'),(46,'f6107d85-5590-47c4-8de4-da5b28723863',1,'1,','0','','','0','Animals,','admin@speak.com','2014-09-19 18:04:38','admin@speak.com','2014-09-19 18:04:38','self',NULL,NULL,NULL,NULL,NULL),(47,'5361b398-5cf1-4092-9eda-87b4e6dccbbe',1,'1,','0','','','0','Animals,','admin@speak.com','2014-09-19 18:11:27','admin@speak.com','2014-09-19 18:11:27','self',NULL,NULL,NULL,NULL,NULL),(48,'de895aff-2357-418a-9bd8-f6de7b6c7ba3',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-19 18:12:28','admin@speak.com','2014-09-19 18:12:28','self',NULL,NULL,NULL,NULL,NULL),(49,'e40d60ad-cf2c-41ab-bcf0-612d87bffff6',1,'1,','0','','','0','Animals,','admin@speak.com','2014-09-19 18:19:03','admin@speak.com','2014-09-19 18:19:03','self',NULL,NULL,NULL,NULL,NULL),(50,'b0e12d12-2b65-4a2b-9006-cb43755edb3b',1,'1,','0','','','0','Animals,','admin@speak.com','2014-09-21 16:01:41','admin@speak.com','2014-09-21 16:01:41','self',NULL,NULL,NULL,NULL,NULL),(51,'13a28119-b5d8-46eb-b46a-4304f03de5a6',1,'9,27,8,19,18,','0','','','0',NULL,'admin@speak.com','2014-09-21 22:59:53','admin@speak.com','2014-09-21 22:59:53','point','part1','2014-09-30','上海','考点一','5'),(52,'b3aa4b36-fa20-4430-9a40-892f48604804',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-21 23:00:00','admin@speak.com','2014-09-21 23:00:00','self',NULL,NULL,NULL,NULL,NULL),(53,'0b65359a-cbbc-4166-ab89-e6ad913de901',1,'1,','0','','','0','Animals,','admin@speak.com','2014-09-21 23:06:38','admin@speak.com','2014-09-21 23:06:38','self',NULL,NULL,NULL,NULL,NULL),(54,'a66eacbb-4413-4afd-8fcc-aa707e120f1e',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-21 23:07:47','admin@speak.com','2014-09-21 23:07:47','self',NULL,NULL,NULL,NULL,NULL),(55,'29c7b31b-72ab-4986-bd6e-4a8b9894b05d',1,'1,','0','','','0','Animals,','admin@speak.com','2014-09-21 23:10:30','admin@speak.com','2014-09-21 23:10:30','self',NULL,NULL,NULL,NULL,NULL),(56,'f3aa5b88-f0d6-4bf8-ab2a-11384ee17794',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-21 23:10:47','admin@speak.com','2014-09-21 23:10:47','self',NULL,NULL,NULL,NULL,NULL),(57,'0cb98e8e-0904-4c64-b0b3-c4e4cef13bc2',1,'8,16,24,','0','','','0','Parties,Dictionary,Maps,','admin@speak.com','2014-09-23 16:01:38','admin@speak.com','2014-09-23 16:01:38','self',NULL,NULL,NULL,NULL,NULL),(58,'bd3e0a6a-f149-4854-af2b-d5fb09ee508c',1,'1,13,22,','0','','','0','Animals,Clothes,Concerntrating,','admin@speak.com','2014-09-23 16:39:03','admin@speak.com','2014-09-23 16:39:03','self',NULL,NULL,NULL,NULL,NULL),(59,'7eedb9ee-3a18-4a67-a1dd-099abfc7959e',1,'1,6,10,','0','','','0','Animals,Music,TV,','admin@speak.com','2014-09-23 23:55:13','admin@speak.com','2014-09-23 23:55:13','self',NULL,NULL,NULL,NULL,NULL),(60,'9ed278ae-d828-4e37-9cb4-f71fb94ed742',1,'1,','0','','','0','Animals,','admin@speak.com','2014-09-24 16:14:52','admin@speak.com','2014-09-24 16:14:52','self',NULL,NULL,NULL,NULL,NULL),(61,'1120564e-06ae-42ba-b48b-90582029b4dc',1,'18,15,14,28,11,','0','','','0',NULL,'admin@speak.com','2014-09-24 16:15:08','admin@speak.com','2014-09-24 16:15:08','point','part1','2014-09-30','上海','考点一','5'),(62,'56ee1681-38f0-4f85-ac65-17a8b752483c',1,'1,','0','','','0','Animals,','admin@speak.com','2014-09-24 16:18:53','admin@speak.com','2014-09-24 16:18:53','self',NULL,NULL,NULL,NULL,NULL),(63,'cd809c38-9e3f-4bdc-b1c0-a295dde0d86a',1,'17,21,16,19,29,','0','','','0',NULL,'admin@speak.com','2014-09-25 09:30:54','admin@speak.com','2014-09-25 09:30:54','point','part1','2014-09-30','上海','考点一','5'),(64,'cb23efd6-aa6f-4b12-8066-bc699d386a20',1,'3,7,','0','','','0','Home,Neighbors,','admin@speak.com','2014-09-26 02:38:33','admin@speak.com','2014-09-26 02:38:33','self',NULL,NULL,NULL,NULL,NULL),(65,'118854f0-4596-4a1f-9db8-452ffa058b91',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-09-28 10:54:32','admin@speak.com','2014-09-28 10:54:32','self',NULL,NULL,NULL,NULL,NULL),(66,'be70ea02-b896-45e8-b4c4-571257e7324d',9,'1,','0','','','0','Animals,','339026934@qq.com','2014-09-29 20:58:25','339026934@qq.com','2014-09-29 20:58:25','self',NULL,NULL,NULL,NULL,NULL),(67,'3ff17597-e2f5-4325-ad2e-85d95e510b2f',9,'3,','0','','','0','Home,','339026934@qq.com','2014-09-29 20:59:17','339026934@qq.com','2014-09-29 20:59:17','self',NULL,NULL,NULL,NULL,NULL),(68,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'13,12,19,22,20,28,7,23,1,30,','0','','','0',NULL,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59','point','part1','2014-10-10','广州','考点二','10'),(69,'2f955013-294e-4996-bee1-f6b068ea0c1c',1,'1,22,','0','','','0','Animals,Concerntrating,','admin@speak.com','2014-10-01 11:19:22','admin@speak.com','2014-10-01 11:19:22','self',NULL,NULL,NULL,NULL,NULL),(70,'b53820ed-a9be-4acb-9fe6-1648d53916fc',1,'19,1,15,14,6,','0','','','0',NULL,'admin@speak.com','2014-10-01 11:19:57','admin@speak.com','2014-10-01 11:19:57','point','part1','2014-09-30','上海','考点一','5'),(71,'80e74750-3abf-445b-ae06-953a051c27ec',1,'16,24,20,11,27,6,15,30,19,9,','0','','','0',NULL,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39','point','part1','2014-09-30','上海','考点一','10'),(72,'573143b8-89a1-4d44-bdba-b004e8908d6c',1,'4,11,9,8,10,','0','','','0',NULL,'admin@speak.com','2014-10-07 14:19:52','admin@speak.com','2014-10-07 14:19:52','point','part1','2014-09-30','上海','考点一','5'),(73,'9b7bef15-25a2-4af4-a5cf-41b6073f4ec9',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-07 16:09:33','admin@speak.com','2014-10-07 16:09:33','self',NULL,NULL,NULL,NULL,NULL),(74,'3d7d3045-c2ba-4d2e-b7cc-55963a8d1b44',1,'7,11,','0','','','0','Neighbors,Time,','admin@speak.com','2014-10-08 01:07:12','admin@speak.com','2014-10-08 01:07:12','self',NULL,NULL,NULL,NULL,NULL),(75,'18988a57-816f-44b7-83ac-6fc4b83f3f75',1,'23,28,14,21,6,','0','','','0',NULL,'admin@speak.com','2014-10-08 05:29:32','admin@speak.com','2014-10-08 05:29:32','point','part1','2014-09-30','上海','考点一','5'),(76,'faa1b56d-c5ee-4125-8658-7ca4966f859b',1,'26,12,7,27,29,','0','','','0',NULL,'admin@speak.com','2014-10-08 05:42:23','admin@speak.com','2014-10-08 05:42:23','point','part1','2014-12-20','华东区','上大','5'),(77,'5236f33e-2227-4142-86df-2b71db8fdb08',1,'17,30,23,9,8,','0','','','0',NULL,'admin@speak.com','2014-10-08 08:01:46','admin@speak.com','2014-10-08 08:01:46','point','part1','2014-12-20','华东区','上大','5'),(78,'e363da39-f782-489f-b499-d3ce88e2da11',1,'16,13,22,12,23,','0','','','0',NULL,'admin@speak.com','2014-10-08 08:49:07','admin@speak.com','2014-10-08 08:49:07','point','part1','2014-12-20','华东区','上大','5'),(79,'737a0d70-3c58-43b0-b890-12329ba26894',1,'6,3,30,8,29,20,10,12,15,19,','0','','','0',NULL,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11','point','part1','2014-12-20','华东区','上大','10'),(80,'df286795-f533-4bc0-a88d-159f6fc38e9e',1,'30,7,25,8,12,','0','','','0',NULL,'admin@speak.com','2014-10-08 08:55:20','admin@speak.com','2014-10-08 08:55:20','point','part1','2014-12-20','华东区','上大','5'),(81,'e7ef034b-4229-4a50-8abc-c2dd09477b76',1,'18,30,23,12,10,','0','','','0',NULL,'admin@speak.com','2014-10-08 08:55:37','admin@speak.com','2014-10-08 08:55:37','point','part1','2014-12-20','华东区','合肥','5'),(82,'17823e73-8c9a-4986-9e90-74083f0674dc',1,'19,9,13,5,10,','0','','','0',NULL,'admin@speak.com','2014-10-08 09:07:26','admin@speak.com','2014-10-08 09:07:26','point','part1','2014-12-20','华东区','合肥','5'),(83,'a0de8d99-2453-4e41-9fdb-2ae9f0462041',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-08 09:46:00','admin@speak.com','2014-10-08 09:46:00','self',NULL,NULL,NULL,NULL,NULL),(84,'12fe25d2-e5bb-4394-a741-431e7a8d00c8',1,'7,11,6,23,21,','0','','','0',NULL,'admin@speak.com','2014-10-08 09:47:48','admin@speak.com','2014-10-08 09:47:48','point','part1','2014-12-20','华东区','合肥','5'),(85,'ed12029a-4187-4f48-b31b-4e857a34615e',1,'','0','','','0',NULL,'admin@speak.com','2014-10-08 09:59:46','admin@speak.com','2014-10-08 09:59:46','point','part3','2014-12-20','华东区','合肥','5'),(86,'265e12ae-2882-4757-87b2-f508bd4ecb11',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-08 13:49:50','admin@speak.com','2014-10-08 13:49:50','self',NULL,NULL,NULL,NULL,NULL),(87,'ba3577f2-864f-43ea-8766-80c723ce223c',1,'21,','0','','','0','Cars,','admin@speak.com','2014-10-08 13:51:12','admin@speak.com','2014-10-08 13:51:12','self',NULL,NULL,NULL,NULL,NULL),(88,'41194861-83ef-4092-a148-801e8791c5e8',1,'12,6,9,7,19,4,10,20,14,15,','0','','','0',NULL,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47','point','part1','2014-12-20','华东区','上大','10'),(89,'5b608039-fe3d-4c5d-880e-08ee46901ab9',1,'21,11,9,14,29,','0','','','0',NULL,'admin@speak.com','2014-10-09 00:00:37','admin@speak.com','2014-10-09 00:00:37','point','part1','2014-12-20','华东区','上大','5'),(90,'b02a8e12-d87c-43c4-bb62-180516f755e3',1,'1,20,14,22,5,','0','','','0',NULL,'admin@speak.com','2014-10-10 10:38:02','admin@speak.com','2014-10-10 10:38:02','point','part1','2014-12-20','华东区','上大','5'),(91,'f54bc96f-9a69-4787-9f70-e679594e1573',1,'29,17,8,19,16,','0','','','0',NULL,'admin@speak.com','2014-10-10 10:38:38','admin@speak.com','2014-10-10 10:38:38','point','part1','2014-12-20','华北&amp;华中区','北教中心','5'),(92,'4e4fa1a8-0a4f-4d73-82a7-2816b4a50516',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-10 15:57:46','admin@speak.com','2014-10-10 15:57:46','self',NULL,NULL,NULL,NULL,NULL),(93,'992568ae-c596-4c99-86ec-a7c3a426b9fd',1,'15,9,23,5,17,','0','','','0',NULL,'admin@speak.com','2014-10-10 16:11:26','admin@speak.com','2014-10-10 16:11:26','point','part1','2014-12-20','华北&amp;华中区','北教中心','5'),(94,'24180601-50f4-4f8f-8f27-b668b07555d9',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-11 13:22:10','admin@speak.com','2014-10-11 13:22:10','self',NULL,NULL,NULL,NULL,NULL),(95,'c1c2ac56-92fe-469c-a882-25cedcaeadd9',1,'25,3,21,24,29,','0','','','0',NULL,'admin@speak.com','2014-10-11 13:25:02','admin@speak.com','2014-10-11 13:25:02','point','part1','2014-12-20','华北&amp;华中区','北教中心','5'),(96,'3f36ca4c-6b3f-4ccd-bae5-3ac6e4c97fed',1,'15,','0','','','0','Computers,','admin@speak.com','2014-10-11 22:21:03','admin@speak.com','2014-10-11 22:21:03','self',NULL,NULL,NULL,NULL,NULL),(97,'ede9a459-a0ef-433c-a98b-195f5d6d899b',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-12 23:10:02','admin@speak.com','2014-10-12 23:10:02','self',NULL,NULL,NULL,NULL,NULL),(98,'fca3944f-5981-4b84-aac3-2b9bc63b3983',1,'28,25,20,27,30,','0','','','0',NULL,'admin@speak.com','2014-10-12 23:11:29','admin@speak.com','2014-10-12 23:11:29','point','part1','2014-12-20','华北&amp;华中区','北教中心','5'),(99,'2e1c8e41-d194-48d0-bcd1-389be6242732',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-12 23:14:14','admin@speak.com','2014-10-12 23:14:14','self',NULL,NULL,NULL,NULL,NULL),(100,'ea61fd22-ab9f-4271-bcfd-803b52fc6e36',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-14 14:36:34','admin@speak.com','2014-10-14 14:36:34','self',NULL,NULL,NULL,NULL,NULL),(101,'b9982fcc-b832-41b1-8c3d-86a58b416248',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-14 14:37:04','admin@speak.com','2014-10-14 14:37:04','self',NULL,NULL,NULL,NULL,NULL),(102,'4ab021a2-cf5a-43a4-b37e-bb46e8a37a58',1,'25,21,28,30,5,','0','','','0',NULL,'admin@speak.com','2014-10-14 14:37:14','admin@speak.com','2014-10-14 14:37:14','point','part1','2014-12-20','华北&amp;华中区','北教中心','5'),(103,'1a28b4f1-8c34-4733-bbc3-e8c717ef3c73',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-14 14:37:46','admin@speak.com','2014-10-14 14:37:46','self',NULL,NULL,NULL,NULL,NULL),(104,'057cc7cc-48a6-4e89-be94-7c70b2235aa5',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-14 15:29:05','admin@speak.com','2014-10-14 15:29:05','self',NULL,NULL,NULL,NULL,NULL),(105,'6f81f496-2fa6-45cc-ba9f-d3ac681507b3',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-15 13:40:07','admin@speak.com','2014-10-15 13:40:07','self',NULL,NULL,NULL,NULL,NULL),(106,'15ca1ff4-b23b-4d26-a53b-286b5a01b4f2',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-15 13:43:16','admin@speak.com','2014-10-15 13:43:16','self',NULL,NULL,NULL,NULL,NULL),(107,'18b8684a-af35-4c43-af63-f3d5f3bf34d1',1,'1,','0','','','0','Animals,','admin@speak.com','2014-10-15 21:26:01','admin@speak.com','2014-10-15 21:26:01','self',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_app_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_partone`
--

DROP TABLE IF EXISTS `t_app_partone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_partone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `seq` bigint(20) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_partone`
--

LOCK TABLES `t_app_partone` WRITE;
/*!40000 ALTER TABLE `t_app_partone` DISABLE KEYS */;
INSERT INTO `t_app_partone` VALUES (1,'Animals',1,NULL,'admin@speak.com','2014-09-09 22:02:50','admin@speak.com','2014-09-12 15:01:31'),(3,'Home',3,NULL,'admin@speak.com','2014-09-12 14:23:49','admin@speak.com','2014-09-12 14:58:27'),(4,'Hometown',4,NULL,'admin@speak.com','2014-09-12 14:25:47','admin@speak.com','2014-09-12 14:25:51'),(5,'Relax',5,NULL,'admin@speak.com','2014-09-12 14:26:04','admin@speak.com','2014-09-12 14:27:30'),(6,'Music',6,NULL,'admin@speak.com','2014-09-12 14:28:04','admin@speak.com','2014-09-12 14:28:07'),(7,'Neighbors',7,NULL,'admin@speak.com','2014-09-12 14:28:27','admin@speak.com','2014-09-12 14:28:35'),(8,'Parties',8,NULL,'admin@speak.com','2014-09-12 14:28:49','admin@speak.com','2014-09-12 14:28:52'),(9,'Photos',9,NULL,'admin@speak.com','2014-09-12 14:29:10','admin@speak.com','2014-09-12 14:31:37'),(10,'TV',10,NULL,'admin@speak.com','2014-09-12 14:32:00','admin@speak.com','2014-09-12 14:32:05'),(11,'Time',11,NULL,'admin@speak.com','2014-09-12 14:32:19','admin@speak.com','2014-09-12 14:32:22'),(12,'Birthdays',12,NULL,'admin@speak.com','2014-09-12 14:32:36','admin@speak.com','2014-09-12 14:32:39'),(13,'Clothes',13,NULL,'admin@speak.com','2014-09-12 14:32:53','admin@speak.com','2014-09-12 15:04:09'),(14,'Cooking',14,NULL,'admin@speak.com','2014-09-12 14:33:11','admin@speak.com','2014-09-12 14:33:14'),(15,'Computers',15,NULL,'admin@speak.com','2014-09-12 14:33:25','admin@speak.com','2014-09-12 14:33:27'),(16,'Dictionary',16,NULL,'admin@speak.com','2014-09-12 14:33:35','admin@speak.com','2014-09-12 14:33:56'),(17,'Languages',17,NULL,'admin@speak.com','2014-09-12 14:34:12','admin@speak.com','2014-09-12 14:34:15'),(18,'Rain',18,NULL,'admin@speak.com','2014-09-12 14:36:14','admin@speak.com','2014-09-12 14:36:17'),(19,'Shopping',19,NULL,'admin@speak.com','2014-09-12 14:36:24','admin@speak.com','2014-09-12 14:36:26'),(20,'Train Travel',20,NULL,'admin@speak.com','2014-09-12 14:36:40','admin@speak.com','2014-09-12 14:36:43'),(21,'Cars',21,NULL,'admin@speak.com','2014-09-12 14:36:54','admin@speak.com','2014-09-12 14:36:56'),(22,'Concerntrating',22,NULL,'admin@speak.com','2014-09-12 14:37:06','admin@speak.com','2014-09-12 15:06:01'),(23,'Gift',23,NULL,'admin@speak.com','2014-09-12 14:37:21','admin@speak.com','2014-09-12 14:37:24'),(24,'Maps',24,NULL,'admin@speak.com','2014-09-12 14:37:31','admin@speak.com','2014-09-12 14:37:34'),(25,'Museums',25,NULL,'admin@speak.com','2014-09-12 14:37:51','admin@speak.com','2014-09-12 14:37:53'),(26,'Noise',26,NULL,'admin@speak.com','2014-09-12 14:38:04','admin@speak.com','2014-09-12 14:38:06'),(27,'Parks',27,NULL,'admin@speak.com','2014-09-12 14:38:22','admin@speak.com','2014-09-12 14:38:25'),(28,'Street markets',28,NULL,'admin@speak.com','2014-09-12 14:38:43','admin@speak.com','2014-09-12 14:38:45'),(29,'Toys',29,NULL,'admin@speak.com','2014-09-12 14:39:28','admin@speak.com','2014-09-12 14:39:30'),(30,'Weather',30,NULL,'admin@speak.com','2014-09-12 14:39:37','admin@speak.com','2014-09-12 14:39:40');
/*!40000 ALTER TABLE `t_app_partone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_partonequestion`
--

DROP TABLE IF EXISTS `t_app_partonequestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_partonequestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `mp3name` text,
  `mp3upid` varchar(45) DEFAULT NULL,
  `partOneId` int(11) DEFAULT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_partonequestion`
--

LOCK TABLES `t_app_partonequestion` WRITE;
/*!40000 ALTER TABLE `t_app_partonequestion` DISABLE KEYS */;
INSERT INTO `t_app_partonequestion` VALUES (1,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.','Animals 1.m4a','d4f2e015-e912-488d-a528-ee055c5775c3',1,1,NULL,'admin@speak.com','2014-09-09 22:03:07','admin@speak.com','2014-09-12 15:00:30'),(2,'2. (Possibly) Have you ever been to a zoo?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.','Animals 2.m4a','6bc599c3-fcdd-4a38-9707-a0ff20719643',1,2,NULL,'admin@speak.com','2014-09-09 22:03:08','admin@speak.com','2014-09-12 15:00:51'),(3,'3.Do you think it&rsquo;s important for children to visit a zoo?','For sure. When a child is growing up, one of the best educations is teaching him in the nature world. So it is of great importance that children can get close to the animals and plants. During the visit, children can learn a lot about these creatures and have empathy for animals.','Animals 3.m4a','36766b6f-df32-45b8-b9a9-1939ac30dfd5',1,3,NULL,'admin@speak.com','2014-09-09 22:03:08','admin@speak.com','2014-09-12 15:00:49'),(4,'4.What&rsquo;s your favorite zoo animal?','I don&rsquo;t know actually but I guess I like the wild animal zoo most, because I can experience the real nature world in the car. The most exciting moment is the animal jumping on the window of the car suddenly to give you a shock. \n\n','Animals 4.m4a','7166747c-4673-4186-b0a3-574785c135d7',1,4,NULL,'admin@speak.com','2014-09-09 22:03:08','admin@speak.com','2014-09-12 15:01:10'),(5,'5.Why do (you think) some people have a pet (= a pet animal)?','These day people are lonelier and lonelier than before. So it&rsquo;s of great importance to have a company for the old and the young. I bet many individuals consider their pets as friends. Some even live with their pets for decades.','Animals 5.m4a','d959e5f4-f346-4681-841f-5989fa889cfe',1,5,NULL,'admin@speak.com','2014-09-09 22:03:08','admin@speak.com','2014-09-12 15:01:27'),(11,'1. What times in your life do you need to concentrate on doing something?','Well, the top thing on my list is the important exam like the entrance examination for college. I can still remember the day I entered the classroom and told myself to be concentrated on the test paper. That&rsquo;s the moment I really need to focus on something.','Concentrating 1.m4a','d05e4904-40ab-4f80-9f35-416dd2e9f1ff',22,11,NULL,'admin@speak.com','2014-09-12 14:57:25','admin@speak.com','2014-09-12 15:04:55'),(12,'2. Does your job require concentration and attention to detail?','As a student, of course I need to be concentrated and pay all my attention to my study, especially on classes. Once I divert my attention to something else while studying, it often results in the failure of an exam or a miss of some knowledge.','Concentrating 2.m4a','6500550f-1357-4d1e-a6ec-35666cd72659',22,12,NULL,'admin@speak.com','2014-09-12 14:57:26','admin@speak.com','2014-09-12 15:05:13'),(13,'3. Is it difficult/easy to concentrate? (Why?)','Well, it depends. Scientific facts prove that concentration is linked with the environment. The nosier the environment is, the less you can concentrate. So from my point of view, it&rsquo;s easier to concentrate in a quiet and friendly environment.','Concentrating 3.m4a','fcf08e8a-9f9d-4da0-b67a-4dae530ef04b',22,13,NULL,'admin@speak.com','2014-09-12 14:57:26','admin@speak.com','2014-09-12 15:05:28'),(14,'4. What affects your ability to concentrate?','Basically it&rsquo;s the environment that partly decides the ability of concentration. You know, it can be very difficult for a man to pay attention to something in a bad environment. Besides, the ability is also related to the self-practice and the will.','Concentrating 4.m4a','f13bffe1-8137-4e8a-92c1-98b3f5a8a23f',22,14,NULL,'admin@speak.com','2014-09-12 14:57:26','admin@speak.com','2014-09-12 15:05:44'),(15,'5. What type of environment do you need to work peacefully?','Regards the working environment, I prefer a quiet and comfortable environment for me to concentrate. Also there should not be anything that may divert me from the work like electronic entertainment or the television.','Concentrating 5.m4a','5665011e-edeb-4c38-a338-82221ca68101',22,15,NULL,'admin@speak.com','2014-09-12 14:57:27','admin@speak.com','2014-09-12 15:05:57'),(16,NULL,NULL,'Concentrating 6.m4a','1ad28054-8416-4df1-9806-697ce50169a9',22,16,NULL,'admin@speak.com','2014-09-12 14:57:27','admin@speak.com','2014-09-12 14:57:27'),(17,NULL,NULL,'Concentrating 7.m4a','b4316820-6e13-41bc-8645-99e44829a460',22,17,NULL,'admin@speak.com','2014-09-12 14:57:28','admin@speak.com','2014-09-12 14:57:28'),(18,'1. What clothes do you usually like to wear?','My favorite kind of clothing is very shiny, dark clothing. I like wearing clothes designed by interesting designer. Also suitable sport clothes are my second choice because they make me feel vigorous and refreshed.','Clothes 1.m4a','ea53b382-00f7-43bd-a397-0e688f01b7bf',13,18,NULL,'admin@speak.com','2014-09-12 14:57:50','admin@speak.com','2014-09-12 15:03:02'),(19,'2.Do/did you wear the same clothes at school and at home?','That&rsquo;s an interesting question. Most of the time I have to wear school uniform while at school. When I get home I change into all kinds of clothing. The schools uniforms make us look uniform and show our identity but the clothes wearing at home show our personality.','Clothes 2.m4a','36420b22-9d12-43b0-b791-7658d874a986',13,19,NULL,'admin@speak.com','2014-09-12 14:57:50','admin@speak.com','2014-09-12 15:03:16'),(20,'3. Will you change your clothes when you go home today?','Not for sure. Probably I guess, mainly because I don&rsquo;t need to wear school uniform, so right now I&rsquo;m wearing my casual clothes. But sometimes I change into the pajama to make myself comfortable.','Clothes 3.m4a','1b87932d-91a8-47ef-8e36-3c8ed7c09d70',13,20,NULL,'admin@speak.com','2014-09-12 14:57:51','admin@speak.com','2014-09-12 15:03:31'),(21,'4. Did you have any special clothes to wear when you were a child?','In my unclear memory I remember wearing the Zhong Shan Zhuang. It\'s a style of clothing that is actually quite old, and was worn by Sun Yatsen. I\'ve seen quite a few people wearing it these days so you see; the traditional costumes are still popular among people.','Clothes 4.m4a','f62348e9-4f4f-424b-91b4-efe8236dfe9d',13,21,NULL,'admin@speak.com','2014-09-12 14:57:51','admin@speak.com','2014-09-12 15:03:49'),(22,'5. Did you like them?\n','Yep. Even though the costume is usually in grey or black, the style is still fashion in 21 century. Besides, the culture behind the clothes is more to learn because the great Sun Yatsen gave all his time and life into the revolution and achieved a lot.\n','Clothes 5.m4a','5e269707-00f3-4e67-a056-883b5d3d2a58',13,22,NULL,'admin@speak.com','2014-09-12 14:57:51','admin@speak.com','2014-09-12 15:04:06'),(23,NULL,NULL,'Home 10.mp3','93c08b69-e161-45fa-ad0c-7c62c367221d',3,1410505302200,NULL,'admin@speak.com','2014-09-12 14:58:22','admin@speak.com','2014-09-12 15:01:40'),(24,NULL,NULL,'Home 2.mp3','fe6250ab-562f-42a9-9fdc-e4dbdee22cd6',3,24,NULL,'admin@speak.com','2014-09-12 14:58:22','admin@speak.com','2014-09-12 14:58:22'),(25,NULL,NULL,'Home 3.mp3','cdf54c2f-815a-4dcb-b59c-786abea9600b',3,25,NULL,'admin@speak.com','2014-09-12 14:58:22','admin@speak.com','2014-09-12 14:58:22'),(26,NULL,NULL,'Home 4.mp3','894ad067-fa71-43b3-b526-268a34f93d21',3,26,NULL,'admin@speak.com','2014-09-12 14:58:22','admin@speak.com','2014-09-12 14:58:22'),(27,NULL,NULL,'Home 5.mp3','8c577b64-feff-4e17-80f4-1f3a91bcc0e8',3,27,NULL,'admin@speak.com','2014-09-12 14:58:23','admin@speak.com','2014-09-12 14:58:23'),(28,NULL,NULL,'Home 6.mp3','12522cc5-df02-4a60-b56e-4274e8e58877',3,28,NULL,'admin@speak.com','2014-09-12 14:58:23','admin@speak.com','2014-09-12 14:58:23'),(29,NULL,NULL,'Home 7.mp3','87e509b9-9517-4b57-8cf5-d6034e7f6d71',3,29,NULL,'admin@speak.com','2014-09-12 14:58:23','admin@speak.com','2014-09-12 14:58:23'),(30,NULL,NULL,'Home 8.mp3','9dec5ea3-623d-4c9a-a34f-2464b85d750c',3,30,NULL,'admin@speak.com','2014-09-12 14:58:23','admin@speak.com','2014-09-12 14:58:23'),(31,NULL,NULL,'Home 9.mp3','5ea7f20d-136d-47a9-a98d-3604edac3e64',3,31,NULL,'admin@speak.com','2014-09-12 14:58:24','admin@speak.com','2014-09-12 14:58:24');
/*!40000 ALTER TABLE `t_app_partonequestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_partthree`
--

DROP TABLE IF EXISTS `t_app_partthree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_partthree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `mp3name` text,
  `mp3upid` varchar(45) DEFAULT NULL,
  `partTwoId` int(11) DEFAULT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_partthree`
--

LOCK TABLES `t_app_partthree` WRITE;
/*!40000 ALTER TABLE `t_app_partthree` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_app_partthree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_parttwo`
--

DROP TABLE IF EXISTS `t_app_parttwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_parttwo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` text,
  `title` text,
  `shouldSay` text,
  `content` text,
  `mp3name` text,
  `mp3upid` varchar(45) DEFAULT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_parttwo`
--

LOCK TABLES `t_app_parttwo` WRITE;
/*!40000 ALTER TABLE `t_app_parttwo` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_app_parttwo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_question`
--

DROP TABLE IF EXISTS `t_app_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `mp4name` text,
  `mp4upid` varchar(45) DEFAULT NULL,
  `imgupid` varchar(45) DEFAULT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_question`
--

LOCK TABLES `t_app_question` WRITE;
/*!40000 ALTER TABLE `t_app_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_app_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_recordhistory`
--

DROP TABLE IF EXISTS `t_app_recordhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_recordhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(45) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `partId` int(11) DEFAULT NULL,
  `topic` text,
  `point` decimal(20,0) DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_recordhistory`
--

LOCK TABLES `t_app_recordhistory` WRITE;
/*!40000 ALTER TABLE `t_app_recordhistory` DISABLE KEYS */;
INSERT INTO `t_app_recordhistory` VALUES (113,'1bd3a90c-ec77-4de1-ba0b-cd578dd53d66',1,'part1',3,'Home',NULL,0,'admin@speak.com','2014-09-19 17:48:13','admin@speak.com','2014-09-19 17:48:13'),(114,'1bd3a90c-ec77-4de1-ba0b-cd578dd53d66',1,'part1',7,'Neighbors',NULL,0,'admin@speak.com','2014-09-19 17:48:13','admin@speak.com','2014-09-19 17:48:13'),(115,'c87f7f21-21e1-4b9d-8a91-d1a8aff85942',1,'part1',1,'Animals',NULL,1,'admin@speak.com','2014-09-19 17:49:31','admin@speak.com','2014-09-19 17:50:27'),(117,'3ce56cec-402a-4ae2-aeee-0fcff1ca4025',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-19 17:52:21','admin@speak.com','2014-09-19 17:52:21'),(118,'3ce56cec-402a-4ae2-aeee-0fcff1ca4025',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-19 17:52:21','admin@speak.com','2014-09-19 17:52:21'),(119,'4c892c28-f140-4e1f-9a1d-a9a640ad6ac7',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-19 17:54:19','admin@speak.com','2014-09-19 17:54:19'),(120,'4c892c28-f140-4e1f-9a1d-a9a640ad6ac7',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-19 17:54:19','admin@speak.com','2014-09-19 17:54:19'),(121,'5b217688-8e17-4bf5-adda-846f8e6d8ad8',1,'part1',1,'Animals',NULL,1,'admin@speak.com','2014-09-19 17:55:32','admin@speak.com','2014-09-19 17:55:59'),(122,'5b217688-8e17-4bf5-adda-846f8e6d8ad8',1,'part1',22,'Concerntrating',NULL,1,'admin@speak.com','2014-09-19 17:55:32','admin@speak.com','2014-09-19 17:55:59'),(123,'847a11d7-ec59-411e-84ad-8448c123acda',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-19 17:55:41','admin@speak.com','2014-09-19 17:55:41'),(124,'847a11d7-ec59-411e-84ad-8448c123acda',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-19 17:55:41','admin@speak.com','2014-09-19 17:55:41'),(125,'815dd5b5-a354-4279-b358-b3203390eff8',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-19 17:56:00','admin@speak.com','2014-09-19 17:56:00'),(126,'815dd5b5-a354-4279-b358-b3203390eff8',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-19 17:56:00','admin@speak.com','2014-09-19 17:56:00'),(127,'2d7d24cb-25f1-4a45-b012-b62ac1351772',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-19 17:57:13','admin@speak.com','2014-09-19 17:57:13'),(128,'2d7d24cb-25f1-4a45-b012-b62ac1351772',1,'part1',6,'Music',NULL,0,'admin@speak.com','2014-09-19 17:57:13','admin@speak.com','2014-09-19 17:57:13'),(129,'2eb0f516-07df-4cc4-b5fe-700d5db7c430',1,'part1',16,'Dictionary',NULL,0,'admin@speak.com','2014-09-19 18:01:03','admin@speak.com','2014-09-19 18:01:03'),(130,'2eb0f516-07df-4cc4-b5fe-700d5db7c430',1,'part1',18,'Rain',NULL,0,'admin@speak.com','2014-09-19 18:01:03','admin@speak.com','2014-09-19 18:01:03'),(131,'2eb0f516-07df-4cc4-b5fe-700d5db7c430',1,'part1',9,'Photos',NULL,0,'admin@speak.com','2014-09-19 18:01:03','admin@speak.com','2014-09-19 18:01:03'),(132,'2eb0f516-07df-4cc4-b5fe-700d5db7c430',1,'part1',13,'Clothes',NULL,0,'admin@speak.com','2014-09-19 18:01:03','admin@speak.com','2014-09-19 18:01:03'),(133,'2eb0f516-07df-4cc4-b5fe-700d5db7c430',1,'part1',27,'Parks',NULL,0,'admin@speak.com','2014-09-19 18:01:03','admin@speak.com','2014-09-19 18:01:03'),(134,'5e433529-488a-45fd-9ed1-0747656f941d',1,'part1',10,'TV',NULL,0,'admin@speak.com','2014-09-19 18:01:12','admin@speak.com','2014-09-19 18:01:12'),(135,'5e433529-488a-45fd-9ed1-0747656f941d',1,'part1',5,'Relax',NULL,0,'admin@speak.com','2014-09-19 18:01:12','admin@speak.com','2014-09-19 18:01:12'),(136,'5e433529-488a-45fd-9ed1-0747656f941d',1,'part1',24,'Maps',NULL,0,'admin@speak.com','2014-09-19 18:01:12','admin@speak.com','2014-09-19 18:01:12'),(137,'5e433529-488a-45fd-9ed1-0747656f941d',1,'part1',15,'Computers',NULL,0,'admin@speak.com','2014-09-19 18:01:12','admin@speak.com','2014-09-19 18:01:12'),(138,'5e433529-488a-45fd-9ed1-0747656f941d',1,'part1',11,'Time',NULL,0,'admin@speak.com','2014-09-19 18:01:12','admin@speak.com','2014-09-19 18:01:12'),(139,'f6107d85-5590-47c4-8de4-da5b28723863',1,'part1',1,'Animals',NULL,1,'admin@speak.com','2014-09-19 18:04:38','admin@speak.com','2014-09-19 18:06:14'),(140,'5361b398-5cf1-4092-9eda-87b4e6dccbbe',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-19 18:11:27','admin@speak.com','2014-09-19 18:11:27'),(141,'de895aff-2357-418a-9bd8-f6de7b6c7ba3',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-19 18:12:28','admin@speak.com','2014-09-19 18:12:28'),(142,'de895aff-2357-418a-9bd8-f6de7b6c7ba3',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-19 18:12:28','admin@speak.com','2014-09-19 18:12:28'),(143,'e40d60ad-cf2c-41ab-bcf0-612d87bffff6',1,'part1',1,'Animals',NULL,1,'admin@speak.com','2014-09-19 18:19:03','admin@speak.com','2014-09-19 18:19:30'),(144,'b0e12d12-2b65-4a2b-9006-cb43755edb3b',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-21 16:01:41','admin@speak.com','2014-09-21 16:01:41'),(145,'13a28119-b5d8-46eb-b46a-4304f03de5a6',1,'part1',9,'Photos',NULL,0,'admin@speak.com','2014-09-21 22:59:53','admin@speak.com','2014-09-21 22:59:53'),(146,'13a28119-b5d8-46eb-b46a-4304f03de5a6',1,'part1',27,'Parks',NULL,0,'admin@speak.com','2014-09-21 22:59:53','admin@speak.com','2014-09-21 22:59:53'),(147,'13a28119-b5d8-46eb-b46a-4304f03de5a6',1,'part1',8,'Parties',NULL,0,'admin@speak.com','2014-09-21 22:59:53','admin@speak.com','2014-09-21 22:59:53'),(148,'13a28119-b5d8-46eb-b46a-4304f03de5a6',1,'part1',19,'Shopping',NULL,0,'admin@speak.com','2014-09-21 22:59:53','admin@speak.com','2014-09-21 22:59:53'),(149,'13a28119-b5d8-46eb-b46a-4304f03de5a6',1,'part1',18,'Rain',NULL,0,'admin@speak.com','2014-09-21 22:59:53','admin@speak.com','2014-09-21 22:59:53'),(150,'b3aa4b36-fa20-4430-9a40-892f48604804',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-21 23:00:00','admin@speak.com','2014-09-21 23:00:00'),(151,'b3aa4b36-fa20-4430-9a40-892f48604804',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-21 23:00:00','admin@speak.com','2014-09-21 23:00:00'),(152,'0b65359a-cbbc-4166-ab89-e6ad913de901',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-21 23:06:38','admin@speak.com','2014-09-21 23:06:38'),(153,'a66eacbb-4413-4afd-8fcc-aa707e120f1e',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-21 23:07:47','admin@speak.com','2014-09-21 23:07:47'),(154,'a66eacbb-4413-4afd-8fcc-aa707e120f1e',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-21 23:07:47','admin@speak.com','2014-09-21 23:07:47'),(155,'29c7b31b-72ab-4986-bd6e-4a8b9894b05d',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-21 23:10:30','admin@speak.com','2014-09-21 23:10:30'),(156,'f3aa5b88-f0d6-4bf8-ab2a-11384ee17794',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-21 23:10:47','admin@speak.com','2014-09-21 23:10:47'),(157,'f3aa5b88-f0d6-4bf8-ab2a-11384ee17794',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-21 23:10:47','admin@speak.com','2014-09-21 23:10:47'),(158,'0cb98e8e-0904-4c64-b0b3-c4e4cef13bc2',1,'part1',8,'Parties',NULL,0,'admin@speak.com','2014-09-23 16:01:38','admin@speak.com','2014-09-23 16:01:38'),(159,'0cb98e8e-0904-4c64-b0b3-c4e4cef13bc2',1,'part1',16,'Dictionary',NULL,0,'admin@speak.com','2014-09-23 16:01:38','admin@speak.com','2014-09-23 16:01:38'),(160,'0cb98e8e-0904-4c64-b0b3-c4e4cef13bc2',1,'part1',24,'Maps',NULL,0,'admin@speak.com','2014-09-23 16:01:38','admin@speak.com','2014-09-23 16:01:38'),(161,'bd3e0a6a-f149-4854-af2b-d5fb09ee508c',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-23 16:39:03','admin@speak.com','2014-09-23 16:39:03'),(162,'bd3e0a6a-f149-4854-af2b-d5fb09ee508c',1,'part1',13,'Clothes',NULL,0,'admin@speak.com','2014-09-23 16:39:03','admin@speak.com','2014-09-23 16:39:03'),(163,'bd3e0a6a-f149-4854-af2b-d5fb09ee508c',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-23 16:39:03','admin@speak.com','2014-09-23 16:39:03'),(164,'7eedb9ee-3a18-4a67-a1dd-099abfc7959e',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-23 23:55:13','admin@speak.com','2014-09-23 23:55:13'),(165,'7eedb9ee-3a18-4a67-a1dd-099abfc7959e',1,'part1',6,'Music',NULL,0,'admin@speak.com','2014-09-23 23:55:13','admin@speak.com','2014-09-23 23:55:13'),(166,'7eedb9ee-3a18-4a67-a1dd-099abfc7959e',1,'part1',10,'TV',NULL,0,'admin@speak.com','2014-09-23 23:55:13','admin@speak.com','2014-09-23 23:55:13'),(167,'9ed278ae-d828-4e37-9cb4-f71fb94ed742',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-24 16:14:52','admin@speak.com','2014-09-24 16:14:52'),(168,'1120564e-06ae-42ba-b48b-90582029b4dc',1,'part1',18,'Rain',NULL,0,'admin@speak.com','2014-09-24 16:15:08','admin@speak.com','2014-09-24 16:15:08'),(169,'1120564e-06ae-42ba-b48b-90582029b4dc',1,'part1',15,'Computers',NULL,0,'admin@speak.com','2014-09-24 16:15:08','admin@speak.com','2014-09-24 16:15:08'),(170,'1120564e-06ae-42ba-b48b-90582029b4dc',1,'part1',14,'Cooking',NULL,0,'admin@speak.com','2014-09-24 16:15:08','admin@speak.com','2014-09-24 16:15:08'),(171,'1120564e-06ae-42ba-b48b-90582029b4dc',1,'part1',28,'Street markets',NULL,0,'admin@speak.com','2014-09-24 16:15:08','admin@speak.com','2014-09-24 16:15:08'),(172,'1120564e-06ae-42ba-b48b-90582029b4dc',1,'part1',11,'Time',NULL,0,'admin@speak.com','2014-09-24 16:15:08','admin@speak.com','2014-09-24 16:15:08'),(173,'56ee1681-38f0-4f85-ac65-17a8b752483c',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-24 16:18:53','admin@speak.com','2014-09-24 16:18:53'),(174,'cd809c38-9e3f-4bdc-b1c0-a295dde0d86a',1,'part1',17,'Languages',NULL,0,'admin@speak.com','2014-09-25 09:30:54','admin@speak.com','2014-09-25 09:30:54'),(175,'cd809c38-9e3f-4bdc-b1c0-a295dde0d86a',1,'part1',21,'Cars',NULL,0,'admin@speak.com','2014-09-25 09:30:54','admin@speak.com','2014-09-25 09:30:54'),(176,'cd809c38-9e3f-4bdc-b1c0-a295dde0d86a',1,'part1',16,'Dictionary',NULL,0,'admin@speak.com','2014-09-25 09:30:54','admin@speak.com','2014-09-25 09:30:54'),(177,'cd809c38-9e3f-4bdc-b1c0-a295dde0d86a',1,'part1',19,'Shopping',NULL,0,'admin@speak.com','2014-09-25 09:30:54','admin@speak.com','2014-09-25 09:30:54'),(178,'cd809c38-9e3f-4bdc-b1c0-a295dde0d86a',1,'part1',29,'Toys',NULL,0,'admin@speak.com','2014-09-25 09:30:54','admin@speak.com','2014-09-25 09:30:54'),(179,'cb23efd6-aa6f-4b12-8066-bc699d386a20',1,'part1',3,'Home',NULL,1,'admin@speak.com','2014-09-26 02:38:33','admin@speak.com','2014-09-26 02:38:56'),(180,'cb23efd6-aa6f-4b12-8066-bc699d386a20',1,'part1',7,'Neighbors',NULL,1,'admin@speak.com','2014-09-26 02:38:33','admin@speak.com','2014-09-26 02:38:56'),(181,'118854f0-4596-4a1f-9db8-452ffa058b91',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-09-28 10:54:32','admin@speak.com','2014-09-28 10:54:32'),(182,'118854f0-4596-4a1f-9db8-452ffa058b91',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-09-28 10:54:32','admin@speak.com','2014-09-28 10:54:32'),(183,'be70ea02-b896-45e8-b4c4-571257e7324d',9,'part1',1,'Animals',NULL,0,'339026934@qq.com','2014-09-29 20:58:25','339026934@qq.com','2014-09-29 20:58:25'),(184,'3ff17597-e2f5-4325-ad2e-85d95e510b2f',9,'part1',3,'Home',NULL,0,'339026934@qq.com','2014-09-29 20:59:17','339026934@qq.com','2014-09-29 20:59:17'),(185,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',13,'Clothes',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(186,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',12,'Birthdays',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(187,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',19,'Shopping',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(188,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',22,'Concerntrating',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(189,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',20,'Train Travel',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(190,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',28,'Street markets',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(191,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',7,'Neighbors',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(192,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',23,'Gift',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(193,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',1,'Animals',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(194,'73e7a29d-8693-4e79-bcde-fb0108d775e7',9,'part1',30,'Weather',NULL,0,'339026934@qq.com','2014-09-29 21:02:59','339026934@qq.com','2014-09-29 21:02:59'),(195,'2f955013-294e-4996-bee1-f6b068ea0c1c',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-01 11:19:22','admin@speak.com','2014-10-01 11:19:22'),(196,'2f955013-294e-4996-bee1-f6b068ea0c1c',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-10-01 11:19:22','admin@speak.com','2014-10-01 11:19:22'),(197,'b53820ed-a9be-4acb-9fe6-1648d53916fc',1,'part1',19,'Shopping',NULL,0,'admin@speak.com','2014-10-01 11:19:57','admin@speak.com','2014-10-01 11:19:57'),(198,'b53820ed-a9be-4acb-9fe6-1648d53916fc',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-01 11:19:57','admin@speak.com','2014-10-01 11:19:57'),(199,'b53820ed-a9be-4acb-9fe6-1648d53916fc',1,'part1',15,'Computers',NULL,0,'admin@speak.com','2014-10-01 11:19:57','admin@speak.com','2014-10-01 11:19:57'),(200,'b53820ed-a9be-4acb-9fe6-1648d53916fc',1,'part1',14,'Cooking',NULL,0,'admin@speak.com','2014-10-01 11:19:57','admin@speak.com','2014-10-01 11:19:57'),(201,'b53820ed-a9be-4acb-9fe6-1648d53916fc',1,'part1',6,'Music',NULL,0,'admin@speak.com','2014-10-01 11:19:57','admin@speak.com','2014-10-01 11:19:57'),(202,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',16,'Dictionary',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(203,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',24,'Maps',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(204,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',20,'Train Travel',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(205,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',11,'Time',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(206,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',27,'Parks',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(207,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',6,'Music',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(208,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',15,'Computers',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(209,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',30,'Weather',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(210,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',19,'Shopping',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(211,'80e74750-3abf-445b-ae06-953a051c27ec',1,'part1',9,'Photos',NULL,0,'admin@speak.com','2014-10-02 22:15:39','admin@speak.com','2014-10-02 22:15:39'),(212,'573143b8-89a1-4d44-bdba-b004e8908d6c',1,'part1',4,'Hometown',NULL,0,'admin@speak.com','2014-10-07 14:19:52','admin@speak.com','2014-10-07 14:19:52'),(213,'573143b8-89a1-4d44-bdba-b004e8908d6c',1,'part1',11,'Time',NULL,0,'admin@speak.com','2014-10-07 14:19:52','admin@speak.com','2014-10-07 14:19:52'),(214,'573143b8-89a1-4d44-bdba-b004e8908d6c',1,'part1',9,'Photos',NULL,0,'admin@speak.com','2014-10-07 14:19:52','admin@speak.com','2014-10-07 14:19:52'),(215,'573143b8-89a1-4d44-bdba-b004e8908d6c',1,'part1',8,'Parties',NULL,0,'admin@speak.com','2014-10-07 14:19:52','admin@speak.com','2014-10-07 14:19:52'),(216,'573143b8-89a1-4d44-bdba-b004e8908d6c',1,'part1',10,'TV',NULL,0,'admin@speak.com','2014-10-07 14:19:52','admin@speak.com','2014-10-07 14:19:52'),(217,'9b7bef15-25a2-4af4-a5cf-41b6073f4ec9',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-07 16:09:33','admin@speak.com','2014-10-07 16:09:33'),(218,'3d7d3045-c2ba-4d2e-b7cc-55963a8d1b44',1,'part1',7,'Neighbors',NULL,0,'admin@speak.com','2014-10-08 01:07:12','admin@speak.com','2014-10-08 01:07:12'),(219,'3d7d3045-c2ba-4d2e-b7cc-55963a8d1b44',1,'part1',11,'Time',NULL,0,'admin@speak.com','2014-10-08 01:07:12','admin@speak.com','2014-10-08 01:07:12'),(220,'18988a57-816f-44b7-83ac-6fc4b83f3f75',1,'part1',23,'Gift',NULL,0,'admin@speak.com','2014-10-08 05:29:32','admin@speak.com','2014-10-08 05:29:32'),(221,'18988a57-816f-44b7-83ac-6fc4b83f3f75',1,'part1',28,'Street markets',NULL,0,'admin@speak.com','2014-10-08 05:29:32','admin@speak.com','2014-10-08 05:29:32'),(222,'18988a57-816f-44b7-83ac-6fc4b83f3f75',1,'part1',14,'Cooking',NULL,0,'admin@speak.com','2014-10-08 05:29:32','admin@speak.com','2014-10-08 05:29:32'),(223,'18988a57-816f-44b7-83ac-6fc4b83f3f75',1,'part1',21,'Cars',NULL,0,'admin@speak.com','2014-10-08 05:29:32','admin@speak.com','2014-10-08 05:29:32'),(224,'18988a57-816f-44b7-83ac-6fc4b83f3f75',1,'part1',6,'Music',NULL,0,'admin@speak.com','2014-10-08 05:29:32','admin@speak.com','2014-10-08 05:29:32'),(225,'faa1b56d-c5ee-4125-8658-7ca4966f859b',1,'part1',26,'Noise',NULL,0,'admin@speak.com','2014-10-08 05:42:23','admin@speak.com','2014-10-08 05:42:23'),(226,'faa1b56d-c5ee-4125-8658-7ca4966f859b',1,'part1',12,'Birthdays',NULL,0,'admin@speak.com','2014-10-08 05:42:23','admin@speak.com','2014-10-08 05:42:23'),(227,'faa1b56d-c5ee-4125-8658-7ca4966f859b',1,'part1',7,'Neighbors',NULL,0,'admin@speak.com','2014-10-08 05:42:23','admin@speak.com','2014-10-08 05:42:23'),(228,'faa1b56d-c5ee-4125-8658-7ca4966f859b',1,'part1',27,'Parks',NULL,0,'admin@speak.com','2014-10-08 05:42:23','admin@speak.com','2014-10-08 05:42:23'),(229,'faa1b56d-c5ee-4125-8658-7ca4966f859b',1,'part1',29,'Toys',NULL,0,'admin@speak.com','2014-10-08 05:42:23','admin@speak.com','2014-10-08 05:42:23'),(230,'5236f33e-2227-4142-86df-2b71db8fdb08',1,'part1',17,'Languages',NULL,0,'admin@speak.com','2014-10-08 08:01:46','admin@speak.com','2014-10-08 08:01:46'),(231,'5236f33e-2227-4142-86df-2b71db8fdb08',1,'part1',30,'Weather',NULL,0,'admin@speak.com','2014-10-08 08:01:46','admin@speak.com','2014-10-08 08:01:46'),(232,'5236f33e-2227-4142-86df-2b71db8fdb08',1,'part1',23,'Gift',NULL,0,'admin@speak.com','2014-10-08 08:01:46','admin@speak.com','2014-10-08 08:01:46'),(233,'5236f33e-2227-4142-86df-2b71db8fdb08',1,'part1',9,'Photos',NULL,0,'admin@speak.com','2014-10-08 08:01:46','admin@speak.com','2014-10-08 08:01:46'),(234,'5236f33e-2227-4142-86df-2b71db8fdb08',1,'part1',8,'Parties',NULL,0,'admin@speak.com','2014-10-08 08:01:46','admin@speak.com','2014-10-08 08:01:46'),(235,'e363da39-f782-489f-b499-d3ce88e2da11',1,'part1',16,'Dictionary',NULL,0,'admin@speak.com','2014-10-08 08:49:07','admin@speak.com','2014-10-08 08:49:07'),(236,'e363da39-f782-489f-b499-d3ce88e2da11',1,'part1',13,'Clothes',NULL,0,'admin@speak.com','2014-10-08 08:49:07','admin@speak.com','2014-10-08 08:49:07'),(237,'e363da39-f782-489f-b499-d3ce88e2da11',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-10-08 08:49:07','admin@speak.com','2014-10-08 08:49:07'),(238,'e363da39-f782-489f-b499-d3ce88e2da11',1,'part1',12,'Birthdays',NULL,0,'admin@speak.com','2014-10-08 08:49:07','admin@speak.com','2014-10-08 08:49:07'),(239,'e363da39-f782-489f-b499-d3ce88e2da11',1,'part1',23,'Gift',NULL,0,'admin@speak.com','2014-10-08 08:49:07','admin@speak.com','2014-10-08 08:49:07'),(240,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',6,'Music',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(241,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',3,'Home',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(242,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',30,'Weather',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(243,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',8,'Parties',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(244,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',29,'Toys',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(245,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',20,'Train Travel',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(246,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',10,'TV',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(247,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',12,'Birthdays',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(248,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',15,'Computers',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(249,'737a0d70-3c58-43b0-b890-12329ba26894',1,'part1',19,'Shopping',NULL,0,'admin@speak.com','2014-10-08 08:55:11','admin@speak.com','2014-10-08 08:55:11'),(250,'df286795-f533-4bc0-a88d-159f6fc38e9e',1,'part1',30,'Weather',NULL,0,'admin@speak.com','2014-10-08 08:55:20','admin@speak.com','2014-10-08 08:55:20'),(251,'df286795-f533-4bc0-a88d-159f6fc38e9e',1,'part1',7,'Neighbors',NULL,0,'admin@speak.com','2014-10-08 08:55:20','admin@speak.com','2014-10-08 08:55:20'),(252,'df286795-f533-4bc0-a88d-159f6fc38e9e',1,'part1',25,'Museums',NULL,0,'admin@speak.com','2014-10-08 08:55:20','admin@speak.com','2014-10-08 08:55:20'),(253,'df286795-f533-4bc0-a88d-159f6fc38e9e',1,'part1',8,'Parties',NULL,0,'admin@speak.com','2014-10-08 08:55:20','admin@speak.com','2014-10-08 08:55:20'),(254,'df286795-f533-4bc0-a88d-159f6fc38e9e',1,'part1',12,'Birthdays',NULL,0,'admin@speak.com','2014-10-08 08:55:20','admin@speak.com','2014-10-08 08:55:20'),(255,'e7ef034b-4229-4a50-8abc-c2dd09477b76',1,'part1',18,'Rain',NULL,0,'admin@speak.com','2014-10-08 08:55:37','admin@speak.com','2014-10-08 08:55:37'),(256,'e7ef034b-4229-4a50-8abc-c2dd09477b76',1,'part1',30,'Weather',NULL,0,'admin@speak.com','2014-10-08 08:55:37','admin@speak.com','2014-10-08 08:55:37'),(257,'e7ef034b-4229-4a50-8abc-c2dd09477b76',1,'part1',23,'Gift',NULL,0,'admin@speak.com','2014-10-08 08:55:37','admin@speak.com','2014-10-08 08:55:37'),(258,'e7ef034b-4229-4a50-8abc-c2dd09477b76',1,'part1',12,'Birthdays',NULL,0,'admin@speak.com','2014-10-08 08:55:37','admin@speak.com','2014-10-08 08:55:37'),(259,'e7ef034b-4229-4a50-8abc-c2dd09477b76',1,'part1',10,'TV',NULL,0,'admin@speak.com','2014-10-08 08:55:37','admin@speak.com','2014-10-08 08:55:37'),(260,'17823e73-8c9a-4986-9e90-74083f0674dc',1,'part1',19,'Shopping',NULL,0,'admin@speak.com','2014-10-08 09:07:26','admin@speak.com','2014-10-08 09:07:26'),(261,'17823e73-8c9a-4986-9e90-74083f0674dc',1,'part1',9,'Photos',NULL,0,'admin@speak.com','2014-10-08 09:07:26','admin@speak.com','2014-10-08 09:07:26'),(262,'17823e73-8c9a-4986-9e90-74083f0674dc',1,'part1',13,'Clothes',NULL,0,'admin@speak.com','2014-10-08 09:07:26','admin@speak.com','2014-10-08 09:07:26'),(263,'17823e73-8c9a-4986-9e90-74083f0674dc',1,'part1',5,'Relax',NULL,0,'admin@speak.com','2014-10-08 09:07:26','admin@speak.com','2014-10-08 09:07:26'),(264,'17823e73-8c9a-4986-9e90-74083f0674dc',1,'part1',10,'TV',NULL,0,'admin@speak.com','2014-10-08 09:07:26','admin@speak.com','2014-10-08 09:07:26'),(265,'a0de8d99-2453-4e41-9fdb-2ae9f0462041',1,'part1',1,'Animals',NULL,1,'admin@speak.com','2014-10-08 09:46:00','admin@speak.com','2014-10-08 09:46:23'),(266,'12fe25d2-e5bb-4394-a741-431e7a8d00c8',1,'part1',7,'Neighbors',NULL,0,'admin@speak.com','2014-10-08 09:47:48','admin@speak.com','2014-10-08 09:47:48'),(267,'12fe25d2-e5bb-4394-a741-431e7a8d00c8',1,'part1',11,'Time',NULL,0,'admin@speak.com','2014-10-08 09:47:48','admin@speak.com','2014-10-08 09:47:48'),(268,'12fe25d2-e5bb-4394-a741-431e7a8d00c8',1,'part1',6,'Music',NULL,0,'admin@speak.com','2014-10-08 09:47:48','admin@speak.com','2014-10-08 09:47:48'),(269,'12fe25d2-e5bb-4394-a741-431e7a8d00c8',1,'part1',23,'Gift',NULL,0,'admin@speak.com','2014-10-08 09:47:48','admin@speak.com','2014-10-08 09:47:48'),(270,'12fe25d2-e5bb-4394-a741-431e7a8d00c8',1,'part1',21,'Cars',NULL,0,'admin@speak.com','2014-10-08 09:47:48','admin@speak.com','2014-10-08 09:47:48'),(271,'265e12ae-2882-4757-87b2-f508bd4ecb11',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-08 13:49:50','admin@speak.com','2014-10-08 13:49:50'),(272,'ba3577f2-864f-43ea-8766-80c723ce223c',1,'part1',21,'Cars',NULL,0,'admin@speak.com','2014-10-08 13:51:12','admin@speak.com','2014-10-08 13:51:12'),(273,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',12,'Birthdays',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(274,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',6,'Music',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(275,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',9,'Photos',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(276,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',7,'Neighbors',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(277,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',19,'Shopping',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(278,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',4,'Hometown',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(279,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',10,'TV',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(280,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',20,'Train Travel',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(281,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',14,'Cooking',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(282,'41194861-83ef-4092-a148-801e8791c5e8',1,'part1',15,'Computers',NULL,0,'admin@speak.com','2014-10-08 13:51:47','admin@speak.com','2014-10-08 13:51:47'),(283,'5b608039-fe3d-4c5d-880e-08ee46901ab9',1,'part1',21,'Cars',NULL,0,'admin@speak.com','2014-10-09 00:00:37','admin@speak.com','2014-10-09 00:00:37'),(284,'5b608039-fe3d-4c5d-880e-08ee46901ab9',1,'part1',11,'Time',NULL,0,'admin@speak.com','2014-10-09 00:00:37','admin@speak.com','2014-10-09 00:00:37'),(285,'5b608039-fe3d-4c5d-880e-08ee46901ab9',1,'part1',9,'Photos',NULL,0,'admin@speak.com','2014-10-09 00:00:37','admin@speak.com','2014-10-09 00:00:37'),(286,'5b608039-fe3d-4c5d-880e-08ee46901ab9',1,'part1',14,'Cooking',NULL,0,'admin@speak.com','2014-10-09 00:00:37','admin@speak.com','2014-10-09 00:00:37'),(287,'5b608039-fe3d-4c5d-880e-08ee46901ab9',1,'part1',29,'Toys',NULL,0,'admin@speak.com','2014-10-09 00:00:37','admin@speak.com','2014-10-09 00:00:37'),(288,'b02a8e12-d87c-43c4-bb62-180516f755e3',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-10 10:38:02','admin@speak.com','2014-10-10 10:38:02'),(289,'b02a8e12-d87c-43c4-bb62-180516f755e3',1,'part1',20,'Train Travel',NULL,0,'admin@speak.com','2014-10-10 10:38:02','admin@speak.com','2014-10-10 10:38:02'),(290,'b02a8e12-d87c-43c4-bb62-180516f755e3',1,'part1',14,'Cooking',NULL,0,'admin@speak.com','2014-10-10 10:38:02','admin@speak.com','2014-10-10 10:38:02'),(291,'b02a8e12-d87c-43c4-bb62-180516f755e3',1,'part1',22,'Concerntrating',NULL,0,'admin@speak.com','2014-10-10 10:38:02','admin@speak.com','2014-10-10 10:38:02'),(292,'b02a8e12-d87c-43c4-bb62-180516f755e3',1,'part1',5,'Relax',NULL,0,'admin@speak.com','2014-10-10 10:38:02','admin@speak.com','2014-10-10 10:38:02'),(293,'f54bc96f-9a69-4787-9f70-e679594e1573',1,'part1',29,'Toys',NULL,0,'admin@speak.com','2014-10-10 10:38:38','admin@speak.com','2014-10-10 10:38:38'),(294,'f54bc96f-9a69-4787-9f70-e679594e1573',1,'part1',17,'Languages',NULL,0,'admin@speak.com','2014-10-10 10:38:38','admin@speak.com','2014-10-10 10:38:38'),(295,'f54bc96f-9a69-4787-9f70-e679594e1573',1,'part1',8,'Parties',NULL,0,'admin@speak.com','2014-10-10 10:38:38','admin@speak.com','2014-10-10 10:38:38'),(296,'f54bc96f-9a69-4787-9f70-e679594e1573',1,'part1',19,'Shopping',NULL,0,'admin@speak.com','2014-10-10 10:38:38','admin@speak.com','2014-10-10 10:38:38'),(297,'f54bc96f-9a69-4787-9f70-e679594e1573',1,'part1',16,'Dictionary',NULL,0,'admin@speak.com','2014-10-10 10:38:38','admin@speak.com','2014-10-10 10:38:38'),(298,'4e4fa1a8-0a4f-4d73-82a7-2816b4a50516',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-10 15:57:46','admin@speak.com','2014-10-10 15:57:46'),(299,'992568ae-c596-4c99-86ec-a7c3a426b9fd',1,'part1',15,'Computers',NULL,0,'admin@speak.com','2014-10-10 16:11:26','admin@speak.com','2014-10-10 16:11:26'),(300,'992568ae-c596-4c99-86ec-a7c3a426b9fd',1,'part1',9,'Photos',NULL,0,'admin@speak.com','2014-10-10 16:11:26','admin@speak.com','2014-10-10 16:11:26'),(301,'992568ae-c596-4c99-86ec-a7c3a426b9fd',1,'part1',23,'Gift',NULL,0,'admin@speak.com','2014-10-10 16:11:26','admin@speak.com','2014-10-10 16:11:26'),(302,'992568ae-c596-4c99-86ec-a7c3a426b9fd',1,'part1',5,'Relax',NULL,0,'admin@speak.com','2014-10-10 16:11:26','admin@speak.com','2014-10-10 16:11:26'),(303,'992568ae-c596-4c99-86ec-a7c3a426b9fd',1,'part1',17,'Languages',NULL,0,'admin@speak.com','2014-10-10 16:11:26','admin@speak.com','2014-10-10 16:11:26'),(304,'24180601-50f4-4f8f-8f27-b668b07555d9',1,'part1',1,'Animals',NULL,1,'admin@speak.com','2014-10-11 13:22:10','admin@speak.com','2014-10-11 13:22:36'),(305,'c1c2ac56-92fe-469c-a882-25cedcaeadd9',1,'part1',25,'Museums',NULL,0,'admin@speak.com','2014-10-11 13:25:02','admin@speak.com','2014-10-11 13:25:02'),(306,'c1c2ac56-92fe-469c-a882-25cedcaeadd9',1,'part1',3,'Home',NULL,0,'admin@speak.com','2014-10-11 13:25:02','admin@speak.com','2014-10-11 13:25:02'),(307,'c1c2ac56-92fe-469c-a882-25cedcaeadd9',1,'part1',21,'Cars',NULL,0,'admin@speak.com','2014-10-11 13:25:02','admin@speak.com','2014-10-11 13:25:02'),(308,'c1c2ac56-92fe-469c-a882-25cedcaeadd9',1,'part1',24,'Maps',NULL,0,'admin@speak.com','2014-10-11 13:25:02','admin@speak.com','2014-10-11 13:25:02'),(309,'c1c2ac56-92fe-469c-a882-25cedcaeadd9',1,'part1',29,'Toys',NULL,0,'admin@speak.com','2014-10-11 13:25:02','admin@speak.com','2014-10-11 13:25:02'),(310,'3f36ca4c-6b3f-4ccd-bae5-3ac6e4c97fed',1,'part1',15,'Computers',NULL,0,'admin@speak.com','2014-10-11 22:21:03','admin@speak.com','2014-10-11 22:21:03'),(311,'ede9a459-a0ef-433c-a98b-195f5d6d899b',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-12 23:10:03','admin@speak.com','2014-10-12 23:10:03'),(312,'fca3944f-5981-4b84-aac3-2b9bc63b3983',1,'part1',28,'Street markets',NULL,0,'admin@speak.com','2014-10-12 23:11:29','admin@speak.com','2014-10-12 23:11:29'),(313,'fca3944f-5981-4b84-aac3-2b9bc63b3983',1,'part1',25,'Museums',NULL,0,'admin@speak.com','2014-10-12 23:11:29','admin@speak.com','2014-10-12 23:11:29'),(314,'fca3944f-5981-4b84-aac3-2b9bc63b3983',1,'part1',20,'Train Travel',NULL,0,'admin@speak.com','2014-10-12 23:11:29','admin@speak.com','2014-10-12 23:11:29'),(315,'fca3944f-5981-4b84-aac3-2b9bc63b3983',1,'part1',27,'Parks',NULL,0,'admin@speak.com','2014-10-12 23:11:29','admin@speak.com','2014-10-12 23:11:29'),(316,'fca3944f-5981-4b84-aac3-2b9bc63b3983',1,'part1',30,'Weather',NULL,0,'admin@speak.com','2014-10-12 23:11:29','admin@speak.com','2014-10-12 23:11:29'),(317,'2e1c8e41-d194-48d0-bcd1-389be6242732',1,'part1',1,'Animals',NULL,1,'admin@speak.com','2014-10-12 23:14:14','admin@speak.com','2014-10-12 23:14:28'),(318,'ea61fd22-ab9f-4271-bcfd-803b52fc6e36',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-14 14:36:34','admin@speak.com','2014-10-14 14:36:34'),(319,'b9982fcc-b832-41b1-8c3d-86a58b416248',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-14 14:37:04','admin@speak.com','2014-10-14 14:37:04'),(320,'4ab021a2-cf5a-43a4-b37e-bb46e8a37a58',1,'part1',25,'Museums',NULL,0,'admin@speak.com','2014-10-14 14:37:14','admin@speak.com','2014-10-14 14:37:14'),(321,'4ab021a2-cf5a-43a4-b37e-bb46e8a37a58',1,'part1',21,'Cars',NULL,0,'admin@speak.com','2014-10-14 14:37:14','admin@speak.com','2014-10-14 14:37:14'),(322,'4ab021a2-cf5a-43a4-b37e-bb46e8a37a58',1,'part1',28,'Street markets',NULL,0,'admin@speak.com','2014-10-14 14:37:14','admin@speak.com','2014-10-14 14:37:14'),(323,'4ab021a2-cf5a-43a4-b37e-bb46e8a37a58',1,'part1',30,'Weather',NULL,0,'admin@speak.com','2014-10-14 14:37:14','admin@speak.com','2014-10-14 14:37:14'),(324,'4ab021a2-cf5a-43a4-b37e-bb46e8a37a58',1,'part1',5,'Relax',NULL,0,'admin@speak.com','2014-10-14 14:37:14','admin@speak.com','2014-10-14 14:37:14'),(325,'1a28b4f1-8c34-4733-bbc3-e8c717ef3c73',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-14 14:37:46','admin@speak.com','2014-10-14 14:37:46'),(326,'057cc7cc-48a6-4e89-be94-7c70b2235aa5',1,'part1',1,'Animals',NULL,1,'admin@speak.com','2014-10-14 15:29:05','admin@speak.com','2014-10-14 15:29:18'),(327,'6f81f496-2fa6-45cc-ba9f-d3ac681507b3',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-15 13:40:07','admin@speak.com','2014-10-15 13:40:07'),(328,'15ca1ff4-b23b-4d26-a53b-286b5a01b4f2',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-15 13:43:16','admin@speak.com','2014-10-15 13:43:16'),(329,'18b8684a-af35-4c43-af63-f3d5f3bf34d1',1,'part1',1,'Animals',NULL,0,'admin@speak.com','2014-10-15 21:26:01','admin@speak.com','2014-10-15 21:26:01');
/*!40000 ALTER TABLE `t_app_recordhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_recordone`
--

DROP TABLE IF EXISTS `t_app_recordone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_recordone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(45) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `partString` text,
  `answer` text,
  `seconds` int(11) DEFAULT NULL,
  `upid` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_recordone`
--

LOCK TABLES `t_app_recordone` WRITE;
/*!40000 ALTER TABLE `t_app_recordone` DISABLE KEYS */;
INSERT INTO `t_app_recordone` VALUES (24,'c87f7f21-21e1-4b9d-8a91-d1a8aff85942',NULL,115,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',748,'B657D057-2B19-FE7E-DB6D-8D514E8C90DF',0,'annoymous','2014-09-19 17:49:53','annoymous','2014-09-19 17:49:53'),(25,'c87f7f21-21e1-4b9d-8a91-d1a8aff85942',NULL,115,'2. (Possibly) Have you ever been to a zoo?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',657,'0AC5F695-989C-9C3E-0AAC-8D5188CA20D2',0,'annoymous','2014-09-19 17:50:05','annoymous','2014-09-19 17:50:05'),(26,'5361b398-5cf1-4092-9eda-87b4e6dccbbe',NULL,140,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',73,'FD840C79-3BE9-AFC6-EC41-8D64C2D6DEEE',0,'annoymous','2014-09-19 18:12:22','annoymous','2014-09-19 18:12:22'),(27,'e40d60ad-cf2c-41ab-bcf0-612d87bffff6',NULL,143,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',126,'4C91D642-6B80-58CD-D4CF-8D6C4A74CC86',0,'annoymous','2014-09-19 18:19:26','annoymous','2014-09-19 18:19:26'),(28,'b3aa4b36-fa20-4430-9a40-892f48604804',NULL,150,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',337,'C05BBB99-119E-3C91-8F1D-98BA46E18E6A',0,'annoymous','2014-09-21 23:00:18','annoymous','2014-09-21 23:00:18'),(29,'b3aa4b36-fa20-4430-9a40-892f48604804',NULL,150,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',205,'D83F0525-C3B6-D3F0-5C9D-98BB0B782202',0,'annoymous','2014-09-21 23:01:08','annoymous','2014-09-21 23:01:08'),(30,'0b65359a-cbbc-4166-ab89-e6ad913de901',NULL,152,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',318,'798E055D-A712-0D2A-9AD9-98C05E07378B',0,'annoymous','2014-09-21 23:07:08','annoymous','2014-09-21 23:07:08'),(31,'7eedb9ee-3a18-4a67-a1dd-099abfc7959e',NULL,164,'5.Why do (you think) some people have a pet (= a pet animal)?','These day people are lonelier and lonelier than before. So it&rsquo;s of great importance to have a company for the old and the young. I bet many individuals consider their pets as friends. Some even live with their pets for decades.',524,'B9E529B5-AA6C-0CE1-C3E7-A339F9A7B0F4',0,'annoymous','2014-09-23 23:56:41','annoymous','2014-09-23 23:56:41'),(32,'3ff17597-e2f5-4325-ad2e-85d95e510b2f',NULL,184,NULL,NULL,32,'F9281D53-2E68-03DF-B248-C17F1E6F37B2',0,'annoymous','2014-09-29 21:00:13','annoymous','2014-09-29 21:00:13'),(33,'3ff17597-e2f5-4325-ad2e-85d95e510b2f',NULL,184,NULL,NULL,823,'F40D0FDB-F012-EBF0-5B8D-C17F746D6788',0,'annoymous','2014-09-29 21:00:36','annoymous','2014-09-29 21:00:36'),(34,'2f955013-294e-4996-bee1-f6b068ea0c1c',NULL,195,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',353,'92A11C20-CD66-CEC4-9489-C9B87CADEB24',0,'annoymous','2014-10-01 11:19:41','annoymous','2014-10-01 11:19:41'),(35,'a0de8d99-2453-4e41-9fdb-2ae9f0462041',NULL,265,'2. (Possibly) Have you ever been to a zoo?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',700,'F0F446D3-8AB1-D955-F99D-ED6FE1FCE24F',0,'annoymous','2014-10-08 09:46:43','annoymous','2014-10-08 09:46:43'),(36,'a0de8d99-2453-4e41-9fdb-2ae9f0462041',NULL,265,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',265,'422A2556-4057-CF64-2195-ED703D60478F',0,'annoymous','2014-10-08 09:47:06','annoymous','2014-10-08 09:47:06'),(37,'5b608039-fe3d-4c5d-880e-08ee46901ab9',NULL,NULL,NULL,NULL,656,'03220EC5-444B-4C10-41FB-F07E8A5A995F',0,'admin@speak.com','2014-10-09 00:01:50','admin@speak.com','2014-10-09 00:01:50'),(38,'5b608039-fe3d-4c5d-880e-08ee46901ab9',NULL,NULL,NULL,NULL,656,'0F7D8A48-85C1-08FB-8EEE-F07E9A8A29DC',0,'admin@speak.com','2014-10-09 00:01:54','admin@speak.com','2014-10-09 00:01:54'),(39,'24180601-50f4-4f8f-8f27-b668b07555d9',NULL,304,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',178,'E0D789B7-07DC-322C-03E3-FDA8906777A3',0,'annoymous','2014-10-11 13:22:33','annoymous','2014-10-11 13:22:33'),(40,'2e1c8e41-d194-48d0-bcd1-389be6242732',NULL,317,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',715,'1143308B-53FB-9453-3113-04EDB1584882',0,'annoymous','2014-10-12 23:15:27','annoymous','2014-10-12 23:15:27'),(41,'2e1c8e41-d194-48d0-bcd1-389be6242732',NULL,317,'2. (Possibly) Have you ever been to a zoo?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',858,'972B3D29-9F6B-239A-1C7E-04EED3C69027',0,'annoymous','2014-10-12 23:16:41','annoymous','2014-10-12 23:16:41'),(42,'2e1c8e41-d194-48d0-bcd1-389be6242732',NULL,317,'3.Do you think it&rsquo;s important for children to visit a zoo?','For sure. When a child is growing up, one of the best educations is teaching him in the nature world. So it is of great importance that children can get close to the animals and plants. During the visit, children can learn a lot about these creatures and have empathy for animals.',662,'94CE6CA6-3BAC-062B-A1AF-04EEEDB7D09F',0,'annoymous','2014-10-12 23:16:48','annoymous','2014-10-12 23:16:48'),(43,'ea61fd22-ab9f-4271-bcfd-803b52fc6e36',NULL,318,'1.Did you ever visit a zoo when you were a child?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',336,'0D96DD08-A188-8A11-AF5D-0D5F9FFBEFC7',0,'annoymous','2014-10-14 14:36:49','annoymous','2014-10-14 14:36:49'),(44,'ea61fd22-ab9f-4271-bcfd-803b52fc6e36',NULL,318,'2. (Possibly) Have you ever been to a zoo?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',572,'EC1597E0-371E-F857-4DDB-0D5FBBB72544',0,'annoymous','2014-10-14 14:36:56','annoymous','2014-10-14 14:36:56'),(45,'6f81f496-2fa6-45cc-ba9f-d3ac681507b3',NULL,327,'2. (Possibly) Have you ever been to a zoo?','I&rsquo;m afraid I didn&rsquo;t visit the zoo when I was a little girl. I guess that&rsquo;s mainly because my parents were so busy with their work so they don&rsquo;t have enough time to take me to the zoo. Luckily, I went there last year with my friends.',881,'08998B9C-4F02-9260-6C54-12534AECBA4C',0,'annoymous','2014-10-15 13:41:34','annoymous','2014-10-15 13:41:34');
/*!40000 ALTER TABLE `t_app_recordone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_recordtopic`
--

DROP TABLE IF EXISTS `t_app_recordtopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_recordtopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `reuserid` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createusername` varchar(45) DEFAULT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` varchar(45) DEFAULT NULL,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_recordtopic`
--

LOCK TABLES `t_app_recordtopic` WRITE;
/*!40000 ALTER TABLE `t_app_recordtopic` DISABLE KEYS */;
INSERT INTO `t_app_recordtopic` VALUES (7,'iugiu ',122,1,1,122,1,'annoymous','2014-09-19 17:57:18','annoymous','2014-09-19 17:57:18'),(8,'...........',143,1,1,143,1,'annoymous','2014-09-22 10:10:14','annoymous','2014-09-22 10:10:14'),(9,'= =\n',143,1,1,143,1,'annoymous','2014-09-23 16:05:13','annoymous','2014-09-23 16:05:13'),(10,'hahahahahaha',143,1,1,143,1,'annoymous','2014-09-23 16:05:21','annoymous','2014-09-23 16:05:21'),(11,'ddd',115,1,1,115,1,'annoymous','2014-09-26 02:39:07','annoymous','2014-09-26 02:39:07');
/*!40000 ALTER TABLE `t_app_recordtopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_resource`
--

DROP TABLE IF EXISTS `t_app_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `seq` bigint(20) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_UNIQUE` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_resource`
--

LOCK TABLES `t_app_resource` WRITE;
/*!40000 ALTER TABLE `t_app_resource` DISABLE KEYS */;
INSERT INTO `t_app_resource` VALUES (1,'关于我们','',-1409668689675,'aboutus','admin','2014-07-09 22:17:06','admin@speak.com','2014-09-02 23:24:00'),(2,'联系我们','',2,'contact','admin','2014-07-09 22:17:06','admin@speak.com','2014-09-02 22:34:23'),(3,'常见问题','',3,'faq','admin','2014-07-09 22:17:06','admin@speak.com','2014-08-09 02:16:54'),(4,'加入我们','',1409668691643,'join','admin','2014-07-09 22:17:06','admin@speak.com','2014-09-02 22:38:11');
/*!40000 ALTER TABLE `t_app_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_seo`
--

DROP TABLE IF EXISTS `t_app_seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `keywords` text,
  `description` text,
  `type` varchar(45) DEFAULT NULL,
  `createusername` varchar(45) DEFAULT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` varchar(45) DEFAULT NULL,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_seo`
--

LOCK TABLES `t_app_seo` WRITE;
/*!40000 ALTER TABLE `t_app_seo` DISABLE KEYS */;
INSERT INTO `t_app_seo` VALUES (1,'首页','首页','首页','home','admin','2014-06-27 10:18:16','admin','2014-06-27 10:18:16'),(2,'口语练习','口语练习','口语练习','practice','admin','2014-06-27 10:18:16','admin@speak.com','2014-09-19 02:35:03'),(3,'话题精讲','话题精讲','话题精讲','course','admin','2014-06-27 10:18:16','admin@speak.com','2014-09-19 02:35:16'),(4,'趴趴社区','趴趴社区','趴趴社区','share','admin','2014-06-27 10:18:16','admin@speak.com','2014-09-19 02:35:27'),(5,'关于我们','关于我们','关于我们','about','admin','2014-06-27 10:18:16','admin','2014-06-27 10:18:16');
/*!40000 ALTER TABLE `t_app_seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dict_examcity`
--

DROP TABLE IF EXISTS `t_dict_examcity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dict_examcity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examCity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict_examcity`
--

LOCK TABLES `t_dict_examcity` WRITE;
/*!40000 ALTER TABLE `t_dict_examcity` DISABLE KEYS */;
INSERT INTO `t_dict_examcity` VALUES (1,'华北&amp;华中区'),(2,'华东区'),(3,'华南区'),(4,'天津');
/*!40000 ALTER TABLE `t_dict_examcity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dict_exampoint`
--

DROP TABLE IF EXISTS `t_dict_exampoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dict_exampoint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityId` int(11) DEFAULT NULL,
  `examPoint` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict_exampoint`
--

LOCK TABLES `t_dict_exampoint` WRITE;
/*!40000 ALTER TABLE `t_dict_exampoint` DISABLE KEYS */;
INSERT INTO `t_dict_exampoint` VALUES (1,1,'兰州'),(2,1,'石家庄'),(3,1,'呼和浩特'),(4,2,'温州'),(5,2,'苏州'),(6,2,'合肥'),(7,3,'南昌'),(8,3,'南宁'),(9,3,'海口'),(10,4,'贵阳'),(11,4,'昆明'),(12,4,'四川大学'),(13,5,'考点一'),(14,5,'考点二'),(15,5,'考点三'),(16,1,'太原'),(17,1,'长春'),(18,1,'武汉'),(19,1,'郑州'),(20,1,'乌鲁木齐'),(21,1,'西安外国语'),(22,1,'西安交通'),(23,1,'青岛'),(24,1,'济南'),(25,1,'沈阳'),(26,1,'大连'),(27,1,'哈尔滨'),(28,1,'天津'),(29,1,'北语'),(30,1,'北教中心'),(31,1,'首师大'),(32,1,'农业大'),(33,1,'首经贸'),(34,1,'北外'),(35,2,'杭州'),(36,2,'东南大学'),(37,2,'南理工'),(38,2,'华师大'),(39,2,'上财'),(40,2,'上外贸'),(41,2,'上大'),(42,3,'厦门'),(43,3,'福州'),(44,3,'深圳'),(45,3,'广州仲恺'),(46,3,'广外'),(47,3,'长沙'),(48,4,'电科大'),(49,4,'重庆');
/*!40000 ALTER TABLE `t_dict_exampoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dict_examtime`
--

DROP TABLE IF EXISTS `t_dict_examtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dict_examtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict_examtime`
--

LOCK TABLES `t_dict_examtime` WRITE;
/*!40000 ALTER TABLE `t_dict_examtime` DISABLE KEYS */;
INSERT INTO `t_dict_examtime` VALUES (1,'2014-09-27'),(2,'2014-10-11'),(3,'2014-10-02'),(4,'2014-10-18'),(5,'2014-10-25'),(6,'2014-11-01'),(7,'2014-11-08'),(8,'2014-11-13'),(9,'2014-11-22'),(10,'2014-12-04'),(11,'2014-12-06'),(12,'2014-12-13'),(13,'2014-12-20');
/*!40000 ALTER TABLE `t_dict_examtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_admin_login`
--

DROP TABLE IF EXISTS `t_sys_admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `ip` varchar(100) DEFAULT NULL,
  `sessionid` varchar(45) DEFAULT NULL,
  `login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_admin_login`
--

LOCK TABLES `t_sys_admin_login` WRITE;
/*!40000 ALTER TABLE `t_sys_admin_login` DISABLE KEYS */;
INSERT INTO `t_sys_admin_login` VALUES (165,'admin@speak.com','211.161.223.155','6BE9EDC60640BB78857E477F0C944C58','2014-09-19 17:48:02'),(166,'admin@speak.com','58.247.54.110','2A89DC9341E1A271DA37D51CDD4D145C','2014-09-19 17:52:12'),(167,'admin@speak.com','58.247.54.110','A9C45C4FC3ED8086BCCEE06940EF7B02','2014-09-19 17:54:07'),(168,'admin@speak.com','58.247.54.110','A5C4D18684A83F0B57C80ECBBDB6FBBF','2014-09-19 17:56:43'),(169,'admin@speak.com','58.247.54.110','E57B8A5D660A7A7712034AC0175C54B6','2014-09-19 18:11:17'),(170,'admin@speak.com','58.247.54.110','54347779E60E56E4942AEE13B9F5ABA4','2014-09-19 18:12:23'),(171,'admin@speak.com','116.230.100.34','69554CD1359E84AC385937716FD4F2AC','2014-09-21 23:06:33'),(172,'admin@speak.com','58.247.54.110','C8BEAA783AE1523339CD317823F5BC0C','2014-09-23 16:01:17'),(173,'joydragon@qq.com','27.115.42.254','993440A72A6CA7CD4B18D4608290014C','2014-09-25 11:07:03'),(174,'admin@speak.com','49.221.243.45','8E21FEBE106E1F68B0778CEBC563CAF3','2014-09-26 02:38:16'),(175,'339026934@qq.com','115.217.118.15','42FFEE84643A7E83729702B80BB87772','2014-09-29 20:58:17'),(176,'admin@speak.com','58.247.54.110','666ABF36DB701D2920046DEF43511987','2014-10-02 22:14:54'),(177,'admin@speak.com','116.231.135.204','BB7465635820CC33578FC859801F67B0','2014-10-07 14:19:45'),(178,'admin@speak.com','116.231.135.204','8567FF8DFE993D50B8BE5BCBDC152E77','2014-10-07 16:09:23'),(179,'admin@speak.com','111.73.50.10','F1D62B03FB724AA24DA40CCB54FD952A','2014-10-08 01:06:41'),(180,'admin@speak.com','111.73.50.10','CC8B765315342E582A229C4446CF66B0','2014-10-08 05:29:22'),(181,'admin@speak.com','116.231.135.204','0BB7C6D9F27C244E405DDE3C56FDA918','2014-10-08 08:01:29'),(182,'admin@speak.com','58.247.54.110','0B1338065B1AE107B621E3FAAD122F0F','2014-10-08 08:46:00'),(183,'admin@speak.com','58.247.54.110','8FD881BD150B3290FF010197FEEEFBD0','2014-10-08 08:56:59'),(184,'admin@speak.com','58.247.54.110','AB45F6C584D0D24C1AD5DFCFD9FF4B48','2014-10-08 09:44:57'),(185,'admin@speak.com','180.166.157.114','0BD08F713944103C2BC6DD0E6A085D25','2014-10-08 13:49:37'),(186,'admin@speak.com','116.231.135.204','19608A1E8E01C0337DAC24BD18B1D8C6','2014-10-08 23:37:47'),(187,'admin@speak.com','58.247.54.110','F1BA89F47C0CF667D9E6ABD80AAE3087','2014-10-10 10:37:54'),(188,'admin@speak.com','58.247.54.110','D94825C59CD66C9EEC2A525CF2A0FF93','2014-10-10 15:57:36'),(189,'admin@speak.com','220.248.50.174','859B210C5D9A00D3134A97AA112433F1','2014-10-11 22:14:31'),(190,'admin@speak.com','58.247.54.110','5B4B3AD2AF688F5BAF038DB6D66F7A48','2014-10-14 10:55:42'),(191,'admin@speak.com','58.247.54.110','65607DFE7D46AAA20AE5EC72D41526C8','2014-10-14 14:36:43'),(192,'angeline_cai@hotmail.com','125.34.210.111','2C8F8FA3125B51176A2E73C54F383AB9','2014-10-14 18:36:12'),(193,'admin@speak.com','180.166.157.114','5069B06A32755968507223F02054BCC8','2014-10-15 13:39:28');
/*!40000 ALTER TABLE `t_sys_admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_admin_role`
--

DROP TABLE IF EXISTS `t_sys_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `resources` text,
  `createusername` text,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` text,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_admin_role`
--

LOCK TABLES `t_sys_admin_role` WRITE;
/*!40000 ALTER TABLE `t_sys_admin_role` DISABLE KEYS */;
INSERT INTO `t_sys_admin_role` VALUES (1,'普通用户','/practice,/self,/self/.*,/point,/point/.*,/services/part/create','admin','2014-08-01 12:00:00','admin','2014-08-01 12:00:00');
/*!40000 ALTER TABLE `t_sys_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_admin_user`
--

DROP TABLE IF EXISTS `t_sys_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `isAccountNonExpired` bit(1) DEFAULT NULL,
  `isAccountNonLocked` bit(1) DEFAULT NULL,
  `isCredentialsNonExpired` bit(1) DEFAULT NULL,
  `isEnabled` bit(1) DEFAULT NULL,
  `isAdmin` bit(1) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `createusername` varchar(45) DEFAULT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` varchar(45) DEFAULT NULL,
  `updatedatetime` datetime DEFAULT NULL,
  `isFirst` int(11) DEFAULT NULL,
  `isPoint` int(11) DEFAULT NULL,
  `isExam` int(11) DEFAULT NULL,
  `examTime` int(11) DEFAULT NULL,
  `examCity` int(11) DEFAULT NULL,
  `examPoint` int(11) DEFAULT NULL,
  `isExpert` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_u` (`username`),
  UNIQUE KEY `nickname_u` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_admin_user`
--

LOCK TABLES `t_sys_admin_user` WRITE;
/*!40000 ALTER TABLE `t_sys_admin_user` DISABLE KEYS */;
INSERT INTO `t_sys_admin_user` VALUES (1,'admin@speak.com','0cc175b9c0f1b6a831c399e269772661',1,'Admin','','','','','',NULL,'admin@speak.com','2014-07-09 22:17:06','admin@speak.com','2014-10-14 14:37:14',0,1,1,13,1,30,NULL),(2,'hei_persie@126.com','0cc175b9c0f1b6a831c399e269772661',1,'HEI','','','','','',1,'annoymous','2014-08-05 23:59:40','annoymous','2014-09-06 02:27:05',1,1,1,NULL,NULL,NULL,NULL),(9,'339026934@qq.com','e65353c5f050d7d45735515c90a3b2c6',1,'wawoshiwo','','','','','',1,'annoymous','2014-09-10 21:31:52','339026934@qq.com','2014-09-29 21:02:59',0,1,1,2,3,8,NULL),(10,'2906522040@qq.com','04f6cae061525bad9e6075e96a5a483a',1,'忆年华','','','','','',1,'annoymous','2014-09-10 21:34:29','annoymous','2014-09-10 21:36:44',0,1,1,NULL,NULL,NULL,NULL),(11,'gzdxhjq68@163.com','325653906a87eb3c0c4d3f76e217eca1',1,'眼镜蛇小黄','','','','','',1,'annoymous','2014-09-13 16:23:16','annoymous','2014-09-13 16:23:46',0,1,1,NULL,NULL,NULL,NULL),(12,'joydragon@qq.com','b6ebcc0d69e43f7bd1defd1760f46c6d',1,'joydragon','','','','','\0',1,'annoymous','2014-09-25 11:06:51','annoymous','2014-09-25 11:07:30',0,1,1,NULL,NULL,NULL,NULL),(13,'angeline_cai@hotmail.com','ff879ca175b4b48193483d5285582cd2',1,'petitecai','','','','','\0',1,'annoymous','2014-10-14 18:35:58','annoymous','2014-10-14 18:36:20',0,1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_sys_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_upload`
--

DROP TABLE IF EXISTS `t_sys_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upid` varchar(45) DEFAULT NULL,
  `absolutepath` varchar(555) DEFAULT NULL,
  `originalName` varchar(555) DEFAULT NULL,
  `catalog` varchar(20) DEFAULT NULL,
  `fileSize` int(11) DEFAULT NULL,
  `createusername` varchar(45) DEFAULT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `updateusername` varchar(45) DEFAULT NULL,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_upload`
--

LOCK TABLES `t_sys_upload` WRITE;
/*!40000 ALTER TABLE `t_sys_upload` DISABLE KEYS */;
INSERT INTO `t_sys_upload` VALUES (100,'B657D057-2B19-FE7E-DB6D-8D514E8C90DF','/upload/record/B657D057-2B19-FE7E-DB6D-8D514E8C90DF','1.Did you ever visit a zoo when you were a child?.wav','record',503854,'annoymous','2014-09-19 17:49:53','annoymous','2014-09-19 17:49:53'),(101,'0AC5F695-989C-9C3E-0AAC-8D5188CA20D2','/upload/record/0AC5F695-989C-9C3E-0AAC-8D5188CA20D2','2. (Possibly) Have you ever been to a zoo?.wav','record',233518,'annoymous','2014-09-19 17:50:05','annoymous','2014-09-19 17:50:05'),(102,'7976FCE4-0721-D30E-E2AD-8D54CB62FAAE','/upload/record/7976FCE4-0721-D30E-E2AD-8D54CB62FAAE','3.Do you think it&rsquo;s important for children to visit a zoo?.wav','record',46,'annoymous','2014-09-19 17:53:37','annoymous','2014-09-19 17:53:37'),(103,'FEE6C392-CE07-228C-AEBA-8D55E59787C3','/upload/record/FEE6C392-CE07-228C-AEBA-8D55E59787C3','2. (Possibly) Have you ever been to a zoo?.wav','record',46,'annoymous','2014-09-19 17:54:57','annoymous','2014-09-19 17:54:57'),(104,'D7D68F2F-2B3C-1516-14DC-8D56291A316F','/upload/record/D7D68F2F-2B3C-1516-14DC-8D56291A316F','2. (Possibly) Have you ever been to a zoo?.wav','record',46,'annoymous','2014-09-19 17:55:14','annoymous','2014-09-19 17:55:14'),(105,'CAB3B650-6B53-079A-94FE-8D5647F01794','/upload/record/CAB3B650-6B53-079A-94FE-8D5647F01794','2. (Possibly) Have you ever been to a zoo?.wav','record',46,'annoymous','2014-09-19 17:55:22','annoymous','2014-09-19 17:55:22'),(106,'5F71E0CD-A247-4FD9-C895-8D5775587D48','/upload/record/5F71E0CD-A247-4FD9-C895-8D5775587D48','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-09-19 17:56:31','annoymous','2014-09-19 17:56:31'),(107,'6A2944CB-CAF4-9C5B-B6A0-8D5829D10E92','/upload/record/6A2944CB-CAF4-9C5B-B6A0-8D5829D10E92','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-09-19 17:57:25','annoymous','2014-09-19 17:57:25'),(108,'9EB9DFA9-6EC6-8A71-9FC9-8D5F468B15F0','/upload/record/9EB9DFA9-6EC6-8A71-9FC9-8D5F468B15F0','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-09-19 18:05:03','annoymous','2014-09-19 18:05:03'),(109,'608E9081-3582-0C73-8E7B-8D6008875812','/upload/record/608E9081-3582-0C73-8E7B-8D6008875812','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-09-19 18:05:53','annoymous','2014-09-19 18:05:53'),(110,'18E523D6-90F6-1714-79CC-8D62CE523A35','/upload/record/18E523D6-90F6-1714-79CC-8D62CE523A35','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-09-19 18:08:55','annoymous','2014-09-19 18:08:55'),(111,'FD840C79-3BE9-AFC6-EC41-8D64C2D6DEEE','/upload/record/FD840C79-3BE9-AFC6-EC41-8D64C2D6DEEE','1.Did you ever visit a zoo when you were a child?.wav','record',307246,'annoymous','2014-09-19 18:12:22','annoymous','2014-09-19 18:12:22'),(112,'8F750E1D-8A62-E413-A870-8D66458590BB','/upload/record/8F750E1D-8A62-E413-A870-8D66458590BB','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-09-19 18:12:42','annoymous','2014-09-19 18:12:42'),(113,'4C91D642-6B80-58CD-D4CF-8D6C4A74CC86','/upload/record/4C91D642-6B80-58CD-D4CF-8D6C4A74CC86','1.Did you ever visit a zoo when you were a child?.wav','record',360494,'annoymous','2014-09-19 18:19:26','annoymous','2014-09-19 18:19:26'),(114,'55DC688C-5069-5E7D-3685-8D6D72FD09B9','/upload/record/55DC688C-5069-5E7D-3685-8D6D72FD09B9','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-09-19 18:20:32','annoymous','2014-09-19 18:20:32'),(115,'FE0BC16E-56C6-2A08-BDBA-973B4C9A56EA','/upload/record/FE0BC16E-56C6-2A08-BDBA-973B4C9A56EA','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-09-21 16:01:59','annoymous','2014-09-21 16:01:59'),(116,'C05BBB99-119E-3C91-8F1D-98BA46E18E6A','/upload/record/C05BBB99-119E-3C91-8F1D-98BA46E18E6A','1.Did you ever visit a zoo when you were a child?.wav','record',368686,'annoymous','2014-09-21 23:00:18','annoymous','2014-09-21 23:00:18'),(117,'D83F0525-C3B6-D3F0-5C9D-98BB0B782202','/upload/record/D83F0525-C3B6-D3F0-5C9D-98BB0B782202','1.Did you ever visit a zoo when you were a child?.wav','record',262190,'annoymous','2014-09-21 23:01:08','annoymous','2014-09-21 23:01:08'),(118,'798E055D-A712-0D2A-9AD9-98C05E07378B','/upload/record/798E055D-A712-0D2A-9AD9-98C05E07378B','1.Did you ever visit a zoo when you were a child?.wav','record',454702,'annoymous','2014-09-21 23:07:08','annoymous','2014-09-21 23:07:08'),(119,'B9E529B5-AA6C-0CE1-C3E7-A339F9A7B0F4','/upload/record/B9E529B5-AA6C-0CE1-C3E7-A339F9A7B0F4','5.Why do (you think) some people have a pet (= a pet animal)?.wav','record',192558,'annoymous','2014-09-23 23:56:41','annoymous','2014-09-23 23:56:41'),(120,'C8704365-0270-E12C-C64B-C17E86F13906','/upload/record/C8704365-0270-E12C-C64B-C17E86F13906','.wav','record',46,'annoymous','2014-09-29 20:59:34','annoymous','2014-09-29 20:59:34'),(121,'A54760A4-7D41-EEDA-5AF8-C17ED7EBA908','/upload/record/A54760A4-7D41-EEDA-5AF8-C17ED7EBA908','.wav','record',46,'annoymous','2014-09-29 20:59:55','annoymous','2014-09-29 20:59:55'),(122,'F9281D53-2E68-03DF-B248-C17F1E6F37B2','/upload/record/F9281D53-2E68-03DF-B248-C17F1E6F37B2','.wav','record',159790,'annoymous','2014-09-29 21:00:13','annoymous','2014-09-29 21:00:13'),(123,'F40D0FDB-F012-EBF0-5B8D-C17F746D6788','/upload/record/F40D0FDB-F012-EBF0-5B8D-C17F746D6788','.wav','record',331822,'annoymous','2014-09-29 21:00:36','annoymous','2014-09-29 21:00:36'),(124,'92A11C20-CD66-CEC4-9489-C9B87CADEB24','/upload/record/92A11C20-CD66-CEC4-9489-C9B87CADEB24','1.Did you ever visit a zoo when you were a child?.wav','record',221230,'annoymous','2014-10-01 11:19:41','annoymous','2014-10-01 11:19:41'),(125,'77709CB3-6C38-5384-4537-ED3D44681DD0','/upload/record/77709CB3-6C38-5384-4537-ED3D44681DD0','.wav','record',10518574,'admin@speak.com','2014-10-08 08:52:43','admin@speak.com','2014-10-08 08:52:43'),(126,'ACA172F7-6930-1565-F99D-ED3D5F3CC4F4','/upload/record/ACA172F7-6930-1565-F99D-ED3D5F3CC4F4','.wav','record',10518574,'admin@speak.com','2014-10-08 08:52:49','admin@speak.com','2014-10-08 08:52:49'),(127,'CC30858A-8ADC-A5C5-7E61-ED3F7AA67ADA','/upload/record/CC30858A-8ADC-A5C5-7E61-ED3F7AA67ADA','.wav','record',10518574,'admin@speak.com','2014-10-08 08:54:38','admin@speak.com','2014-10-08 08:54:38'),(128,'F0F446D3-8AB1-D955-F99D-ED6FE1FCE24F','/upload/record/F0F446D3-8AB1-D955-F99D-ED6FE1FCE24F','2. (Possibly) Have you ever been to a zoo?.wav','record',213038,'annoymous','2014-10-08 09:46:43','annoymous','2014-10-08 09:46:43'),(129,'422A2556-4057-CF64-2195-ED703D60478F','/upload/record/422A2556-4057-CF64-2195-ED703D60478F','1.Did you ever visit a zoo when you were a child?.wav','record',86062,'annoymous','2014-10-08 09:47:06','annoymous','2014-10-08 09:47:06'),(130,'03220EC5-444B-4C10-41FB-F07E8A5A995F','/upload/record/03220EC5-444B-4C10-41FB-F07E8A5A995F','.wav','record',2678830,'admin@speak.com','2014-10-09 00:01:49','admin@speak.com','2014-10-09 00:01:49'),(131,'0F7D8A48-85C1-08FB-8EEE-F07E9A8A29DC','/upload/record/0F7D8A48-85C1-08FB-8EEE-F07E9A8A29DC','.wav','record',2678830,'admin@speak.com','2014-10-09 00:01:54','admin@speak.com','2014-10-09 00:01:54'),(132,'E0D789B7-07DC-322C-03E3-FDA8906777A3','/upload/record/E0D789B7-07DC-322C-03E3-FDA8906777A3','1.Did you ever visit a zoo when you were a child?.wav','record',389166,'annoymous','2014-10-11 13:22:33','annoymous','2014-10-11 13:22:33'),(133,'1143308B-53FB-9453-3113-04EDB1584882','/upload/record/1143308B-53FB-9453-3113-04EDB1584882','1.Did you ever visit a zoo when you were a child?.wav','record',389166,'annoymous','2014-10-12 23:15:27','annoymous','2014-10-12 23:15:27'),(134,'972B3D29-9F6B-239A-1C7E-04EED3C69027','/upload/record/972B3D29-9F6B-239A-1C7E-04EED3C69027','2. (Possibly) Have you ever been to a zoo?.wav','record',319534,'annoymous','2014-10-12 23:16:41','annoymous','2014-10-12 23:16:41'),(135,'94CE6CA6-3BAC-062B-A1AF-04EEEDB7D09F','/upload/record/94CE6CA6-3BAC-062B-A1AF-04EEEDB7D09F','3.Do you think it&rsquo;s important for children to visit a zoo?.wav','record',303150,'annoymous','2014-10-12 23:16:48','annoymous','2014-10-12 23:16:48'),(136,'0D96DD08-A188-8A11-AF5D-0D5F9FFBEFC7','/upload/record/0D96DD08-A188-8A11-AF5D-0D5F9FFBEFC7','1.Did you ever visit a zoo when you were a child?.wav','record',81966,'annoymous','2014-10-14 14:36:49','annoymous','2014-10-14 14:36:49'),(137,'EC1597E0-371E-F857-4DDB-0D5FBBB72544','/upload/record/EC1597E0-371E-F857-4DDB-0D5FBBB72544','2. (Possibly) Have you ever been to a zoo?.wav','record',28718,'annoymous','2014-10-14 14:36:56','annoymous','2014-10-14 14:36:56'),(138,'C1CCD10A-B580-F093-0E05-0D5FC82E66DE','/upload/record/C1CCD10A-B580-F093-0E05-0D5FC82E66DE','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-10-14 14:37:21','annoymous','2014-10-14 14:37:21'),(139,'FFA6E16A-061D-27B5-3791-0D5FF33DD067','/upload/record/FFA6E16A-061D-27B5-3791-0D5FF33DD067','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-10-14 14:37:32','annoymous','2014-10-14 14:37:32'),(140,'A13E7523-506D-7A47-3AF0-0D5FF84DA5FE','/upload/record/A13E7523-506D-7A47-3AF0-0D5FF84DA5FE','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-10-14 14:37:33','annoymous','2014-10-14 14:37:33'),(141,'CD385DA5-7C67-7445-8C25-0D6061DFCA31','/upload/record/CD385DA5-7C67-7445-8C25-0D6061DFCA31','1.Did you ever visit a zoo when you were a child?.wav','record',46,'annoymous','2014-10-14 14:38:00','annoymous','2014-10-14 14:38:00'),(142,'08998B9C-4F02-9260-6C54-12534AECBA4C','/upload/record/08998B9C-4F02-9260-6C54-12534AECBA4C','2. (Possibly) Have you ever been to a zoo?.wav','record',462894,'annoymous','2014-10-15 13:41:34','annoymous','2014-10-15 13:41:34');
/*!40000 ALTER TABLE `t_sys_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_app_recordtopic`
--

DROP TABLE IF EXISTS `v_app_recordtopic`;
/*!50001 DROP VIEW IF EXISTS `v_app_recordtopic`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_app_recordtopic` (
  `id` tinyint NOT NULL,
  `content` tinyint NOT NULL,
  `recordId` tinyint NOT NULL,
  `userid` tinyint NOT NULL,
  `nickname` tinyint NOT NULL,
  `reuserid` tinyint NOT NULL,
  `renickname` tinyint NOT NULL,
  `parent` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `createdatetime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_app_recordtopic`
--

/*!50001 DROP TABLE IF EXISTS `v_app_recordtopic`*/;
/*!50001 DROP VIEW IF EXISTS `v_app_recordtopic`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_app_recordtopic` AS select `record`.`id` AS `id`,`record`.`content` AS `content`,`record`.`recordId` AS `recordId`,`user_a`.`id` AS `userid`,`user_a`.`nickname` AS `nickname`,`user_b`.`id` AS `reuserid`,`user_b`.`nickname` AS `renickname`,`record`.`parent` AS `parent`,`record`.`status` AS `status`,`record`.`createdatetime` AS `createdatetime` from (`t_sys_admin_user` `user_b` join (`t_sys_admin_user` `user_a` join `t_app_recordtopic` `record` on((`user_a`.`id` = `record`.`userid`))) on((`user_b`.`id` = `record`.`reuserid`))) */;
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

-- Dump completed on 2014-10-16  1:54:51
