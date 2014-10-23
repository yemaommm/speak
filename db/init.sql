CREATE DATABASE  IF NOT EXISTS `speak` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `speak`;
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: speak
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_history`
--

LOCK TABLES `t_app_history` WRITE;
/*!40000 ALTER TABLE `t_app_history` DISABLE KEYS */;
INSERT INTO `t_app_history` VALUES (24,'6b565db3-6e4d-4ff7-bbd8-f58602a9de46',1,'8,9,','0','3,4,','3,4,','0','animals,jjjjjjjjjjjj,dgfdg(Part2),ccc(Part2),dgfdg(Part3),ccc(Part3),','admin@speak.com','2014-09-17 04:56:29','admin@speak.com','2014-09-17 04:56:29','self',NULL,NULL,NULL,NULL,NULL),(25,'47fc76a0-053b-4ccc-84c6-ca7f504e1270',1,'8,9,','0','4,','3,','0','animals,jjjjjjjjjjjj,ccc(Part2),dgfdg(Part3),','admin@speak.com','2014-09-19 03:24:08','admin@speak.com','2014-09-19 03:24:08','self',NULL,NULL,NULL,NULL,NULL),(26,'0bd9cd11-a855-49a3-b864-98dad579ef6c',1,'8,9,','0','','4,','0','animals,jjjjjjjjjjjj,ccc(Part3),','admin@speak.com','2014-09-19 03:24:13','admin@speak.com','2014-09-19 03:24:13','self',NULL,NULL,NULL,NULL,NULL),(27,'7c939bd9-39b3-4ecf-a8bb-13faf22b6555',1,'8,9,','0','4,','3,','0','animals,jjjjjjjjjjjj,ccc(Part2),dgfdg(Part3),','admin@speak.com','2014-09-19 03:24:20','admin@speak.com','2014-09-19 03:24:20','self',NULL,NULL,NULL,NULL,NULL),(28,'71e0542e-ce71-40cf-8524-88855440e27c',1,'8,9,','0','','','0','animals,jjjjjjjjjjjj,','admin@speak.com','2014-09-19 10:14:41','admin@speak.com','2014-09-19 10:14:41','self',NULL,NULL,NULL,NULL,NULL),(29,'d6d836e1-ffa3-4f20-85b6-e918919df099',1,'8,9,','0','3,','4,','0','animals,jjjjjjjjjjjj,dgfdg(Part2),ccc(Part3),','admin@speak.com','2014-09-19 10:14:59','admin@speak.com','2014-09-19 10:14:59','self',NULL,NULL,NULL,NULL,NULL),(30,'e64a9a88-873a-4369-af70-c952491e386e',1,'8,9,','0','4,','3,','0','animals,jjjjjjjjjjjj,ccc(Part2),dgfdg(Part3),','admin@speak.com','2014-09-19 11:07:11','admin@speak.com','2014-09-19 11:07:11','self',NULL,NULL,NULL,NULL,NULL),(31,'907ae894-f05f-4d04-927e-f00f739ced90',1,'8,9,','0','3,','','0','animals,jjjjjjjjjjjj,dgfdg(Part2),','admin@speak.com','2014-09-19 11:11:07','admin@speak.com','2014-09-19 11:11:07','self',NULL,NULL,NULL,NULL,NULL),(32,'d1e8e676-51d6-4427-bbfd-a97a93306153',1,'8,9,','0','','','0','animals,jjjjjjjjjjjj,','admin@speak.com','2014-09-19 11:23:39','admin@speak.com','2014-09-19 11:23:39','self',NULL,NULL,NULL,NULL,NULL),(33,'d8749a32-2ee6-4575-9f64-bed3d44e0c2c',1,'8,9,','0','4,','3,','0','animals,jjjjjjjjjjjj,ccc(Part2),dgfdg(Part3),','admin@speak.com','2014-09-19 12:40:46','admin@speak.com','2014-09-19 12:40:46','self',NULL,NULL,NULL,NULL,NULL),(34,'a51e5df3-03c5-4af0-bd2e-a2c3658e48d9',1,'8,9,','0','3,','4,','0','animals,jjjjjjjjjjjj,dgfdg(Part2),ccc(Part3),','admin@speak.com','2014-09-19 12:45:13','admin@speak.com','2014-09-19 12:45:13','self',NULL,NULL,NULL,NULL,NULL),(35,'acf9efdc-2f5d-414a-ad7c-3a8ddb6d67b4',1,'8,9,','0','4,','3,','0','animals,jjjjjjjjjjjj,ccc(Part2),dgfdg(Part3),','admin@speak.com','2014-09-19 14:07:51','admin@speak.com','2014-09-19 14:07:51','self',NULL,NULL,NULL,NULL,NULL),(36,'80f9bd42-5288-4170-b2ca-19fe907dec08',1,'8,9,','0','','','0',NULL,'admin@speak.com','2014-09-23 15:41:14','admin@speak.com','2014-09-23 15:41:14','point','part1','2014-09-30','上海','考点二','10'),(37,'f5f9fb5b-b274-40ae-85fa-f3f3248c4fdd',1,'','0','4,3,','','0',NULL,'admin@speak.com','2014-10-02 01:41:36','admin@speak.com','2014-10-02 01:41:36','point','part2','2014-09-30','北京','考点二','10'),(38,'e5a9668a-44e2-48f6-852d-2e70e352ba76',1,'8,9,','0','4,','','0','animals,jjjjjjjjjjjj,ccc(Part2),','admin@speak.com','2014-10-02 01:41:56','admin@speak.com','2014-10-02 01:41:56','self',NULL,NULL,NULL,NULL,NULL),(39,'7deccf47-6c88-480b-9038-4f2e6e0595e0',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-02 01:42:15','admin@speak.com','2014-10-02 01:42:15','point','part1','2014-09-30','北京','考点二','5'),(40,'cc98bb1e-e8ae-4141-9ff7-db8d305d0566',1,'8,9,','0','','','0',NULL,'admin@speak.com','2014-10-02 15:25:02','admin@speak.com','2014-10-02 15:25:02','point','part1','2014-09-30','北京','考点二','5'),(41,'a79ec219-1fb5-49fb-9e66-ed6520d016e0',1,'','0','3,4,','','0',NULL,'admin@speak.com','2014-10-02 19:08:37','admin@speak.com','2014-10-02 19:08:37','point','part2','2014-09-30','北京','考点二','5'),(42,'21d1321a-0d9b-4e42-b6a3-e29c96af610a',1,'9,8,','0','','','0','jjjjjjjjjjjj,animals,','admin@speak.com','2014-10-02 19:08:49','admin@speak.com','2014-10-02 19:08:49','self',NULL,NULL,NULL,NULL,NULL),(43,'5a7cc110-069f-4e00-ab5d-c1873fc1d3d4',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-02 19:11:08','admin@speak.com','2014-10-02 19:11:08','point','part1','2014-09-30','北京','考点二','5'),(44,'02204855-0d89-4c9d-9a5d-0cba9496c6de',1,'8,9,','0','','','0',NULL,'admin@speak.com','2014-10-02 22:18:42','admin@speak.com','2014-10-02 22:18:42','point','part1','2014-09-30','北京','考点二','5'),(45,'d67a2c12-a9e7-4acb-a6c9-481575647c67',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-07 00:49:10','admin@speak.com','2014-10-07 00:49:10','point','part1','2014-09-30','北京','考点二','5'),(46,'3683f681-b674-4bc9-8c25-68b8c5268d67',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-07 00:58:50','admin@speak.com','2014-10-07 00:58:50','point','part1','2014-09-30','北京','考点二','5'),(47,'7d1c4437-4d48-4beb-86ed-d1bf4a14eeee',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-07 19:57:32','admin@speak.com','2014-10-07 19:57:32','point','part1','2014-09-30','北京','考点二','5'),(48,'39c2ca61-dc0c-42bb-93ba-2682cf1ccda1',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-08 00:54:37','admin@speak.com','2014-10-08 00:54:37','point','part1','2014-09-30','北京','考点二','5'),(49,'f20903dc-e92c-4c5b-a05a-a5b83fd9bb8c',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-08 01:03:48','admin@speak.com','2014-10-08 01:03:48','point','part1','2014-09-30','北京','考点二','5'),(50,'0f39fee9-e2e1-4af9-a23a-ba8783f3a3e9',1,'8,9,','0','4,','3,','0','animals,jjjjjjjjjjjj,ccc(Part2),dgfdg(Part3),','admin@speak.com','2014-10-08 01:07:34','admin@speak.com','2014-10-08 01:07:34','self',NULL,NULL,NULL,NULL,NULL),(51,'73d6b01c-0a13-4bce-9671-7d9b98fb008c',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-08 01:07:47','admin@speak.com','2014-10-08 01:07:47','point','part1','2014-09-30','北京','考点二','5'),(52,'e0bace8e-9b8a-4abe-b41d-1785ab364147',1,'8,','0','','','0','animals,','admin@speak.com','2014-10-08 01:08:17','admin@speak.com','2014-10-08 01:08:17','self',NULL,NULL,NULL,NULL,NULL),(53,'6863ddee-267c-47b8-8c20-8e45bd6b99a2',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-08 01:08:38','admin@speak.com','2014-10-08 01:08:38','point','part1','2014-09-30','北京','考点二','5'),(54,'41100ccf-d801-4207-9318-09ce484cf017',1,'8,','0','','','0','animals,','admin@speak.com','2014-10-08 01:11:12','admin@speak.com','2014-10-08 01:11:12','self',NULL,NULL,NULL,NULL,NULL),(55,'43993eef-9a66-45a7-b4a0-64487939f718',1,'8,9,','0','','','0',NULL,'admin@speak.com','2014-10-08 01:16:23','admin@speak.com','2014-10-08 01:16:23','point','part1','2014-09-30','北京','考点二','5'),(56,'3d7bef03-4335-46cb-9fb3-8c095288b516',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-08 02:04:43','admin@speak.com','2014-10-08 02:04:43','point','part1','2014-09-30','北京','考点二','5'),(57,'5170ea89-321d-4fb8-a82b-069dac949d69',1,'8,9,','0','','','0',NULL,'admin@speak.com','2014-10-08 03:53:09','admin@speak.com','2014-10-08 03:53:09','point','part1','2014-09-30','北京','考点二','5'),(58,'adc324e7-dc3c-48c6-a20e-eacdf823405c',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-08 04:05:07','admin@speak.com','2014-10-08 04:05:07','point','part1','2014-09-30','北京','考点二','5'),(59,'9d9b036a-c484-4daa-ac06-ffb229f6b01a',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-08 04:11:55','admin@speak.com','2014-10-08 04:11:55','point','part1','2014-09-30','北京','考点二','5'),(60,'8a7bfaf7-f486-46b5-87e9-391f1e1bfa5c',1,'9,8,','0','','','0',NULL,'admin@speak.com','2014-10-08 21:49:26','admin@speak.com','2014-10-08 21:49:26','point','part1','2014-09-30','北京','考点二','5'),(61,'bc4f1fc5-f65e-48e9-8ea5-24b7518b5cf1',1,'8,9,','0','','','0',NULL,'admin@speak.com','2014-10-08 21:56:40','admin@speak.com','2014-10-08 21:56:40','point','part1','2014-09-30','北京','考点二','5');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_partone`
--

