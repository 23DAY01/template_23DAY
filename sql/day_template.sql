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
INSERT INTO `day_menu` VALUES (1,'首页','/','/home/Home.vue','el-icon-myshouye','2021-01-26 17:06:51','2021-01-26 17:06:53',1,NULL,0),(2,'文章管理','/article-submenu','Layout','el-icon-mywenzhang-copy','2021-01-25 20:43:07','2021-01-25 20:43:09',2,NULL,0),(3,'消息管理','/message-submenu','Layout','el-icon-myxiaoxi','2021-01-25 20:44:17','2021-01-25 20:44:20',3,NULL,0),(4,'系统管理','/system-submenu','Layout','el-icon-myshezhi','2021-01-25 20:45:57','2021-01-25 20:45:59',5,NULL,0),(5,'个人中心','/setting','/setting/Setting.vue','el-icon-myuser','2021-01-26 17:22:38','2021-01-26 17:22:41',7,NULL,0),(6,'发布文章','/articles','/article/Article.vue','el-icon-myfabiaowenzhang','2021-01-26 14:30:48','2021-01-26 14:30:51',1,2,0),(7,'修改文章','/articles/*','/article/Article.vue','el-icon-myfabiaowenzhang','2021-01-26 14:31:32','2021-01-26 14:31:34',2,2,1),(8,'文章列表','/article-list','/article/ArticleList.vue','el-icon-mywenzhangliebiao','2021-01-26 14:32:13','2021-01-26 14:32:16',3,2,0),(9,'分类管理','/categories','/category/Category.vue','el-icon-myfenlei','2021-01-26 14:33:42','2021-01-26 14:33:43',4,2,0),(10,'标签管理','/tags','/tag/Tag.vue','el-icon-myicontag','2021-01-26 14:34:33','2021-01-26 14:34:36',5,2,0),(11,'评论管理','/comments','/comment/Comment.vue','el-icon-mypinglunzu','2021-01-26 14:35:31','2021-01-26 14:35:34',1,3,0),(12,'留言管理','/messages','/message/Message.vue','el-icon-myliuyan','2021-01-26 14:36:09','2021-01-26 14:36:13',2,3,0),(13,'用户列表','/users','/user/User.vue','el-icon-myyonghuliebiao','2021-01-26 14:38:09','2021-01-26 14:38:12',1,202,0),(14,'角色管理','/roles','/role/Role.vue','el-icon-myjiaoseliebiao','2021-01-26 14:39:01','2021-01-26 14:39:03',2,213,0),(15,'接口管理','/resources','/resource/Resource.vue','el-icon-myjiekouguanli','2021-01-26 14:40:14','2021-08-07 20:00:28',2,213,0),(16,'菜单管理','/menus','/menu/Menu.vue','el-icon-mycaidan','2021-01-26 14:40:54','2021-08-07 10:18:49',2,213,0),(17,'友链管理','/links','/friendLink/FriendLink.vue','el-icon-mydashujukeshihuaico-','2021-01-26 14:41:35','2021-01-26 14:41:37',3,4,0),(18,'关于我','/about','/about/About.vue','el-icon-myguanyuwo','2021-01-26 14:42:05','2021-01-26 14:42:10',4,4,0),(19,'日志管理','/log-submenu','Layout','el-icon-myguanyuwo','2021-01-31 21:33:56','2021-01-31 21:33:59',6,NULL,0),(20,'操作日志','/operation/log','/log/Operation.vue','el-icon-myguanyuwo','2021-01-31 15:53:21','2021-01-31 15:53:25',1,19,0),(201,'在线用户','/online/users','/user/Online.vue','el-icon-myyonghuliebiao','2021-02-05 14:59:51','2021-02-05 14:59:53',7,202,0),(202,'用户管理','/users-submenu','Layout','el-icon-myyonghuliebiao','2021-02-06 23:44:59','2021-02-06 23:45:03',4,NULL,0),(205,'相册管理','/album-submenu','Layout','el-icon-myimage-fill','2021-08-03 15:10:54','2021-08-07 20:02:06',5,NULL,0),(206,'相册列表','/albums','/album/Album.vue','el-icon-myzhaopian','2021-08-03 20:29:19','2021-08-04 11:45:47',1,205,0),(208,'照片管理','/albums/:albumId','/album/Photo.vue','el-icon-myzhaopian','2021-08-03 21:37:47','2021-08-05 10:24:08',1,205,1),(209,'页面管理','/pages','/page/Page.vue','el-icon-myyemianpeizhi','2021-08-04 11:36:27','2021-08-07 20:01:26',2,4,0),(210,'照片回收站','/photos/delete','/album/Delete.vue','el-icon-myhuishouzhan','2021-08-05 13:55:19',NULL,3,205,1),(213,'权限管理','/permission-submenu','Layout','el-icon-mydaohanglantubiao_quanxianguanli','2021-08-07 19:56:55','2021-08-07 19:59:40',4,NULL,0),(214,'网站管理','/website','/website/Website.vue','el-icon-myxitong','2021-08-07 20:06:41',NULL,1,4,0),(215,'说说管理','/talk-submenu','Layout','el-icon-mypinglun','2022-01-23 20:17:59','2022-01-23 20:38:06',5,NULL,0),(216,'发布说说','/talks','/talk/Talk.vue','el-icon-myfabusekuai','2022-01-23 20:18:43','2022-01-23 20:38:19',1,215,0),(217,'说说列表','/talk-list','/talk/TalkList.vue','el-icon-myiconfontdongtaidianji','2022-01-23 23:28:24','2022-01-24 00:02:48',2,215,0),(218,'修改说说','/talks/:talkId','/talk/Talk.vue','el-icon-myshouye','2022-01-24 00:10:44',NULL,3,215,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=1084 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_operation_log`
--

LOCK TABLES `day_operation_log` WRITE;
/*!40000 ALTER TABLE `day_operation_log` DISABLE KEYS */;
INSERT INTO `day_operation_log` VALUES (1083,'文章模块','新增或修改','/admin/articles','com.minzheng.blog.controller.ArticleController.saveOrUpdateArticle','添加或修改文章','[{\"articleContent\":\"恭喜你成功运行博客，开启你的文章之旅吧。\",\"articleCover\":\"https://static.talkxj.com/articles/3dffb2fcbd541886616ab54c92570de3.jpg\",\"articleTitle\":\"测试文章\",\"categoryName\":\"测试分类\",\"isTop\":0,\"originalUrl\":\"\",\"status\":1,\"tagNameList\":[\"测试标签\"],\"type\":1}]','POST','{\"code\":20000,\"flag\":true,\"message\":\"操作成功\"}',1,'管理员','127.0.0.1','','2022-01-24 23:33:57',NULL);
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
INSERT INTO `day_resource` VALUES (165,'分类模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(166,'博客信息模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(167,'友链模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(168,'文章模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(169,'日志模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(170,'标签模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(171,'照片模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(172,'用户信息模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(173,'用户账号模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(174,'留言模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(175,'相册模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(176,'菜单模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(177,'角色模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(178,'评论模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(179,'资源模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(180,'页面模块',NULL,NULL,NULL,0,'2021-08-11 21:04:21',NULL),(181,'查看博客信息','/','GET',166,1,'2021-08-11 21:04:22','2021-08-11 21:05:29'),(182,'查看关于我信息','/about','GET',166,1,'2021-08-11 21:04:22','2021-08-11 21:05:29'),(183,'查看后台信息','/admin','GET',166,0,'2021-08-11 21:04:22',NULL),(184,'修改关于我信息','/admin/about','PUT',166,0,'2021-08-11 21:04:22',NULL),(185,'查看后台文章','/admin/articles','GET',168,0,'2021-08-11 21:04:22',NULL),(186,'添加或修改文章','/admin/articles','POST',168,0,'2021-08-11 21:04:22',NULL),(187,'恢复或删除文章','/admin/articles','PUT',168,0,'2021-08-11 21:04:22',NULL),(188,'物理删除文章','/admin/articles','DELETE',168,0,'2021-08-11 21:04:22',NULL),(189,'上传文章图片','/admin/articles/images','POST',168,0,'2021-08-11 21:04:22',NULL),(190,'修改文章置顶','/admin/articles/top','PUT',168,0,'2021-08-11 21:04:22',NULL),(191,'根据id查看后台文章','/admin/articles/*','GET',168,0,'2021-08-11 21:04:22',NULL),(192,'查看后台分类列表','/admin/categories','GET',165,0,'2021-08-11 21:04:22',NULL),(193,'添加或修改分类','/admin/categories','POST',165,0,'2021-08-11 21:04:22',NULL),(194,'删除分类','/admin/categories','DELETE',165,0,'2021-08-11 21:04:22',NULL),(195,'搜索文章分类','/admin/categories/search','GET',165,0,'2021-08-11 21:04:22',NULL),(196,'查询后台评论','/admin/comments','GET',178,0,'2021-08-11 21:04:22',NULL),(197,'删除评论','/admin/comments','DELETE',178,0,'2021-08-11 21:04:22',NULL),(198,'审核评论','/admin/comments/review','PUT',178,0,'2021-08-11 21:04:22',NULL),(199,'查看后台友链列表','/admin/links','GET',167,0,'2021-08-11 21:04:22',NULL),(200,'保存或修改友链','/admin/links','POST',167,0,'2021-08-11 21:04:22',NULL),(201,'删除友链','/admin/links','DELETE',167,0,'2021-08-11 21:04:22',NULL),(202,'查看菜单列表','/admin/menus','GET',176,0,'2021-08-11 21:04:22',NULL),(203,'新增或修改菜单','/admin/menus','POST',176,0,'2021-08-11 21:04:22',NULL),(204,'删除菜单','/admin/menus/*','DELETE',176,0,'2021-08-11 21:04:22',NULL),(205,'查看后台留言列表','/admin/messages','GET',174,0,'2021-08-11 21:04:22',NULL),(206,'删除留言','/admin/messages','DELETE',174,0,'2021-08-11 21:04:22',NULL),(207,'审核留言','/admin/messages/review','PUT',174,0,'2021-08-11 21:04:22',NULL),(208,'查看操作日志','/admin/operation/logs','GET',169,0,'2021-08-11 21:04:22',NULL),(209,'删除操作日志','/admin/operation/logs','DELETE',169,0,'2021-08-11 21:04:22',NULL),(210,'获取页面列表','/admin/pages','GET',180,0,'2021-08-11 21:04:22',NULL),(211,'保存或更新页面','/admin/pages','POST',180,0,'2021-08-11 21:04:22',NULL),(212,'删除页面','/admin/pages/*','DELETE',180,0,'2021-08-11 21:04:22',NULL),(213,'根据相册id获取照片列表','/admin/photos','GET',171,0,'2021-08-11 21:04:22',NULL),(214,'保存照片','/admin/photos','POST',171,0,'2021-08-11 21:04:22',NULL),(215,'更新照片信息','/admin/photos','PUT',171,0,'2021-08-11 21:04:22',NULL),(216,'删除照片','/admin/photos','DELETE',171,0,'2021-08-11 21:04:22',NULL),(217,'移动照片相册','/admin/photos/album','PUT',171,0,'2021-08-11 21:04:22',NULL),(218,'查看后台相册列表','/admin/photos/albums','GET',175,0,'2021-08-11 21:04:22',NULL),(219,'保存或更新相册','/admin/photos/albums','POST',175,0,'2021-08-11 21:04:22',NULL),(220,'上传相册封面','/admin/photos/albums/cover','POST',175,0,'2021-08-11 21:04:22',NULL),(221,'获取后台相册列表信息','/admin/photos/albums/info','GET',175,0,'2021-08-11 21:04:22',NULL),(222,'根据id删除相册','/admin/photos/albums/*','DELETE',175,0,'2021-08-11 21:04:22',NULL),(223,'根据id获取后台相册信息','/admin/photos/albums/*/info','GET',175,0,'2021-08-11 21:04:22',NULL),(224,'更新照片删除状态','/admin/photos/delete','PUT',171,0,'2021-08-11 21:04:22',NULL),(225,'查看资源列表','/admin/resources','GET',179,0,'2021-08-11 21:04:22',NULL),(226,'新增或修改资源','/admin/resources','POST',179,0,'2021-08-11 21:04:22',NULL),(227,'导入swagger接口','/admin/resources/import/swagger','GET',179,0,'2021-08-11 21:04:22',NULL),(228,'删除资源','/admin/resources/*','DELETE',179,0,'2021-08-11 21:04:22',NULL),(229,'保存或更新角色','/admin/role','POST',177,0,'2021-08-11 21:04:22',NULL),(230,'查看角色菜单选项','/admin/role/menus','GET',176,0,'2021-08-11 21:04:22',NULL),(231,'查看角色资源选项','/admin/role/resources','GET',179,0,'2021-08-11 21:04:22',NULL),(232,'查询角色列表','/admin/roles','GET',177,0,'2021-08-11 21:04:22',NULL),(233,'删除角色','/admin/roles','DELETE',177,0,'2021-08-11 21:04:22',NULL),(234,'查询后台标签列表','/admin/tags','GET',170,0,'2021-08-11 21:04:22',NULL),(235,'添加或修改标签','/admin/tags','POST',170,0,'2021-08-11 21:04:22',NULL),(236,'删除标签','/admin/tags','DELETE',170,0,'2021-08-11 21:04:22',NULL),(237,'搜索文章标签','/admin/tags/search','GET',170,0,'2021-08-11 21:04:22',NULL),(238,'查看当前用户菜单','/admin/user/menus','GET',176,0,'2021-08-11 21:04:22',NULL),(239,'查询后台用户列表','/admin/users','GET',173,0,'2021-08-11 21:04:22',NULL),(240,'修改用户禁用状态','/admin/users/disable','PUT',172,0,'2021-08-11 21:04:22',NULL),(241,'查看在线用户','/admin/users/online','GET',172,0,'2021-08-11 21:04:22',NULL),(242,'修改管理员密码','/admin/users/password','PUT',173,0,'2021-08-11 21:04:22',NULL),(243,'查询用户角色选项','/admin/users/role','GET',177,0,'2021-08-11 21:04:22',NULL),(244,'修改用户角色','/admin/users/role','PUT',172,0,'2021-08-11 21:04:22',NULL),(245,'下线用户','/admin/users/*/online','DELETE',172,0,'2021-08-11 21:04:22',NULL),(246,'获取网站配置','/admin/website/config','GET',166,0,'2021-08-11 21:04:22',NULL),(247,'更新网站配置','/admin/website/config','PUT',166,0,'2021-08-11 21:04:22',NULL),(248,'根据相册id查看照片列表','/albums/*/photos','GET',171,1,'2021-08-11 21:04:22','2021-08-11 21:06:35'),(249,'查看首页文章','/articles','GET',168,1,'2021-08-11 21:04:22','2021-08-11 21:05:45'),(250,'查看文章归档','/articles/archives','GET',168,1,'2021-08-11 21:04:22','2021-08-11 21:05:47'),(251,'根据条件查询文章','/articles/condition','GET',168,1,'2021-08-11 21:04:22','2021-08-11 21:05:47'),(252,'搜索文章','/articles/search','GET',168,1,'2021-08-11 21:04:22','2021-08-11 21:05:48'),(253,'根据id查看文章','/articles/*','GET',168,1,'2021-08-11 21:04:22','2021-08-11 21:05:49'),(254,'点赞文章','/articles/*/like','POST',168,0,'2021-08-11 21:04:22',NULL),(255,'查看分类列表','/categories','GET',165,1,'2021-08-11 21:04:22','2021-08-11 21:05:26'),(256,'查询评论','/comments','GET',178,1,'2021-08-11 21:04:22','2021-08-11 21:07:33'),(257,'添加评论','/comments','POST',178,0,'2021-08-11 21:04:22','2021-08-11 21:10:05'),(258,'评论点赞','/comments/*/like','POST',178,0,'2021-08-11 21:04:22',NULL),(259,'查询评论下的回复','/comments/*/replies','GET',178,1,'2021-08-11 21:04:22','2021-08-11 21:07:30'),(260,'查看友链列表','/links','GET',167,1,'2021-08-11 21:04:22','2021-08-11 21:05:41'),(261,'查看留言列表','/messages','GET',174,1,'2021-08-11 21:04:22','2021-08-11 21:07:14'),(262,'添加留言','/messages','POST',174,1,'2021-08-11 21:04:22','2021-08-11 21:07:15'),(263,'获取相册列表','/photos/albums','GET',175,1,'2021-08-11 21:04:22','2021-08-11 21:07:20'),(264,'用户注册','/register','POST',173,1,'2021-08-11 21:04:22','2021-08-11 21:07:01'),(265,'查询标签列表','/tags','GET',170,1,'2021-08-11 21:04:22','2021-08-11 21:06:30'),(267,'更新用户头像','/users/avatar','POST',172,0,'2021-08-11 21:04:22',NULL),(268,'发送邮箱验证码','/users/code','GET',173,1,'2021-08-11 21:04:22','2021-08-11 21:07:02'),(269,'绑定用户邮箱','/users/email','POST',172,0,'2021-08-11 21:04:22',NULL),(270,'更新用户信息','/users/info','PUT',172,0,'2021-08-11 21:04:22',NULL),(271,'qq登录','/users/oauth/qq','POST',173,1,'2021-08-11 21:04:22','2021-08-11 21:07:06'),(272,'微博登录','/users/oauth/weibo','POST',173,1,'2021-08-11 21:04:22','2021-08-11 21:07:06'),(273,'修改密码','/users/password','PUT',173,1,'2021-08-11 21:04:22','2021-08-11 21:07:09'),(274,'上传语音','/voice','POST',166,1,'2021-08-11 21:04:22','2021-08-11 21:05:33'),(275,'上传访客信息','/report','POST',166,1,'2021-08-24 00:32:05','2021-08-24 00:32:07'),(276,'获取用户区域分布','/admin/users/area','GET',173,0,'2021-08-24 00:32:35','2021-09-24 16:25:34'),(278,'说说模块',NULL,NULL,NULL,0,'2022-01-24 01:29:13',NULL),(279,'查看首页说说','/home/talks','GET',278,1,'2022-01-24 01:29:29','2022-01-24 01:31:56'),(280,'查看说说列表','/talks','GET',278,1,'2022-01-24 01:29:52','2022-01-24 01:31:56'),(281,'根据id查看说说','/talks/*','GET',278,1,'2022-01-24 01:30:10','2022-01-24 01:31:57'),(282,'点赞说说','/talks/*/like','POST',278,0,'2022-01-24 01:30:30',NULL),(283,'上传说说图片','/admin/talks/images','POST',278,0,'2022-01-24 01:30:46',NULL),(284,'保存或修改说说','/admin/talks','POST',278,0,'2022-01-24 01:31:04',NULL),(285,'删除说说','/admin/talks','DELETE',278,0,'2022-01-24 01:31:22',NULL),(286,'查看后台说说','/admin/talks','GET',278,0,'2022-01-24 01:31:38',NULL),(287,'根据id查看后台说说','/admin/talks/*','GET',278,0,'2022-01-24 01:31:53','2022-01-24 01:33:14'),(288,'测试','/hello','GET',289,0,'2022-01-24 01:31:53','2022-01-24 01:31:53'),(289,'测试模块',NULL,NULL,NULL,0,'2022-01-24 01:31:53','2022-01-24 01:31:53');
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
INSERT INTO `day_user_auth` VALUES (1,1,'admin@qq.com','$2a$10$AkxkZaqcxEXdiNE1nrgW1.ms3aS9C5ImXMf8swkWUJuFGMqDl.TPW',1,'127.0.0.1','',0,'2022-03-11 22:52:18','2021-08-12 15:43:18','2022-03-11 22:52:18'),(2,2,'test','123456',1,'0:0:0:0:0:0:0:1','',0,'2022-10-12 17:04:57','2022-01-27 10:58:11','2022-10-12 17:04:57'),(3,3,'test1','123456',1,'192.168.181.130','本地局域网',0,'2022-09-20 16:36:17','2022-01-27 10:58:11','2022-09-20 16:36:17'),(995,1005,'xiaainy@163.com','$2a$10$K7KQJ8mED4NKLvaNlAOx5ey4NbcU1CUDrEJnL9zCWNIvnbjrhwOnK',1,'61.222.202.239','台湾省',0,'2022-01-27 10:58:12','2022-01-27 10:58:11','2022-01-27 10:58:12');
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
INSERT INTO `day_user_info` VALUES (1,'admin@qq.com','管理员','https://static.talkxj.com/avatar/user.png','admin@qq.com','2021-08-12 15:43:17','2021-08-12 15:51:42'),(2,'admin@qq.com','测试人员','https://static.talkxj.com/avatar/user.png','admin@qq.com','2022-01-27 10:58:11','2022-01-27 10:58:11'),(3,'admin@qq.com','admin@qq.com','admin@qq.com','admin@qq.com','2022-01-27 10:58:11',NULL),(1005,'xiaainy@163.com','用户1486533968342859778','https://static.talkxj.com/config/2cd793c8744199053323546875655f32.jpg',NULL,'2022-01-27 10:58:11',NULL);
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

-- Dump completed on 2022-10-12 22:18:35
