CREATE DATABASE  IF NOT EXISTS `day_template` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `day_template`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: day_template
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
-- Table structure for table `day_menu`
--

DROP TABLE IF EXISTS `day_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名',
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单路径',
  `component` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '组件',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单icon',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `order_num` int NOT NULL COMMENT '排序',
  `parent_id` int DEFAULT NULL COMMENT '父id',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否隐藏  0否1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_menu`
--

LOCK TABLES `day_menu` WRITE;
/*!40000 ALTER TABLE `day_menu` DISABLE KEYS */;
INSERT INTO `day_menu` VALUES (1,'Name1','/path/1','Component1','Icon1','2022-10-15 23:44:36','2022-10-15 23:44:36',1,NULL,0),(2,'Name2','/path/2','Component2','Icon2','2022-10-15 23:44:36','2022-10-15 23:44:36',2,NULL,0),(3,'Name3','/path/3','Component3','Icon3','2022-10-15 23:44:36','2022-10-15 23:44:36',3,NULL,0),(4,'Name4','/path/4','Component4','Icon4','2022-10-15 23:44:36','2022-10-15 23:44:36',5,NULL,0),(5,'Name5','/path/5','Component5','Icon5','2022-10-15 23:44:36','2022-10-15 23:44:36',7,NULL,0),(6,'Name6','/path/6','Component6','Icon6','2022-10-15 23:44:36','2022-10-15 23:44:36',1,2,0),(7,'Name7','/path/7','Component7','Icon7','2022-10-15 23:44:36','2022-10-15 23:44:36',2,2,1),(8,'Name8','/path/8','Component8','Icon8','2022-10-15 23:44:36','2022-10-15 23:44:36',3,2,0),(9,'Name9','/path/9','Component9','Icon9','2022-10-15 23:44:36','2022-10-15 23:44:36',4,2,0),(10,'Name10','/path/10','Component10','Icon10','2022-10-15 23:44:36','2022-10-15 23:44:36',5,2,0),(11,'Name11','/path/11','Component11','Icon11','2022-10-15 23:44:36','2022-10-15 23:44:36',1,3,0),(12,'Name12','/path/12','Component12','Icon12','2022-10-15 23:44:36','2022-10-15 23:44:36',2,3,0),(13,'Name13','/path/13','Component13','Icon13','2022-10-15 23:44:36','2022-10-15 23:44:36',1,202,0),(14,'Name14','/path/14','Component14','Icon14','2022-10-15 23:44:36','2022-10-15 23:44:36',2,213,0),(15,'Name15','/path/15','Component15','Icon15','2022-10-15 23:44:36','2022-10-15 23:44:36',2,213,0),(16,'Name16','/path/16','Component16','Icon16','2022-10-15 23:44:36','2022-10-15 23:44:36',2,213,0),(17,'Name17','/path/17','Component17','Icon17','2022-10-15 23:44:36','2022-10-15 23:44:36',3,4,0),(18,'Name18','/path/18','Component18','Icon18','2022-10-15 23:44:36','2022-10-15 23:44:36',4,4,0),(19,'Name19','/path/19','Component19','Icon19','2022-10-15 23:44:36','2022-10-15 23:44:36',6,NULL,0),(20,'Name20','/path/20','Component20','Icon20','2022-10-15 23:44:36','2022-10-15 23:44:36',1,19,0),(201,'Name201','/path/201','Component201','Icon201','2022-10-15 23:44:36','2022-10-15 23:44:36',7,202,0),(202,'Name202','/path/202','Component202','Icon202','2022-10-15 23:44:36','2022-10-15 23:44:36',4,NULL,0),(205,'Name205','/path/205','Component205','Icon205','2022-10-15 23:44:36','2022-10-15 23:44:36',5,NULL,0),(206,'Name206','/path/206','Component206','Icon206','2022-10-15 23:44:36','2022-10-15 23:44:36',1,205,0),(208,'Name208','/path/208','Component208','Icon208','2022-10-15 23:44:36','2022-10-15 23:44:36',1,205,1),(209,'Name209','/path/209','Component209','Icon209','2022-10-15 23:44:36','2022-10-15 23:44:36',2,4,0),(210,'Name210','/path/210','Component210','Icon210','2022-10-15 23:44:36','2022-10-15 23:44:36',3,205,1),(213,'Name213','/path/213','Component213','Icon213','2022-10-15 23:44:36','2022-10-15 23:44:36',4,NULL,0),(214,'Name214','/path/214','Component214','Icon214','2022-10-15 23:44:36','2022-10-15 23:44:36',1,4,0),(215,'Name215','/path/215','Component215','Icon215','2022-10-15 23:44:36','2022-10-15 23:44:36',5,NULL,0),(216,'Name216','/path/216','Component216','Icon216','2022-10-15 23:44:36','2022-10-15 23:44:36',1,215,0),(217,'Name217','/path/217','Component217','Icon217','2022-10-15 23:44:36','2022-10-15 23:44:36',2,215,0),(218,'Name218','/path/218','Component218','Icon218','2022-10-15 23:44:36','2022-10-15 23:44:36',3,215,1);
/*!40000 ALTER TABLE `day_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_operation_log`
--

DROP TABLE IF EXISTS `day_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_operation_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `opt_module` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作模块',
  `opt_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作类型',
  `opt_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作url',
  `opt_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作方法',
  `opt_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作描述',
  `request_param` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求参数',
  `request_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求方式',
  `response_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '返回数据',
  `user_id` int NOT NULL COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作ip',
  `ip_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作地址',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_operation_log`
--

LOCK TABLES `day_operation_log` WRITE;
/*!40000 ALTER TABLE `day_operation_log` DISABLE KEYS */;
INSERT INTO `day_operation_log` VALUES (1084,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1084',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:37:01','2022-10-15 23:48:48'),(1085,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1085',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:37:03','2022-10-15 23:48:49'),(1086,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1086',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:49:54','2022-10-15 23:48:49'),(1087,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1087',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:49:54','2022-10-15 23:48:49'),(1088,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1088',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:49:55','2022-10-15 23:48:49'),(1089,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1089',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:49:55','2022-10-15 23:48:49'),(1090,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1090',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:49:56','2022-10-15 23:48:49'),(1091,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1091',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:49:56','2022-10-15 23:48:49'),(1092,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1092',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:49:57','2022-10-15 23:48:49'),(1093,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1093',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:52:39','2022-10-15 23:48:49'),(1094,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1094',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:52:40','2022-10-15 23:48:49'),(1095,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1095',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:52:41','2022-10-15 23:48:49'),(1096,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1096',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:52:42','2022-10-15 23:48:49'),(1097,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1097',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:52:43','2022-10-15 23:48:49'),(1098,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1098',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:55:11','2022-10-15 23:48:49'),(1099,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1099',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:55:11','2022-10-15 23:48:49'),(1100,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1100',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:56:45','2022-10-15 23:48:49'),(1101,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1101',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:56:45','2022-10-15 23:48:49'),(1102,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1102',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 22:56:50','2022-10-15 23:48:49'),(1103,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1103',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:01:04','2022-10-15 23:48:49'),(1104,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1104',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:01:05','2022-10-15 23:48:49'),(1105,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1105',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:01:05','2022-10-15 23:48:49'),(1106,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1106',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:01:06','2022-10-15 23:48:49'),(1107,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1107',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:02:36','2022-10-15 23:48:49'),(1108,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1108',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:02:36','2022-10-15 23:48:49'),(1109,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1109',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:04:37','2022-10-15 23:48:49'),(1110,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1110',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:04:47','2022-10-15 23:48:49'),(1111,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1111',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:10:06','2022-10-15 23:48:49'),(1112,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1112',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:10:07','2022-10-15 23:48:49'),(1113,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1113',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:19:14','2022-10-15 23:48:49'),(1114,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1114',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-13 23:19:19','2022-10-15 23:48:49'),(1115,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1115',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-14 00:00:34','2022-10-15 23:48:49'),(1116,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1116',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-14 11:18:16','2022-10-15 23:48:49'),(1117,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1117',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-14 22:00:05','2022-10-15 23:48:49'),(1118,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1118',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-14 22:00:06','2022-10-15 23:48:49'),(1119,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1119',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-14 22:42:17','2022-10-15 23:48:49'),(1120,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1120',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-14 22:42:20','2022-10-15 23:48:49'),(1121,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1121',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-14 22:48:33','2022-10-15 23:48:49'),(1122,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1122',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-15 00:45:18','2022-10-15 23:48:49'),(1123,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1123',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-15 00:54:19','2022-10-15 23:48:49'),(1124,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1124',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-15 00:54:20','2022-10-15 23:48:49'),(1125,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1125',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-15 17:51:26','2022-10-15 23:48:49'),(1126,'','修改','/hello2','site.day.template.aaTest.aHelloController.hello2','hello2','[]','GET','response1126',2,'测试人员','0:0:0:0:0:0:0:1','','2022-10-15 17:51:27','2022-10-15 23:48:49');
/*!40000 ALTER TABLE `day_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_resource`
--

DROP TABLE IF EXISTS `day_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_resource` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源名',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '权限路径',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '请求方式',
  `parent_id` int DEFAULT NULL COMMENT '父权限id',
  `is_anonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否匿名访问 0否 1是',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_resource`
--

LOCK TABLES `day_resource` WRITE;
/*!40000 ALTER TABLE `day_resource` DISABLE KEYS */;
INSERT INTO `day_resource` VALUES (165,'name165','/path/165',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(166,'name166','/path/166',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(167,'name167','/path/167',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(168,'name168','/path/168',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(169,'name169','/path/169',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(170,'name170','/path/170',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(171,'name171','/path/171',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(172,'name172','/path/172',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(173,'name173','/path/173',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(174,'name174','/path/174',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(175,'name175','/path/175',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(176,'name176','/path/176',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(177,'name177','/path/177',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(178,'name178','/path/178',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(179,'name179','/path/179',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(180,'name180','/path/180',NULL,NULL,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(181,'name181','/path/181','GET',166,1,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(182,'name182','/path/182','GET',166,1,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(183,'name183','/path/183','GET',166,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(184,'name184','/path/184','PUT',166,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(185,'name185','/path/185','GET',168,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(186,'name186','/path/186','POST',168,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(187,'name187','/path/187','PUT',168,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(188,'name188','/path/188','DELETE',168,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(189,'name189','/path/189','POST',168,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(190,'name190','/path/190','PUT',168,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(191,'name191','/path/191','GET',168,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(192,'name192','/path/192','GET',165,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(193,'name193','/path/193','POST',165,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(194,'name194','/path/194','DELETE',165,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(195,'name195','/path/195','GET',165,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(196,'name196','/path/196','GET',178,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(197,'name197','/path/197','DELETE',178,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(198,'name198','/path/198','PUT',178,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(199,'name199','/path/199','GET',167,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(200,'name200','/path/200','POST',167,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(201,'name201','/path/201','DELETE',167,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(202,'name202','/path/202','GET',176,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(203,'name203','/path/203','POST',176,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(204,'name204','/path/204','DELETE',176,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(205,'name205','/path/205','GET',174,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(206,'name206','/path/206','DELETE',174,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(207,'name207','/path/207','PUT',174,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(208,'name208','/path/208','GET',169,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(209,'name209','/path/209','DELETE',169,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(210,'name210','/path/210','GET',180,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(211,'name211','/path/211','POST',180,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(212,'name212','/path/212','DELETE',180,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(213,'name213','/path/213','GET',171,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(214,'name214','/path/214','POST',171,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(215,'name215','/path/215','PUT',171,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(216,'name216','/path/216','DELETE',171,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(217,'name217','/path/217','PUT',171,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(218,'name218','/path/218','GET',175,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(219,'name219','/path/219','POST',175,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(220,'name220','/path/220','POST',175,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(221,'name221','/path/221','GET',175,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(222,'name222','/path/222','DELETE',175,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(223,'name223','/path/223','GET',175,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(224,'name224','/path/224','PUT',171,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(225,'name225','/path/225','GET',179,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(226,'name226','/path/226','POST',179,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(227,'name227','/path/227','GET',179,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(228,'name228','/path/228','DELETE',179,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(229,'name229','/path/229','POST',177,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(230,'name230','/path/230','GET',176,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(231,'name231','/path/231','GET',179,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(232,'name232','/path/232','GET',177,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(233,'name233','/path/233','DELETE',177,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(234,'name234','/path/234','GET',170,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(235,'name235','/path/235','POST',170,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(236,'name236','/path/236','DELETE',170,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(237,'name237','/path/237','GET',170,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(238,'name238','/path/238','GET',176,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(239,'name239','/path/239','GET',173,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(240,'name240','/path/240','PUT',172,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(241,'name241','/path/241','GET',172,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(242,'name242','/path/242','PUT',173,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(243,'name243','/path/243','GET',177,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(244,'name244','/path/244','PUT',172,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(245,'name245','/path/245','DELETE',172,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(246,'name246','/path/246','GET',166,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(247,'name247','/path/247','PUT',166,0,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(248,'name248','/path/248','GET',171,1,'2022-10-15 23:53:42','2022-10-15 23:53:42'),(249,'name249','/path/249','GET',168,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(250,'name250','/path/250','GET',168,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(251,'name251','/path/251','GET',168,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(252,'name252','/path/252','GET',168,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(253,'name253','/path/253','GET',168,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(254,'name254','/path/254','POST',168,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(255,'name255','/path/255','GET',165,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(256,'name256','/path/256','GET',178,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(257,'name257','/path/257','POST',178,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(258,'name258','/path/258','POST',178,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(259,'name259','/path/259','GET',178,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(260,'name260','/path/260','GET',167,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(261,'name261','/path/261','GET',174,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(262,'name262','/path/262','POST',174,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(263,'name263','/path/263','GET',175,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(264,'name264','/path/264','POST',173,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(265,'name265','/path/265','GET',170,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(267,'name267','/path/267','POST',172,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(268,'name268','/path/268','GET',173,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(269,'name269','/path/269','POST',172,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(270,'name270','/path/270','PUT',172,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(271,'name271','/path/271','POST',173,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(272,'name272','/path/272','POST',173,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(273,'name273','/path/273','PUT',173,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(274,'name274','/path/274','POST',166,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(275,'name275','/path/275','POST',166,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(276,'name276','/path/276','GET',173,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(278,'name278','/path/278',NULL,NULL,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(279,'name279','/path/279','GET',278,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(280,'name280','/path/280','GET',278,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(281,'name281','/path/281','GET',278,1,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(282,'name282','/path/282','POST',278,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(283,'name283','/path/283','POST',278,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(284,'name284','/path/284','POST',278,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(285,'name285','/path/285','DELETE',278,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(286,'name286','/path/286','GET',278,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(287,'name287','/path/287','GET',278,0,'2022-10-15 23:53:43','2022-10-15 23:53:43'),(288,'测试','/hello','GET',289,0,'2022-01-24 01:31:53','2022-01-24 01:31:53'),(289,'测试模块',NULL,NULL,NULL,0,'2022-01-24 01:31:53','2022-01-24 01:31:53');
/*!40000 ALTER TABLE `day_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_role`
--

DROP TABLE IF EXISTS `day_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名',
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色标签',
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁用  0否 1是',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_role`
--

LOCK TABLES `day_role` WRITE;
/*!40000 ALTER TABLE `day_role` DISABLE KEYS */;
INSERT INTO `day_role` VALUES (1,'管理员','admin',0,'2021-03-22 14:10:21','2022-01-24 01:32:26'),(2,'用户','user',0,'2021-03-22 14:25:25','2022-01-24 01:32:21'),(3,'测试','test',0,'2021-03-22 14:42:23','2022-01-24 01:32:59');
/*!40000 ALTER TABLE `day_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_role_menu`
--

DROP TABLE IF EXISTS `day_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_role_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int DEFAULT NULL COMMENT '角色id',
  `menu_id` int DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2527 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_role_menu`
--

LOCK TABLES `day_role_menu` WRITE;
/*!40000 ALTER TABLE `day_role_menu` DISABLE KEYS */;
INSERT INTO `day_role_menu` VALUES (1397,8,1),(1398,8,2),(1399,8,6),(1400,8,7),(1401,8,8),(1402,8,9),(1403,8,10),(1404,8,3),(1405,8,11),(1406,8,12),(1407,8,202),(1408,8,13),(1409,8,14),(1410,8,201),(1411,8,4),(1412,8,16),(1413,8,15),(1414,8,17),(1415,8,18),(1416,8,19),(1417,8,20),(1418,8,5),(1595,9,1),(1596,9,2),(1597,9,6),(1598,9,7),(1599,9,8),(1600,9,9),(1601,9,10),(1602,9,3),(1603,9,11),(1604,9,12),(1605,9,202),(1606,9,13),(1607,9,14),(1608,9,201),(1609,9,4),(1610,9,16),(1611,9,15),(1612,9,17),(1613,9,18),(1614,9,19),(1615,9,20),(1616,9,5),(1639,13,2),(1640,13,6),(1641,13,7),(1642,13,8),(1643,13,9),(1644,13,10),(1645,13,3),(1646,13,11),(1647,13,12),(2366,14,1),(2367,14,2),(2461,1,1),(2462,1,2),(2463,1,6),(2464,1,7),(2465,1,8),(2466,1,9),(2467,1,10),(2468,1,3),(2469,1,11),(2470,1,12),(2471,1,202),(2472,1,13),(2473,1,201),(2474,1,213),(2475,1,14),(2476,1,15),(2477,1,16),(2478,1,4),(2479,1,214),(2480,1,209),(2481,1,17),(2482,1,18),(2483,1,205),(2484,1,206),(2485,1,208),(2486,1,210),(2487,1,215),(2488,1,216),(2489,1,217),(2490,1,218),(2491,1,19),(2492,1,20),(2493,1,5),(2494,3,1),(2495,3,2),(2496,3,6),(2497,3,7),(2498,3,8),(2499,3,9),(2500,3,10),(2501,3,3),(2502,3,11),(2503,3,12),(2504,3,202),(2505,3,13),(2506,3,201),(2507,3,213),(2508,3,14),(2509,3,15),(2510,3,16),(2511,3,4),(2512,3,214),(2513,3,209),(2514,3,17),(2515,3,18),(2516,3,205),(2517,3,206),(2518,3,208),(2519,3,210),(2520,3,215),(2521,3,216),(2522,3,217),(2523,3,218),(2524,3,19),(2525,3,20),(2526,3,5);
/*!40000 ALTER TABLE `day_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_role_resource`
--

DROP TABLE IF EXISTS `day_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_role_resource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL COMMENT '角色id',
  `resource_id` int DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_role_resource`
--

LOCK TABLES `day_role_resource` WRITE;
/*!40000 ALTER TABLE `day_role_resource` DISABLE KEYS */;
INSERT INTO `day_role_resource` VALUES (4750,14,238),(4751,2,254),(4752,2,267),(4753,2,269),(4754,2,270),(4755,2,257),(4756,2,258),(4757,2,282),(4758,1,165),(4759,1,192),(4760,1,193),(4761,1,194),(4762,1,195),(4763,1,166),(4764,1,183),(4765,1,184),(4766,1,246),(4767,1,247),(4768,1,167),(4769,1,199),(4770,1,200),(4771,1,201),(4772,1,168),(4773,1,185),(4774,1,186),(4775,1,187),(4776,1,188),(4777,1,189),(4778,1,190),(4779,1,191),(4780,1,254),(4781,1,169),(4782,1,208),(4783,1,209),(4784,1,170),(4785,1,234),(4786,1,235),(4787,1,236),(4788,1,237),(4789,1,171),(4790,1,213),(4791,1,214),(4792,1,215),(4793,1,216),(4794,1,217),(4795,1,224),(4796,1,172),(4797,1,240),(4798,1,241),(4799,1,244),(4800,1,245),(4801,1,267),(4802,1,269),(4803,1,270),(4804,1,173),(4805,1,239),(4806,1,242),(4807,1,276),(4808,1,174),(4809,1,205),(4810,1,206),(4811,1,207),(4812,1,175),(4813,1,218),(4814,1,219),(4815,1,220),(4816,1,221),(4817,1,222),(4818,1,223),(4819,1,176),(4820,1,202),(4821,1,203),(4822,1,204),(4823,1,230),(4824,1,238),(4825,1,177),(4826,1,229),(4827,1,232),(4828,1,233),(4829,1,243),(4830,1,178),(4831,1,196),(4832,1,197),(4833,1,198),(4834,1,257),(4835,1,258),(4836,1,179),(4837,1,225),(4838,1,226),(4839,1,227),(4840,1,228),(4841,1,231),(4842,1,180),(4843,1,210),(4844,1,211),(4845,1,212),(4846,1,278),(4847,1,282),(4848,1,283),(4849,1,284),(4850,1,285),(4851,1,286),(4852,1,287),(4853,3,192),(4854,3,195),(4855,3,183),(4856,3,246),(4857,3,199),(4858,3,185),(4859,3,191),(4860,3,254),(4861,3,208),(4862,3,234),(4863,3,237),(4864,3,213),(4865,3,241),(4866,3,239),(4867,3,276),(4868,3,205),(4869,3,218),(4870,3,221),(4871,3,223),(4872,3,202),(4873,3,230),(4874,3,238),(4875,3,232),(4876,3,243),(4877,3,196),(4878,3,257),(4879,3,258),(4880,3,225),(4881,3,231),(4882,3,210),(4883,3,282),(4884,3,286),(4885,3,287),(5000,3,288);
/*!40000 ALTER TABLE `day_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_user_auth`
--

DROP TABLE IF EXISTS `day_user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_user_auth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_info_id` int NOT NULL COMMENT '用户信息id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `login_type` int NOT NULL COMMENT '登录类型',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户登录ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'ip来源',
  `is_disabled` tinyint(1) DEFAULT '0',
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登录时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=996 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_user_auth`
--

LOCK TABLES `day_user_auth` WRITE;
/*!40000 ALTER TABLE `day_user_auth` DISABLE KEYS */;
INSERT INTO `day_user_auth` VALUES (1,1,'admin','123456',1,'127.0.0.1','',0,'2022-10-15 23:06:51','2022-10-15 23:06:51','2022-10-15 23:06:51'),(2,2,'test','123456',1,'0:0:0:0:0:0:0:1','',0,'2022-10-15 23:06:51','2022-10-15 23:06:51','2022-10-15 23:06:51'),(3,3,'test1','123456',1,'0:0:0:0:0:0:0:1','',0,'2022-10-15 23:06:51','2022-10-15 23:06:51','2022-10-15 23:06:51');
/*!40000 ALTER TABLE `day_user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_user_info`
--

DROP TABLE IF EXISTS `day_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_user_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱号',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `avatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户简介',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_user_info`
--

LOCK TABLES `day_user_info` WRITE;
/*!40000 ALTER TABLE `day_user_info` DISABLE KEYS */;
INSERT INTO `day_user_info` VALUES (1,'123456@qq.com','管理员','https://user.png','intro','2022-10-15 23:06:51','2022-10-15 23:06:51'),(2,'123456@qq.com','测试人员','https://user.png','intro','2022-10-15 23:06:51','2022-10-15 23:06:51'),(3,'123456@qq.com','测试人员1','https://user.png','intro','2022-10-15 23:06:51',NULL);
/*!40000 ALTER TABLE `day_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_user_role`
--

DROP TABLE IF EXISTS `day_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `role_id` int DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_user_role`
--

LOCK TABLES `day_user_role` WRITE;
/*!40000 ALTER TABLE `day_user_role` DISABLE KEYS */;
INSERT INTO `day_user_role` VALUES (1001,1,1),(1002,1005,2),(1003,2,3),(1004,3,3);
/*!40000 ALTER TABLE `day_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-15 23:58:24