LOCK TABLES `t_app_partone` WRITE;
/*!40000 ALTER TABLE `t_app_partone` DISABLE KEYS */;
INSERT INTO `t_app_partone` VALUES (8,'animals',8,NULL,'admin@speak.com','2014-09-07 13:50:47','admin@speak.com','2014-09-13 02:04:37'),(9,'jjjjjjjjjjjj',9,NULL,'admin@speak.com','2014-09-13 02:03:32','admin@speak.com','2014-09-13 02:04:05');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_partonequestion`
--

LOCK TABLES `t_app_partonequestion` WRITE;
/*!40000 ALTER TABLE `t_app_partonequestion` DISABLE KEYS */;
INSERT INTO `t_app_partonequestion` VALUES (65,'fdsfsdfs','sf','Hometown 6.mp3','ed9514a8-140d-4a70-b928-44a27c77f1e2',8,65,NULL,'admin@speak.com','2014-09-07 13:51:02','admin@speak.com','2014-09-13 02:04:22'),(71,'gfdsgd','gddg','Dictionaries 3.m4a','f31437e5-9306-4c88-b8ef-2e75d135a9d5',9,71,NULL,'admin@speak.com','2014-09-13 02:03:45','admin@speak.com','2014-09-13 02:04:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_partthree`
--

LOCK TABLES `t_app_partthree` WRITE;
/*!40000 ALTER TABLE `t_app_partthree` DISABLE KEYS */;
INSERT INTO `t_app_partthree` VALUES (2,'fffff','ggggg','Music/Music 2.mp3','cccb1dab-2050-48ab-871c-6453ae395733',2,1,NULL,'admin@speak.com','2014-09-04 03:00:58','admin@speak.com','2014-09-04 03:03:24'),(4,NULL,NULL,'Music/Music 4.mp3','219a3100-4d78-4bd4-89e3-024294346fdc',2,-1409771030101,NULL,'admin@speak.com','2014-09-04 03:00:58','admin@speak.com','2014-09-04 03:03:50'),(8,'gfdsgdfgfdsgdsgdfgggggggggggggggggggggggggggggggggdddddddddddddddd','gggggddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd','Music/Music 8.mp3','4d15b631-50fd-4e43-9636-fcf6e02b1dd9',2,-1409770880417,NULL,'admin@speak.com','2014-09-04 03:00:59','admin@speak.com','2014-09-04 03:03:40'),(9,'gggggggggggggggggg','ddddddddddddddddddddddddddd','Music/Music 9.mp3','17415bd4-253b-40a3-9966-4b14e1e8030a',2,9,NULL,'admin@speak.com','2014-09-04 03:00:59','admin@speak.com','2014-09-04 03:03:30'),(22,'fdsf','sdf','Home 2.mp3','0d3b912b-64df-4a47-a675-03d6aa863d32',3,22,NULL,'admin@speak.com','2014-09-13 02:05:16','admin@speak.com','2014-09-13 02:05:32'),(23,'fdsafds','fsdaf','Home 3.mp3','c9a64d70-723a-4981-b282-cef316b70449',3,23,NULL,'admin@speak.com','2014-09-13 02:05:16','admin@speak.com','2014-09-13 02:05:34'),(24,'fdsafdsa','fsd','Home 4.mp3','011b332d-d8e9-4378-a53e-201ad344c6b4',3,24,NULL,'admin@speak.com','2014-09-13 02:05:16','admin@speak.com','2014-09-13 02:05:37'),(25,'fdsfsd','sdafd','Home 5.mp3','c2b4ddd3-22fb-40ee-8b45-ee7f99571555',3,25,NULL,'admin@speak.com','2014-09-13 02:05:17','admin@speak.com','2014-09-13 02:05:40'),(30,'fffffffffffffff','ffffffdsaf','Museums 1.m4a','0622cc3a-acdc-4251-8125-33103731ce5b',4,30,NULL,'admin@speak.com','2014-09-13 02:05:52','admin@speak.com','2014-09-13 02:05:59'),(31,'gsfdgfdg','gdfsg','Museums 2.m4a','991b0c68-49cb-4206-9dce-2aa8fcb74bc2',4,31,NULL,'admin@speak.com','2014-09-13 02:05:53','admin@speak.com','2014-09-13 02:07:46'),(32,'gsfdgdsf','gdfgf','Museums 3.m4a','4d46f31b-6108-4bf7-83f4-c0613f1c05f7',4,32,NULL,'admin@speak.com','2014-09-13 02:05:53','admin@speak.com','2014-09-13 02:07:49'),(33,'gfdgdfs','ggfd','Museums 4.m4a','8c553586-1de6-48f5-964f-170711c7eb41',4,33,NULL,'admin@speak.com','2014-09-13 02:05:53','admin@speak.com','2014-09-13 02:07:52'),(34,'gfdgfdsgfdgdf','gdgs','Museums 5.m4a','e4b1e025-0678-41b5-b123-1319df1a0e5e',4,34,NULL,'admin@speak.com','2014-09-13 02:05:54','admin@speak.com','2014-09-13 02:07:56'),(35,'gfd','dggfd','Museums 6.m4a','aaa7e607-1d64-4b74-b5d9-728323135fb2',4,35,NULL,'admin@speak.com','2014-09-13 02:05:54','admin@speak.com','2014-09-13 02:08:00'),(36,'gsfddsf','g','Museums 7.m4a','f957cd63-7eb3-484e-aa1a-803def31aafb',4,36,NULL,'admin@speak.com','2014-09-13 02:05:54','admin@speak.com','2014-09-13 02:08:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_parttwo`
--

LOCK TABLES `t_app_parttwo` WRITE;
/*!40000 ALTER TABLE `t_app_parttwo` DISABLE KEYS */;
INSERT INTO `t_app_parttwo` VALUES (3,'gfdsg','dgfdg','dfgd','gsfdg','test.m4a','576E0FC8-7A0D-132D-6EC2-3CF066DA703C',3,NULL,'admin@speak.com','2014-09-04 03:14:30','admin@speak.com','2014-09-13 02:05:42'),(4,'ccc','ccc','xzx','cxzc','test.m4a','29F5E5EA-F59D-CC35-12D5-4EAD1140EED8',4,NULL,'admin@speak.com','2014-09-07 13:54:21','admin@speak.com','2014-09-13 02:08:10');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_question`
--

LOCK TABLES `t_app_question` WRITE;
/*!40000 ALTER TABLE `t_app_question` DISABLE KEYS */;
INSERT INTO `t_app_question` VALUES (6,'this is a test',NULL,'LEC1.mp4','220FC0A5-5BA4-9837-E4A6-88AC7B6BD6D3','93A064A2-241E-F221-E085-88AC7B2DF393',6,NULL,'admin@speak.com','2014-09-18 20:11:39','admin@speak.com','2014-09-18 20:11:39'),(7,'我是一个话题',NULL,'LEC1.mp4','8300EDD9-05E6-B107-837F-88B8BFA12932','0E1B60C2-BE23-E53A-D36A-88B8BF611678',7,NULL,'admin@speak.com','2014-09-18 20:25:15','admin@speak.com','2014-09-18 20:25:15'),(8,'测试测试',NULL,'LEC1.mp4','9157CA22-0FA1-3750-6323-88B94E9C0ACB','6F5CCDC0-D55C-ACB6-7689-88B94E5C87FF',8,NULL,'admin@speak.com','2014-09-18 20:27:33','admin@speak.com','2014-09-18 20:27:33'),(9,'啊啊搜索',NULL,'LEC1.mp4','A283109F-0386-B0F2-A440-88BB690C504A','4758BA13-5733-D5D7-35DD-88BB68CFC1CE',9,NULL,'admin@speak.com','2014-09-18 20:28:13','admin@speak.com','2014-09-18 20:28:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_recordhistory`
--

LOCK TABLES `t_app_recordhistory` WRITE;
/*!40000 ALTER TABLE `t_app_recordhistory` DISABLE KEYS */;
INSERT INTO `t_app_recordhistory` VALUES (140,'f20903dc-e92c-4c5b-a05a-a5b83fd9bb8c',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 01:03:48','admin@speak.com','2014-10-08 01:03:48'),(141,'f20903dc-e92c-4c5b-a05a-a5b83fd9bb8c',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 01:03:48','admin@speak.com','2014-10-08 01:03:48'),(142,'0f39fee9-e2e1-4af9-a23a-ba8783f3a3e9',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 01:07:34','admin@speak.com','2014-10-08 01:07:34'),(143,'0f39fee9-e2e1-4af9-a23a-ba8783f3a3e9',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 01:07:34','admin@speak.com','2014-10-08 01:07:34'),(144,'0f39fee9-e2e1-4af9-a23a-ba8783f3a3e9',1,'part2',4,'ccc(Part2)',NULL,0,'admin@speak.com','2014-10-08 01:07:34','admin@speak.com','2014-10-08 01:07:34'),(145,'0f39fee9-e2e1-4af9-a23a-ba8783f3a3e9',1,'part3',3,'dgfdg(Part3)',NULL,0,'admin@speak.com','2014-10-08 01:07:34','admin@speak.com','2014-10-08 01:07:34'),(146,'73d6b01c-0a13-4bce-9671-7d9b98fb008c',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 01:07:47','admin@speak.com','2014-10-08 01:07:47'),(147,'73d6b01c-0a13-4bce-9671-7d9b98fb008c',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 01:07:47','admin@speak.com','2014-10-08 01:07:47'),(148,'e0bace8e-9b8a-4abe-b41d-1785ab364147',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 01:08:17','admin@speak.com','2014-10-08 01:08:17'),(149,'6863ddee-267c-47b8-8c20-8e45bd6b99a2',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 01:08:38','admin@speak.com','2014-10-08 01:08:38'),(150,'6863ddee-267c-47b8-8c20-8e45bd6b99a2',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 01:08:38','admin@speak.com','2014-10-08 01:08:38'),(151,'41100ccf-d801-4207-9318-09ce484cf017',1,'part1',8,'animals',NULL,1,'admin@speak.com','2014-10-08 01:11:12','admin@speak.com','2014-10-08 01:11:46'),(152,'43993eef-9a66-45a7-b4a0-64487939f718',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 01:16:23','admin@speak.com','2014-10-08 01:16:23'),(153,'43993eef-9a66-45a7-b4a0-64487939f718',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 01:16:23','admin@speak.com','2014-10-08 01:16:23'),(154,'3d7bef03-4335-46cb-9fb3-8c095288b516',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 02:04:43','admin@speak.com','2014-10-08 02:04:43'),(155,'3d7bef03-4335-46cb-9fb3-8c095288b516',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 02:04:43','admin@speak.com','2014-10-08 02:04:43'),(156,'5170ea89-321d-4fb8-a82b-069dac949d69',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 03:53:09','admin@speak.com','2014-10-08 03:53:09'),(157,'5170ea89-321d-4fb8-a82b-069dac949d69',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 03:53:09','admin@speak.com','2014-10-08 03:53:09'),(158,'adc324e7-dc3c-48c6-a20e-eacdf823405c',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 04:05:07','admin@speak.com','2014-10-08 04:05:07'),(159,'adc324e7-dc3c-48c6-a20e-eacdf823405c',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 04:05:07','admin@speak.com','2014-10-08 04:05:07'),(160,'9d9b036a-c484-4daa-ac06-ffb229f6b01a',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 04:11:55','admin@speak.com','2014-10-08 04:11:55'),(161,'9d9b036a-c484-4daa-ac06-ffb229f6b01a',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 04:11:55','admin@speak.com','2014-10-08 04:11:55'),(162,'8a7bfaf7-f486-46b5-87e9-391f1e1bfa5c',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 21:49:26','admin@speak.com','2014-10-08 21:49:26'),(163,'8a7bfaf7-f486-46b5-87e9-391f1e1bfa5c',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 21:49:26','admin@speak.com','2014-10-08 21:49:26'),(164,'bc4f1fc5-f65e-48e9-8ea5-24b7518b5cf1',1,'part1',8,'animals',NULL,0,'admin@speak.com','2014-10-08 21:56:40','admin@speak.com','2014-10-08 21:56:40'),(165,'bc4f1fc5-f65e-48e9-8ea5-24b7518b5cf1',1,'part1',9,'jjjjjjjjjjjj',NULL,0,'admin@speak.com','2014-10-08 21:56:40','admin@speak.com','2014-10-08 21:56:40');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_recordone`
--

LOCK TABLES `t_app_recordone` WRITE;
/*!40000 ALTER TABLE `t_app_recordone` DISABLE KEYS */;
INSERT INTO `t_app_recordone` VALUES (24,'41100ccf-d801-4207-9318-09ce484cf017',NULL,151,'tui tle','content',202,'84F2309A-2AC2-1B9A-9CD4-EB9821B8180A',0,'annoymous','2014-10-08 01:11:29','annoymous','2014-10-08 01:11:29'),(25,'41100ccf-d801-4207-9318-09ce484cf017',NULL,151,'gggggg gggg','gfffffffffffffff',855,'0352690C-41DD-3A7A-73EE-EB983A5D0A8D',0,'annoymous','2014-10-08 01:11:35','annoymous','2014-10-08 01:11:35');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_recordtopic`
--

LOCK TABLES `t_app_recordtopic` WRITE;
/*!40000 ALTER TABLE `t_app_recordtopic` DISABLE KEYS */;
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
INSERT INTO `t_app_resource` VALUES (1,'关于我们','<img src=\"/speak/download/resource/ACF6EA3A-149B-962C-CDE5-36F6A2F86FDD\"><img src=\"/speak/download/resource/835FE06E-645E-E838-7CD4-36F6EFD89A3B\">​我是关<span style=\"color:#FFD700\">于我们，请编辑我 ...</span><br><br>​<img data-cke-saved-src=\"/speak/download/resource/04A98D0B-C973-F53D-C531-B6D396B790F8\" src=\"/speak/download/resource/04A98D0B-C973-F53D-C531-B6D396B790F8\">',-1409668689675,'aboutus','admin','2014-07-09 22:17:06','admin@speak.com','2014-09-02 23:24:00'),(2,'联系我们','我是联系我们，请编辑我 ...<br><br>​<img src=\"/speak/download/resource/21D6F07E-BA59-C335-E832-B6D5515BF5F5\"><br>',2,'contact','admin','2014-07-09 22:17:06','admin@speak.com','2014-09-02 22:34:23'),(3,'常见问题','我是常见问题，请编辑我 ...<br><br>​<img src=\"/speak/download/resource/648FCCCB-9014-A629-9BA5-B6D5FB3E20B0\"><br>',3,'faq','admin','2014-07-09 22:17:06','admin@speak.com','2014-08-09 02:16:54'),(4,'加入我们','我是加入我们，请编辑我 ...<br><br>​<img src=\"/speak/download/resource/5A8AA55F-8300-E165-389C-B6D6A0947460\"><br>',1409668691643,'join','admin','2014-07-09 22:17:06','admin@speak.com','2014-09-02 22:38:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict_examcity`
--

LOCK TABLES `t_dict_examcity` WRITE;
/*!40000 ALTER TABLE `t_dict_examcity` DISABLE KEYS */;
INSERT INTO `t_dict_examcity` VALUES (1,'北京'),(5,'深圳'),(6,'上饶'),(7,'玉山'),(8,'黑龙江'),(9,'河北');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict_exampoint`
--

LOCK TABLES `t_dict_exampoint` WRITE;
/*!40000 ALTER TABLE `t_dict_exampoint` DISABLE KEYS */;
INSERT INTO `t_dict_exampoint` VALUES (1,1,'考点一123'),(2,1,'考点二'),(3,1,'考点三'),(4,2,'考点一'),(5,2,'考点二'),(6,2,'考点三'),(7,3,'考点一'),(8,3,'考点二'),(9,3,'考点三'),(10,4,'考点一'),(11,4,'考点二'),(12,4,'考点三'),(13,5,'考点一'),(14,5,'考点二'),(15,5,'考点三'),(18,1,'方法给他人'),(19,9,'唐山'),(22,9,'承德');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict_examtime`
--

LOCK TABLES `t_dict_examtime` WRITE;
/*!40000 ALTER TABLE `t_dict_examtime` DISABLE KEYS */;
INSERT INTO `t_dict_examtime` VALUES (1,'2014-09-30'),(2,'2014-10-18'),(3,'2014-10-20'),(6,'2014-10-02'),(7,'2014-11-12'),(8,'2014-10-17');
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
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_admin_login`
--

LOCK TABLES `t_sys_admin_login` WRITE;
/*!40000 ALTER TABLE `t_sys_admin_login` DISABLE KEYS */;
INSERT INTO `t_sys_admin_login` VALUES (15,'admin@speak.com','127.0.0.1','131E2FE00A1678F2B9D64B42B908149F','2014-08-21 01:29:10'),(16,'admin@speak.com','127.0.0.1','BD73B1B140DFAD7796A4CA3C5D36EEA4','2014-08-21 01:45:35'),(17,'admin@speak.com','127.0.0.1','5052B4C665CFC4946421CC98F68C66E8','2014-08-21 09:41:54'),(18,'admin@speak.com','127.0.0.1','3F37D4F4DB9820DB23C0DFE709FAA271','2014-08-21 10:10:01'),(19,'admin@speak.com','192.168.1.104','A9380918C2BFB16F64A021BA4484F582','2014-08-21 10:49:43'),(20,'admin@speak.com','192.168.0.109','E71B7C005624674E5BF68EB1FA0010AD','2014-08-21 12:53:28'),(21,'admin@speak.com','192.168.0.118','2D9D8DA66AD22412D8C6324A0628BEEA','2014-08-21 12:53:45'),(22,'admin@speak.com','127.0.0.1','119399FB96A594B05BE2860ADBB2D519','2014-08-21 12:56:08'),(23,'admin@speak.com','192.168.0.118','A0C9009C2DC6FC8CEB676F7782CB75B0','2014-08-21 13:00:49'),(24,'admin@speak.com','127.0.0.1','0C70440348603F633B255EC6418CC8DF','2014-08-21 21:45:49'),(25,'admin@speak.com','192.168.1.103','05B41C005C35FDAABFBD67D73E415A42','2014-08-21 21:51:25'),(26,'admin@speak.com','127.0.0.1','4BE460DC91DA212FFC1683345C67E81C','2014-08-24 15:28:20'),(27,'hei_persie@126.com','127.0.0.1','E3361D5C2D2570286A4F1B783BEE18A6','2014-09-01 00:52:22'),(28,'admin@speak.com','127.0.0.1','6BC4D134E65C7EE982F65A87EBFE2946','2014-09-01 00:53:14'),(29,'admin@speak.com','127.0.0.1','84209515A71EC48FE6D0B0C89F00EB6E','2014-09-01 00:53:34'),(30,'admin@speak.com','192.168.1.103','CDE1A0BF641CB14ABCE0CE4B97E44F8E','2014-09-01 01:44:19'),(31,'admin@speak.com','127.0.0.1','8300DA39B3D116A252513096C40FDE62','2014-09-01 02:44:00'),(32,'admin@speak.com','127.0.0.1','7B5E0DA6541315470666485A515D7706','2014-09-01 02:59:13'),(33,'hei_persie@126.com','127.0.0.1','4230C68057DF5C9BA1C1833D0FBB0521','2014-09-01 03:08:18'),(34,'admin@speak.com','127.0.0.1','6AB5EF2CF68DD164B1735D9BBE44647B','2014-09-01 03:09:12'),(35,'admin@speak.com','192.168.1.103','38C97163623EB4B03A95430B3386648A','2014-09-01 03:22:56'),(36,'admin@speak.com','127.0.0.1','4FCE64F2AC3CF81E59A190B4005606F0','2014-09-01 15:55:33'),(37,'admin@speak.com','127.0.0.1','F9FD860849D63B218FFDF39663272530','2014-09-01 16:03:25'),(38,'admin@speak.com','127.0.0.1','144129B7C3E8F144B8EFBEF4F2D3B688','2014-09-01 16:05:45'),(39,'admin@speak.com','127.0.0.1','BEA3C00F5D2AC37A035886E4C31151CF','2014-09-01 16:27:20'),(40,'admin@speak.com','127.0.0.1','B0F7E4F66A80A231A6BC701278F1F1BE','2014-09-01 16:38:21'),(41,'admin@speak.com','127.0.0.1','968D767E85859AE634404C051D725F19','2014-09-01 17:50:14'),(42,'admin@speak.com','127.0.0.1','9397CEFD002A91ACF64B86E0CF440C9F','2014-09-01 18:04:11'),(43,'admin@speak.com','127.0.0.1','09FED3EE955275EF5BB16256DBA0638A','2014-09-01 19:16:24'),(44,'admin@speak.com','127.0.0.1','AB42EE5C8B44D8CBABA578C0FAC239C9','2014-09-01 19:27:56'),(45,'admin@speak.com','127.0.0.1','644CE2EC2E7E5B8BDC3B731F8E7E56A7','2014-09-01 19:50:49'),(46,'admin@speak.com','127.0.0.1','B2D2906EBCB28DC84BBB47C120A87AA4','2014-09-02 14:09:17'),(47,'admin@speak.com','127.0.0.1','516E285725C0EC4F09D1288A7C4BEAB9','2014-09-02 19:52:24'),(48,'admin@speak.com','127.0.0.1','751A6D347CDF04A1FC776D031A05D022','2014-09-02 19:52:55'),(49,'admin@speak.com','127.0.0.1','4A15ABAF59EF0102EE6D2F93B0A639D5','2014-09-02 21:49:40'),(50,'admin@speak.com','192.168.1.103','ED07033DB326FCAFDA8A1F840F2FE241','2014-09-03 02:20:58'),(51,'admin@speak.com','127.0.0.1','6CFD8912CAD7C7B9C73C6CB66A8BED4B','2014-09-03 23:26:45'),(52,'admin@speak.com','127.0.0.1','C7ED10C46907716D8F3788F658C80B82','2014-09-04 03:21:28'),(53,'hei_persie@126.com','127.0.0.1','FD5B381BEE7C106C022A4AC9A1643183','2014-09-05 03:32:33'),(54,'admin@speak.com','127.0.0.1','DE1AD15AF1D03403EBE70040D9C8461D','2014-09-05 17:12:46'),(55,'admin@speak.com','127.0.0.1','EE2973B72E89EFFFE1C9C616F16F03B9','2014-09-05 17:19:01'),(56,'admin@speak.com','127.0.0.1','B48165113A78697FEFFE6A3CA9935649','2014-09-06 01:12:03'),(57,'admin@speak.com','127.0.0.1','93D9315473D598736B714593081B50D0','2014-09-06 01:50:11'),(58,'admin@speak.com','127.0.0.1','0ADBEDD8F01433E19800DCDB04A240C2','2014-09-06 01:50:36'),(59,'admin@speak.com','127.0.0.1','640C4E13FE42C632CD92F6381D05296C','2014-09-06 01:51:01'),(60,'admin@speak.com','127.0.0.1','A94489CA0B3A907759DC59E5458F5DB6','2014-09-06 02:02:41'),(61,'admin@speak.com','127.0.0.1','3B6B25B5E0FEB7CDFADB5DCF38A60006','2014-09-06 02:03:08'),(62,'admin@speak.com','127.0.0.1','88E89499ABE5E75F7877ED605D2587BD','2014-09-06 02:04:05'),(63,'hei_persie@126.com','127.0.0.1','CE9FAD7CB6269C8C4E5349448EAC0E19','2014-09-06 02:26:57'),(64,'hei_persie@126.com','127.0.0.1','102B15B554A593A6821971BB8FC90C7F','2014-09-06 02:41:46'),(65,'hei_persie@126.com','127.0.0.1','2342113DF9B246805E3DA5A49381BD27','2014-09-06 02:42:00'),(66,'hei_persie@126.com','127.0.0.1','018D21BE515F8AE82F1E73E8160E384C','2014-09-06 02:51:34'),(67,'hei_persie@126.com','127.0.0.1','A48282E93B471F2F0128A667C369CB82','2014-09-06 03:10:18'),(68,'hei_persie@126.com','127.0.0.1','27D6F5B54AC857FCB361A0426E8A996D','2014-09-06 16:55:16'),(69,'admin@speak.com','127.0.0.1','5C86B877069048BD4F1C0FFEC129139D','2014-09-06 17:09:03'),(70,'hei_persie@126.com','127.0.0.1','4055A8A057A539945CB8409614C237AD','2014-09-06 18:03:23'),(71,'admin@speak.com','127.0.0.1','2A75529F35F4D1D8D4B4EFC395DB387E','2014-09-06 18:12:25'),(72,'admin@speak.com','192.168.1.103','75B237181F552C3D7FAD9E65410DFA6A','2014-09-06 18:23:08'),(73,'hei_persie@126.com','127.0.0.1','9AF57DDBA51AE2FBB13EF4B02DC628DC','2014-09-06 23:19:42'),(74,'hei_persie@126.com','127.0.0.1','E0CCE4DFB46C96836EC36E5F09105541','2014-09-06 23:30:08'),(75,'admin@speak.com','127.0.0.1','AFE04F2F89E8B2C275E6DC3294DA88BF','2014-09-07 02:31:39'),(76,'admin@speak.com','127.0.0.1','8EEC88323CE95987E9C0932B02FE9068','2014-09-07 02:32:03'),(77,'admin@speak.com','127.0.0.1','0EC47E2D301595C282EAC5AC92B2982F','2014-09-07 02:39:19'),(78,'admin@speak.com','127.0.0.1','8DB7FEB3ACE869CBE07889C58EB5C734','2014-09-07 02:44:45'),(79,'admin@speak.com','192.168.1.100','B6E02377F3156E446A9465FBAEB781D8','2014-09-07 03:24:57'),(80,'admin@speak.com','127.0.0.1','646C445077D6861401B96E63D512C150','2014-09-07 11:26:04'),(81,'admin@speak.com','127.0.0.1','DD90D84C3777062EB6FF1EFC4BB899AA','2014-09-07 13:46:51'),(82,'admin@speak.com','127.0.0.1','B959705C91BA93F07AFB59F562698C46','2014-09-07 13:56:04'),(83,'admin@speak.com','127.0.0.1','4D6FBB226E5B614B61A4EFA8F3EFA3E0','2014-09-08 00:24:59'),(84,'admin@speak.com','127.0.0.1','9BAACBDCEB7C9CB613982DAF84F0199E','2014-09-08 01:07:38'),(85,'admin@speak.com','127.0.0.1','708500ADC6EAF8E0F6537191496A484C','2014-09-08 01:36:47'),(86,'admin@speak.com','127.0.0.1','87C244CA0FDA5770EEAB9FF4CA32E21A','2014-09-09 01:00:36'),(87,'admin@speak.com','127.0.0.1','C237C5FC44E8BF71DCD0AB321C7B6896','2014-09-09 23:11:44'),(88,'admin@speak.com','127.0.0.1','C76C26F0D6F6F013776C079008850083','2014-09-09 23:33:34'),(89,'admin@speak.com','192.168.1.100','743A14FB255C5D2D6AC410AA1C7FF980','2014-09-09 23:34:39'),(90,'admin@speak.com','127.0.0.1','27E4959BEB7ACBC5917E3FB91C653BFA','2014-09-10 00:33:35'),(91,'admin@speak.com','192.168.1.100','5C77AE6E84BE4BACFEF7756BC0D461FD','2014-09-10 00:38:25'),(92,'admin@speak.com','127.0.0.1','C08427EA61622833375117EF85740CE4','2014-09-10 02:02:59'),(93,'admin@speak.com','127.0.0.1','D0570B5AB18295AEF9DAE6CA9D73F7F7','2014-09-10 21:36:48'),(94,'admin@speak.com','192.168.1.100','EE092A5435BB3C4084139C18BDE8717B','2014-09-10 21:44:56'),(95,'admin@speak.com','127.0.0.1','EB7BD324E98B7C7F8E7A4B6489744592','2014-09-10 22:05:36'),(96,'admin@speak.com','127.0.0.1','7BD6D3FBE3DB3C5A57ABF6F4A027A761','2014-09-11 00:29:35'),(97,'admin@speak.com','127.0.0.1','A5F8473E12836D6BCA63FAE0A9E2A5F1','2014-09-11 00:38:51'),(98,'admin@speak.com','192.168.1.100','8377313D0252283F2748E8C6F3A0DA29','2014-09-11 00:48:00'),(99,'admin@speak.com','127.0.0.1','42581E4683A07964E1616E70DDD487F1','2014-09-11 01:43:56'),(100,'admin@speak.com','127.0.0.1','2BCF7475BB29D8F69A952A6B9F333E41','2014-09-11 01:44:24'),(101,'admin@speak.com','127.0.0.1','C25B8526D788D52D5F3BCAE1DCCB5955','2014-09-11 10:48:23'),(102,'admin@speak.com','127.0.0.1','7ED5772AA7163482FD64258631163592','2014-09-12 03:50:27'),(103,'admin@speak.com','127.0.0.1','73776788E684573CCB07802231E3D0A7','2014-09-12 03:56:32'),(104,'admin@speak.com','192.168.1.100','3FD6533CFA7639DE53CF232493DF518D','2014-09-12 03:58:38'),(105,'admin@speak.com','127.0.0.1','3A8408C5818D4C9EDD8A9F8431F477A6','2014-09-12 21:01:25'),(106,'admin@speak.com','127.0.0.1','69F3A6A177E9FD71EAD7D9DF40CEF31D','2014-09-12 21:01:43'),(107,'admin@speak.com','192.168.1.100','C5F13F22AAABE093CBEC138545419716','2014-09-12 21:02:25'),(108,'admin@speak.com','127.0.0.1','A146BA70CB2A1CC03BF7F0652A42503D','2014-09-12 21:19:27'),(109,'admin@speak.com','127.0.0.1','244D9EA0FB484E81020D59E174B57DD0','2014-09-12 21:19:51'),(110,'admin@speak.com','127.0.0.1','BD7AFBF00585AB3DF1339D0CAF419843','2014-09-12 21:21:25'),(111,'admin@speak.com','127.0.0.1','8E2B06E121141794D641576EE149B071','2014-09-12 21:22:32'),(112,'admin@speak.com','192.168.1.100','B38548D24ACC37098FD88B87D8D11208','2014-09-12 21:22:50'),(113,'admin@speak.com','127.0.0.1','A2E89B73AEBEA992FA7BA989E1860870','2014-09-12 23:30:59'),(114,'admin@speak.com','127.0.0.1','3D1BFB4C055A19C49B48D7C41FA55E3B','2014-09-12 23:39:33'),(115,'admin@speak.com','127.0.0.1','5FA9B09E4880A0DA08317470DC088909','2014-09-12 23:42:17'),(116,'admin@speak.com','127.0.0.1','3D4BE422FEA475D6100F8379AF4C5EAC','2014-09-12 23:53:49'),(117,'admin@speak.com','127.0.0.1','8A16FB27866D5066E5F81F49B8BB980B','2014-09-12 23:55:02'),(118,'admin@speak.com','192.168.1.100','1A8803E757897B930C417604F5088410','2014-09-13 00:59:39'),(119,'admin@speak.com','127.0.0.1','59D4689968ACAD1EA0432219F50C8663','2014-09-13 02:02:54'),(120,'admin@speak.com','127.0.0.1','E83AAB91B9D39F1A6F03325553E0C962','2014-09-13 02:03:15'),(121,'admin@speak.com','127.0.0.1','337F0920299893B96D6457340C4B320C','2014-09-13 03:06:23'),(122,'admin@speak.com','127.0.0.1','FAE203493C216303DA0E52DC6C93A322','2014-09-13 04:08:10'),(123,'admin@speak.com','127.0.0.1','23B0696B7C94415594C90C7D806DA94A','2014-09-13 04:09:06'),(124,'admin@speak.com','127.0.0.1','A5733A0F63AAE8AFB5CE30E05E454C43','2014-09-13 23:18:55'),(125,'admin@speak.com','127.0.0.1','7A29BDCCA672FC359DE3C3362D01FFF0','2014-09-14 00:15:32'),(126,'admin@speak.com','127.0.0.1','CAB2213BFA93C63FE1A966B0EEA1100F','2014-09-14 00:15:45'),(127,'admin@speak.com','192.168.1.100','4888A7F5C89110019AA144744A1DED66','2014-09-14 00:15:58'),(128,'admin@speak.com','192.168.1.100','59EFA9A564109E876D2CC8AA5A243341','2014-09-14 02:26:15'),(129,'admin@speak.com','127.0.0.1','1BACD4996EF2536967E02088B206DFD1','2014-09-14 03:33:22'),(130,'admin@speak.com','127.0.0.1','4ECBDA1A891337D6AABCEAA1297D1F06','2014-09-14 03:36:29'),(131,'admin@speak.com','127.0.0.1','4D2903659D763745983AE87B68B2FAE4','2014-09-14 03:41:49'),(132,'admin@speak.com','127.0.0.1','17195B3B69F2EF26F60437946F6C06B4','2014-09-14 22:57:12'),(133,'admin@speak.com','127.0.0.1','3AACA7AFB799662CFABA2626003D19B2','2014-09-16 01:11:13'),(134,'admin@speak.com','127.0.0.1','A7D51F5D19311392FB29A025587495A0','2014-09-16 23:18:37'),(135,'admin@speak.com','127.0.0.1','822D26768CAE7F4C678314F9AF9F12A9','2014-09-16 23:20:12'),(136,'admin@speak.com','192.168.1.108','9AB2DD8BE654C8D90B880FC1B3051563','2014-09-16 23:20:41'),(137,'admin@speak.com','127.0.0.1','6DBC56DF4A77112641A237D55C3D1058','2014-09-16 23:36:52'),(138,'admin@speak.com','127.0.0.1','4E3238EDB93002B8C5EDE3D304B86289','2014-09-16 23:37:21'),(139,'admin@speak.com','192.168.1.108','7B6B8205D5F2BB16ED8F266C12520720','2014-09-16 23:37:45'),(140,'admin@speak.com','127.0.0.1','41466FB19E301F260FD566B6A4FB5749','2014-09-17 01:08:25'),(141,'admin@speak.com','192.168.1.108','C44BA207F47D03D17E7140146186674E','2014-09-17 01:08:43'),(142,'admin@speak.com','127.0.0.1','418D13458082468A32958CC6FD714D7A','2014-09-17 01:08:59'),(143,'admin@speak.com','127.0.0.1','49396D58855DB6C05DFFF1547E506EB3','2014-09-17 04:52:08'),(144,'admin@speak.com','127.0.0.1','7484B740764D00FBAA5B74A9D18EF9C7','2014-09-18 17:22:58'),(145,'admin@speak.com','127.0.0.1','AAE153CC93FAB45CCBC0E63B1F1A4568','2014-09-18 18:03:54'),(146,'admin@speak.com','127.0.0.1','3D802BE47A5CA4445CF0464E30409E59','2014-09-18 19:41:56'),(147,'admin@speak.com','127.0.0.1','A2A05F69198208AFC2AE23D3360D3258','2014-09-18 20:08:22'),(148,'admin@speak.com','127.0.0.1','F33D2B587304A6299AD96C1A68D80D98','2014-09-19 00:35:35'),(149,'admin@speak.com','127.0.0.1','571E1BCF60C0EC655A1CAB508AD9EBCA','2014-09-19 02:11:02'),(150,'admin@speak.com','127.0.0.1','22DAE328A25B4BB875E925996B9E55E6','2014-09-19 02:14:29'),(151,'admin@speak.com','127.0.0.1','C8ED9476CEB8DDE4CC63494036FF5F9F','2014-09-19 03:23:24'),(152,'admin@speak.com','127.0.0.1','7B78B07601F77AA0CFA9359EB97A7E88','2014-09-19 03:23:36'),(153,'admin@speak.com','192.168.1.103','635B44EB24C893B16CA7893546499159','2014-09-19 03:23:44'),(154,'admin@speak.com','127.0.0.1','4E44337F84B7391A3D65FCC7886A89B9','2014-09-19 10:09:52'),(155,'admin@speak.com','127.0.0.1','AC347C783C82039E609E7E756600D883','2014-09-19 10:13:38'),(156,'admin@speak.com','192.168.1.103','B3F46A96EA498DA0D59EDA4FFDF7E0E3','2014-09-19 10:14:36'),(157,'admin@speak.com','127.0.0.1','EE9B1F1500BC5550459ABF31150A7605','2014-09-19 11:07:02'),(158,'admin@speak.com','127.0.0.1','895140EBF328551934C5BBFE056C32AB','2014-09-19 12:40:38'),(159,'admin@speak.com','127.0.0.1','31C79EC644C5B1B3885333D51D37F9A1','2014-09-19 12:45:05'),(160,'admin@speak.com','127.0.0.1','EF9CD38BEE041BCF6F171C36EAA361C2','2014-09-19 14:07:43'),(161,'admin@speak.com','127.0.0.1','4A0822ABCAF54DF0380ECAE024C946C0','2014-09-19 16:36:15'),(162,'admin@speak.com','127.0.0.1','8740D5CE987FF0662409C5ADBF777E60','2014-09-19 17:09:51'),(163,'admin@speak.com','127.0.0.1','A46683E74B98710D0422F33CB908E345','2014-09-19 17:13:10'),(164,'admin@speak.com','127.0.0.1','7B91F945097913E8B7298379D38E8CE8','2014-09-19 17:16:15'),(165,'admin@speak.com','127.0.0.1','491F67E6660A04EBC87EA10E430096A3','2014-09-21 23:25:04'),(166,'admin@speak.com','127.0.0.1','A46685397EF0778743ACD353E44724FA','2014-09-23 15:32:13'),(167,'admin@speak.com','127.0.0.1','5431CEB81FA0A58ADAB82E0617C3D33B','2014-09-23 15:40:57'),(168,'admin@speak.com','127.0.0.1','0E4D4127A1F109E712276F77827C2444','2014-09-24 01:37:03'),(169,'admin@speak.com','127.0.0.1','34036BB2F68E65E2B489555DEAA2958A','2014-09-24 02:16:25'),(170,'admin@speak.com','127.0.0.1','786372BFCAA598F73EC16D1CBFC85023','2014-09-24 02:19:42'),(171,'admin@speak.com','127.0.0.1','57AC1F1BAF9AA3796BC61F4874DFD3C9','2014-09-24 23:41:36'),(172,'admin@speak.com','127.0.0.1','290B9EABFBCEBA71258F0CE4FCE48835','2014-09-25 13:36:33'),(173,'admin@speak.com','127.0.0.1','50B7F34E9054F2B956F968B55BB05626','2014-09-26 04:35:14'),(174,'admin@speak.com','127.0.0.1','AF6E4A314195671676C8ADAF5AB4C469','2014-10-01 14:16:46'),(175,'admin@speak.com','127.0.0.1','7F84D122FD863CF35C0CFED2B963AD87','2014-10-01 21:33:53'),(176,'admin@speak.com','127.0.0.1','B62641BDDB17414AD686524C5BD55132','2014-10-02 01:38:48'),(177,'admin@speak.com','127.0.0.1','30845627B659BEF9F728447C18B4546F','2014-10-02 15:24:46'),(178,'admin@speak.com','127.0.0.1','21AACF4DA3E3F418305894D3FA43C134','2014-10-07 00:49:01'),(179,'admin@speak.com','127.0.0.1','3522F3814980FE0819FB3878685DD3F4','2014-10-07 00:58:42'),(180,'admin@speak.com','127.0.0.1','11481121DC76E8F39FB28D5A2E74B5C1','2014-10-07 19:57:26'),(181,'admin@speak.com','127.0.0.1','65524658C8FF9862CCC1BEDF3ABA9257','2014-10-08 00:54:24'),(182,'admin@speak.com','127.0.0.1','63DAD0304BAB34E2AA3E00F6D8274800','2014-10-08 02:04:37'),(183,'admin@speak.com','127.0.0.1','97C204A4306348088EA08816C2760E74','2014-10-08 04:04:58'),(184,'admin@speak.com','127.0.0.1','0A77B6AD07BD5D32A28E531487CBEA3E','2014-10-08 04:11:48'),(185,'admin@speak.com','127.0.0.1','1B2352431DD6D6A2FAB6C1376AEB88B1','2014-10-08 04:36:32'),(186,'admin@speak.com','127.0.0.1','4CC038AC111FF2EAAEA1D0E30C38A2A2','2014-10-08 05:11:27'),(187,'admin@speak.com','127.0.0.1','99C1B55D0D7780115E88310B13357756','2014-10-08 21:49:19'),(188,'admin@speak.com','127.0.0.1','6F614124AD58D4D49563C58F139FB09C','2014-10-08 21:56:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_admin_user`
--

LOCK TABLES `t_sys_admin_user` WRITE;
/*!40000 ALTER TABLE `t_sys_admin_user` DISABLE KEYS */;
INSERT INTO `t_sys_admin_user` VALUES (1,'admin@speak.com','0cc175b9c0f1b6a831c399e269772661',1,'Admin','','','','','',NULL,'admin@speak.com','2014-07-09 22:17:06','admin@speak.com','2014-10-08 21:56:40',0,1,1,1,1,2,1),(8,'hei_persie@126.com','0cc175b9c0f1b6a831c399e269772661',1,'HEI','','','','','\0',1,'annoymous','2014-08-05 23:59:40','annoymous','2014-09-06 02:27:05',0,1,1,NULL,NULL,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_upload`
--

LOCK TABLES `t_sys_upload` WRITE;
/*!40000 ALTER TABLE `t_sys_upload` DISABLE KEYS */;
INSERT INTO `t_sys_upload` VALUES (59,'9705EE0D-B0F5-EA92-7C4C-7069FBF86140','/home/hei/upload/record/9705EE0D-B0F5-EA92-7C4C-7069FBF86140','gfdsgd.wav','record',213038,'annoymous','2014-09-14 03:07:51','annoymous','2014-09-14 03:07:51'),(60,'E79F5985-CFA2-E212-F0D5-706BA06DF386','/home/hei/upload/record/E79F5985-CFA2-E212-F0D5-706BA06DF386','jkjkj.wav','record',430126,'annoymous','2014-09-14 03:09:36','annoymous','2014-09-14 03:09:36'),(61,'F870AC71-C3BB-6DBC-FE9D-706C01405AD0','/home/hei/upload/record/F870AC71-C3BB-6DBC-FE9D-706C01405AD0','jkjkj.wav','record',46,'annoymous','2014-09-14 03:10:03','annoymous','2014-09-14 03:10:03'),(62,'8C2ADDE0-C0B8-A77B-D8C0-706E78A6C658','/home/hei/upload/record/8C2ADDE0-C0B8-A77B-D8C0-706E78A6C658','jkjkj.wav','record',46,'annoymous','2014-09-14 03:12:41','annoymous','2014-09-14 03:12:41'),(63,'3470D60C-6F18-14A4-9D8B-706EF5625998','/home/hei/upload/record/3470D60C-6F18-14A4-9D8B-706EF5625998','jkjkj.wav','record',46,'annoymous','2014-09-14 03:13:13','annoymous','2014-09-14 03:13:13'),(64,'B9DCAD8D-296A-B883-7DDC-706F3A864D2A','/home/hei/upload/record/B9DCAD8D-296A-B883-7DDC-706F3A864D2A','tuitle.wav','record',237614,'annoymous','2014-09-14 03:13:30','annoymous','2014-09-14 03:13:30'),(65,'7113D8C9-F6BF-5562-60E7-706FD526E037','/home/hei/upload/record/7113D8C9-F6BF-5562-60E7-706FD526E037','jkjkj.wav','record',46,'annoymous','2014-09-14 03:14:10','annoymous','2014-09-14 03:14:10'),(66,'AAB47D56-4008-6F19-6266-7070354FF6E8','/home/hei/upload/record/AAB47D56-4008-6F19-6266-7070354FF6E8','jkjkj.wav','record',553006,'annoymous','2014-09-14 03:14:35','annoymous','2014-09-14 03:14:35'),(67,'85DA94F2-423A-154E-E351-70848C028D2F','/home/hei/upload/record/85DA94F2-423A-154E-E351-70848C028D2F','gfdg dgd.wav','record',208942,'annoymous','2014-09-14 03:36:50','annoymous','2014-09-14 03:36:50'),(68,'53C3D2AF-A8FB-354E-984E-70931AE1D18D','/home/hei/upload/record/53C3D2AF-A8FB-354E-984E-70931AE1D18D','gggggg gggg.wav','record',155694,'annoymous','2014-09-14 03:52:45','annoymous','2014-09-14 03:52:45'),(69,'98921469-173F-D17A-20D2-7096650D05A9','/home/hei/upload/record/98921469-173F-D17A-20D2-7096650D05A9','tui tle.wav','record',118830,'annoymous','2014-09-14 03:56:17','annoymous','2014-09-14 03:56:17'),(70,'60A2A656-5686-CCCD-C434-70967DC15156','/home/hei/upload/record/60A2A656-5686-CCCD-C434-70967DC15156','tui tle.wav','record',303150,'annoymous','2014-09-14 03:56:23','annoymous','2014-09-14 03:56:23'),(71,'F25E4872-D09E-687B-FE18-7096D1FD9CDC','/home/hei/upload/record/F25E4872-D09E-687B-FE18-7096D1FD9CDC','tui tle.wav','record',184366,'annoymous','2014-09-14 03:56:45','annoymous','2014-09-14 03:56:45'),(72,'07568319-B880-CC45-120E-709E91173879','/home/hei/upload/record/07568319-B880-CC45-120E-709E91173879','tui tle.wav','record',180270,'annoymous','2014-09-14 04:05:13','annoymous','2014-09-14 04:05:13'),(73,'DB7EA8BA-CAEA-E004-852B-70BDAA37CD65','/home/hei/upload/record/DB7EA8BA-CAEA-E004-852B-70BDAA37CD65','tui tle.wav','record',159790,'annoymous','2014-09-14 04:39:11','annoymous','2014-09-14 04:39:11'),(74,'28C39A55-8831-5B54-5F5C-8040DCE5507E','/home/hei/upload/record/28C39A55-8831-5B54-5F5C-8040DCE5507E','tui tle.wav','record',348206,'annoymous','2014-09-17 04:56:47','annoymous','2014-09-17 04:56:47'),(75,'3512FEBA-EF06-2BB8-6D27-88268875156D','/home/hei/upload/question/3512FEBA-EF06-2BB8-6D27-88268875156D','阿森纳.jpg','question',341334,'annoymous','2014-09-18 17:45:03','annoymous','2014-09-18 17:45:03'),(76,'3512FEBA-EF06-2BB8-6D27-88268875156D','/home/hei/upload/question/3512FEBA-EF06-2BB8-6D27-88268875156D','枪手.jpg','question',62157,'annoymous','2014-09-18 17:45:30','annoymous','2014-09-18 17:45:30'),(77,'93A064A2-241E-F221-E085-88AC7B2DF393','/home/hei/upload/question/93A064A2-241E-F221-E085-88AC7B2DF393','皮雷.jpg','question',22964,'annoymous','2014-09-18 20:11:28','annoymous','2014-09-18 20:11:28'),(78,'220FC0A5-5BA4-9837-E4A6-88AC7B6BD6D3','/home/hei/upload/question/220FC0A5-5BA4-9837-E4A6-88AC7B6BD6D3','LEC1.mp4','question',76220172,'annoymous','2014-09-18 20:11:35','annoymous','2014-09-18 20:11:35'),(79,'0E1B60C2-BE23-E53A-D36A-88B8BF611678','/home/hei/upload/question/0E1B60C2-BE23-E53A-D36A-88B8BF611678','亨利.jpg','question',29574,'annoymous','2014-09-18 20:25:05','annoymous','2014-09-18 20:25:05'),(80,'8300EDD9-05E6-B107-837F-88B8BFA12932','/home/hei/upload/question/8300EDD9-05E6-B107-837F-88B8BFA12932','LEC1.mp4','question',76220172,'annoymous','2014-09-18 20:25:11','annoymous','2014-09-18 20:25:11'),(81,'6F5CCDC0-D55C-ACB6-7689-88B94E5C87FF','/home/hei/upload/question/6F5CCDC0-D55C-ACB6-7689-88B94E5C87FF','IMG_0189.JPG','question',42363,'annoymous','2014-09-18 20:27:24','annoymous','2014-09-18 20:27:24'),(82,'9157CA22-0FA1-3750-6323-88B94E9C0ACB','/home/hei/upload/question/9157CA22-0FA1-3750-6323-88B94E9C0ACB','LEC1.mp4','question',76220172,'annoymous','2014-09-18 20:27:30','annoymous','2014-09-18 20:27:30'),(83,'4758BA13-5733-D5D7-35DD-88BB68CFC1CE','/home/hei/upload/question/4758BA13-5733-D5D7-35DD-88BB68CFC1CE','Gunner.jpg','question',677358,'annoymous','2014-09-18 20:27:47','annoymous','2014-09-18 20:27:47'),(84,'A283109F-0386-B0F2-A440-88BB690C504A','/home/hei/upload/question/A283109F-0386-B0F2-A440-88BB690C504A','LEC1.mp4','question',76220172,'annoymous','2014-09-18 20:28:09','annoymous','2014-09-18 20:28:09'),(85,'22E72910-F348-F299-385A-8BE0DFCA816F','/home/hei/upload/record/22E72910-F348-F299-385A-8BE0DFCA816F','gfdg dgd.wav','record',262190,'annoymous','2014-09-19 11:07:23','annoymous','2014-09-19 11:07:23'),(86,'2023E1C9-7FBB-8A21-82DB-8BE144595982','/home/hei/upload/record/2023E1C9-7FBB-8A21-82DB-8BE144595982','gfdsgd.wav','record',401454,'annoymous','2014-09-19 11:07:49','annoymous','2014-09-19 11:07:49'),(87,'2FCC1656-12C3-3F8E-F929-8BE21AC68F7A','/home/hei/upload/record/2FCC1656-12C3-3F8E-F929-8BE21AC68F7A','gfdsgd.wav','record',270382,'annoymous','2014-09-19 11:08:44','annoymous','2014-09-19 11:08:44'),(88,'A9DED599-C388-AB25-C84C-8BE467FF881D','/home/hei/upload/record/A9DED599-C388-AB25-C84C-8BE467FF881D','gggggg gggg.wav','record',135214,'annoymous','2014-09-19 11:11:14','annoymous','2014-09-19 11:11:14'),(89,'30450BB7-45EC-FD80-E3A0-8C36883F9114','/home/hei/upload/record/30450BB7-45EC-FD80-E3A0-8C36883F9114','gggggg gggg.wav','record',446510,'annoymous','2014-09-19 12:40:57','annoymous','2014-09-19 12:40:57'),(90,'81340343-F90C-EA76-00D1-8C36A07525ED','/home/hei/upload/record/81340343-F90C-EA76-00D1-8C36A07525ED','fdsfsdfsdfds.wav','record',307246,'annoymous','2014-09-19 12:41:03','annoymous','2014-09-19 12:41:03'),(91,'DD4AC260-7626-F91E-E70F-8C3A9058D249','/home/hei/upload/record/DD4AC260-7626-F91E-E70F-8C3A9058D249','gfdg dgd.wav','record',307246,'annoymous','2014-09-19 12:45:21','annoymous','2014-09-19 12:45:21'),(92,'4A7C6E8F-073C-106F-A014-8C3AA200794D','/home/hei/upload/record/4A7C6E8F-073C-106F-A014-8C3AA200794D','gfdsgd.wav','record',253998,'annoymous','2014-09-19 12:45:25','annoymous','2014-09-19 12:45:25'),(93,'3234BA8F-3976-82DA-4CAD-8C3ABA95CC95','/home/hei/upload/record/3234BA8F-3976-82DA-4CAD-8C3ABA95CC95','gfdsgd.wav','record',249902,'annoymous','2014-09-19 12:45:32','annoymous','2014-09-19 12:45:32'),(94,'88A79A50-B49D-2F62-F4B1-8C3AD5745268','/home/hei/upload/record/88A79A50-B49D-2F62-F4B1-8C3AD5745268','dgfdg.wav','record',290862,'annoymous','2014-09-19 12:45:39','annoymous','2014-09-19 12:45:39'),(95,'E12972BA-D48E-A63A-7ABB-8C3AF035AAC1','/home/hei/upload/record/E12972BA-D48E-A63A-7ABB-8C3AF035AAC1','gsfdgdsf.wav','record',221230,'annoymous','2014-09-19 12:45:45','annoymous','2014-09-19 12:45:45'),(96,'EB353D73-D44F-2EEA-68A3-8C86368934A7','/home/hei/upload/record/EB353D73-D44F-2EEA-68A3-8C86368934A7','gfdg dgd.wav','record',278574,'annoymous','2014-09-19 14:07:59','annoymous','2014-09-19 14:07:59'),(97,'600477E8-49D1-F7C0-2C73-8C864B0E99C2','/home/hei/upload/record/600477E8-49D1-F7C0-2C73-8C864B0E99C2','gfdsgd.wav','record',225326,'annoymous','2014-09-19 14:08:04','annoymous','2014-09-19 14:08:04'),(98,'D4D85F28-9642-6AB5-C530-8C8664789D8B','/home/hei/upload/record/D4D85F28-9642-6AB5-C530-8C8664789D8B','gfsdgsdg.wav','record',335918,'annoymous','2014-09-19 14:08:10','annoymous','2014-09-19 14:08:10'),(99,'14EA789C-BB6D-C6D4-F58A-8C868C82A308','/home/hei/upload/record/14EA789C-BB6D-C6D4-F58A-8C868C82A308','fdsafds.wav','record',225326,'annoymous','2014-09-19 14:08:21','annoymous','2014-09-19 14:08:21'),(100,'84F2309A-2AC2-1B9A-9CD4-EB9821B8180A','/home/hei/upload/record/84F2309A-2AC2-1B9A-9CD4-EB9821B8180A','tui tle.wav','record',229422,'annoymous','2014-10-08 01:11:29','annoymous','2014-10-08 01:11:29'),(101,'0352690C-41DD-3A7A-73EE-EB983A5D0A8D','/home/hei/upload/record/0352690C-41DD-3A7A-73EE-EB983A5D0A8D','gggggg gggg.wav','record',249902,'annoymous','2014-10-08 01:11:35','annoymous','2014-10-08 01:11:35'),(102,'79881162-BC19-F13C-335E-EBCABDE7B5F2','/home/hei/upload/record/79881162-BC19-F13C-335E-EBCABDE7B5F2','.wav','record',8437806,'admin@speak.com','2014-10-08 02:07:15','admin@speak.com','2014-10-08 02:07:15'),(103,'FAD4EC46-E7C3-D07D-2565-EBCD220298FE','/home/hei/upload/record/FAD4EC46-E7C3-D07D-2565-EBCD220298FE','.wav','record',2953262,'admin@speak.com','2014-10-08 02:09:30','admin@speak.com','2014-10-08 02:09:30'),(104,'E3485A0D-B4E2-F7E1-238C-EBCF6B17356C','/home/hei/upload/record/E3485A0D-B4E2-F7E1-238C-EBCF6B17356C','.wav','record',2973742,'admin@speak.com','2014-10-08 02:11:54','admin@speak.com','2014-10-08 02:11:54'),(105,'7D156DC1-02CC-3B74-C98B-EBD26196F4AA','/home/hei/upload/record/7D156DC1-02CC-3B74-C98B-EBD26196F4AA','.wav','record',3104814,'admin@speak.com','2014-10-08 02:15:09','admin@speak.com','2014-10-08 02:15:09'),(106,'BB4477BC-D391-7068-FECE-EC37D78ED51A','/home/hei/upload/record/BB4477BC-D391-7068-FECE-EC37D78ED51A','.wav','record',3325998,'admin@speak.com','2014-10-08 04:06:03','admin@speak.com','2014-10-08 04:06:03'),(107,'340D13B6-EA87-8FE1-3792-EC3E0E69A948','/home/hei/upload/record/340D13B6-EA87-8FE1-3792-EC3E0E69A948','.wav','record',3354670,'admin@speak.com','2014-10-08 04:12:43','admin@speak.com','2014-10-08 04:12:43'),(108,'5DEB5419-E107-EAFB-A15D-F006352D8F6D','/home/hei/upload/record/5DEB5419-E107-EAFB-A15D-F006352D8F6D','.wav','record',3063854,'admin@speak.com','2014-10-08 21:50:12','admin@speak.com','2014-10-08 21:50:12'),(109,'7D8E109F-6D7E-3CB9-E1EF-F0079F83DB8D','/home/hei/upload/record/7D8E109F-6D7E-3CB9-E1EF-F0079F83DB8D','.wav','record',2953262,'admin@speak.com','2014-10-08 21:51:44','admin@speak.com','2014-10-08 21:51:44'),(110,'2453EB61-D132-26C2-5D89-F009A7CD4923','/home/hei/upload/record/2453EB61-D132-26C2-5D89-F009A7CD4923','.wav','record',2990126,'admin@speak.com','2014-10-08 21:53:58','admin@speak.com','2014-10-08 21:53:58'),(111,'70A1C15D-8EEE-BB53-8AD5-F00CC87648F9','/home/hei/upload/record/70A1C15D-8EEE-BB53-8AD5-F00CC87648F9','.wav','record',2916398,'admin@speak.com','2014-10-08 21:57:23','admin@speak.com','2014-10-08 21:57:23');
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

-- Dump completed on 2014-10-10 10:38:23
