-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm2b4x5
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-16 13:40:56',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-16 13:40:56',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-16 13:40:56',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-16 13:40:56',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-16 13:40:56',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-16 13:40:56',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'fuzhuangzhanshi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-16 13:40:56',1,1,'提问1','回复1',1),(62,'2021-03-16 13:40:56',2,2,'提问2','回复2',2),(63,'2021-03-16 13:40:56',3,3,'提问3','回复3',3),(64,'2021-03-16 13:40:56',4,4,'提问4','回复4',4),(65,'2021-03-16 13:40:56',5,5,'提问5','回复5',5),(66,'2021-03-16 13:40:56',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm2b4x5/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm2b4x5/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm2b4x5/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfuzhuangzhanshi`
--

DROP TABLE IF EXISTS `discussfuzhuangzhanshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfuzhuangzhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='服装展示评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfuzhuangzhanshi`
--

LOCK TABLES `discussfuzhuangzhanshi` WRITE;
/*!40000 ALTER TABLE `discussfuzhuangzhanshi` DISABLE KEYS */;
INSERT INTO `discussfuzhuangzhanshi` VALUES (121,'2021-03-16 13:40:56',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-16 13:40:56',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-16 13:40:56',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-16 13:40:56',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-16 13:40:56',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-16 13:40:56',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussfuzhuangzhanshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyonghuxiangce`
--

DROP TABLE IF EXISTS `discussyonghuxiangce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyonghuxiangce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='用户相册评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyonghuxiangce`
--

LOCK TABLES `discussyonghuxiangce` WRITE;
/*!40000 ALTER TABLE `discussyonghuxiangce` DISABLE KEYS */;
INSERT INTO `discussyonghuxiangce` VALUES (131,'2021-03-16 13:40:56',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-16 13:40:56',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-16 13:40:56',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-16 13:40:56',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-16 13:40:56',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-16 13:40:56',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussyonghuxiangce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-16 13:40:56','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-16 13:40:56','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-16 13:40:56','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-16 13:40:56','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-16 13:40:56','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-16 13:40:56','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuzhuangleibie`
--

DROP TABLE IF EXISTS `fuzhuangleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuzhuangleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuzhuangleibie` varchar(200) NOT NULL COMMENT '服装类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='服装类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuzhuangleibie`
--

LOCK TABLES `fuzhuangleibie` WRITE;
/*!40000 ALTER TABLE `fuzhuangleibie` DISABLE KEYS */;
INSERT INTO `fuzhuangleibie` VALUES (41,'2021-03-16 13:40:56','服装类别1'),(42,'2021-03-16 13:40:56','服装类别2'),(43,'2021-03-16 13:40:56','服装类别3'),(44,'2021-03-16 13:40:56','服装类别4'),(45,'2021-03-16 13:40:56','服装类别5'),(46,'2021-03-16 13:40:56','服装类别6');
/*!40000 ALTER TABLE `fuzhuangleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuzhuangzhanshi`
--

DROP TABLE IF EXISTS `fuzhuangzhanshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuzhuangzhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuzhuangbianhao` varchar(200) DEFAULT NULL COMMENT '服装编号',
  `fuzhuangmingcheng` varchar(200) DEFAULT NULL COMMENT '服装名称',
  `fuzhuangleibie` varchar(200) DEFAULT NULL COMMENT '服装类别',
  `fuzhuangyanse` varchar(200) DEFAULT NULL COMMENT '服装颜色',
  `fuzhuangjieshao` longtext COMMENT '服装介绍',
  `fuzhuangtupian` varchar(200) DEFAULT NULL COMMENT '服装图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fuzhuangbianhao` (`fuzhuangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='服装展示';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuzhuangzhanshi`
--

LOCK TABLES `fuzhuangzhanshi` WRITE;
/*!40000 ALTER TABLE `fuzhuangzhanshi` DISABLE KEYS */;
INSERT INTO `fuzhuangzhanshi` VALUES (31,'2021-03-16 13:40:56','服装编号1','服装名称1','服装类别1','服装颜色1','服装介绍1','http://localhost:8080/ssm2b4x5/upload/fuzhuangzhanshi_fuzhuangtupian1.jpg',1,1,'2021-03-16 21:40:56',1,99.9),(32,'2021-03-16 13:40:56','服装编号2','服装名称2','服装类别2','服装颜色2','服装介绍2','http://localhost:8080/ssm2b4x5/upload/fuzhuangzhanshi_fuzhuangtupian2.jpg',2,2,'2021-03-16 21:40:56',2,99.9),(33,'2021-03-16 13:40:56','服装编号3','服装名称3','服装类别3','服装颜色3','服装介绍3','http://localhost:8080/ssm2b4x5/upload/fuzhuangzhanshi_fuzhuangtupian3.jpg',3,3,'2021-03-16 21:40:56',3,99.9),(34,'2021-03-16 13:40:56','服装编号4','服装名称4','服装类别4','服装颜色4','服装介绍4','http://localhost:8080/ssm2b4x5/upload/fuzhuangzhanshi_fuzhuangtupian4.jpg',4,4,'2021-03-16 21:40:56',4,99.9),(35,'2021-03-16 13:40:56','服装编号5','服装名称5','服装类别5','服装颜色5','服装介绍5','http://localhost:8080/ssm2b4x5/upload/fuzhuangzhanshi_fuzhuangtupian5.jpg',5,5,'2021-03-16 21:40:56',5,99.9),(36,'2021-03-16 13:40:56','服装编号6','服装名称6','服装类别6','服装颜色6','服装介绍6','http://localhost:8080/ssm2b4x5/upload/fuzhuangzhanshi_fuzhuangtupian6.jpg',6,6,'2021-03-16 21:40:56',6,99.9);
/*!40000 ALTER TABLE `fuzhuangzhanshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hanfuzhishi`
--

DROP TABLE IF EXISTS `hanfuzhishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hanfuzhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='汉服知识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hanfuzhishi`
--

LOCK TABLES `hanfuzhishi` WRITE;
/*!40000 ALTER TABLE `hanfuzhishi` DISABLE KEYS */;
INSERT INTO `hanfuzhishi` VALUES (21,'2021-03-16 13:40:56','文章标题1','http://localhost:8080/ssm2b4x5/upload/hanfuzhishi_fengmiantupian1.jpg','2021-03-16 21:40:56','文章内容1','发布人1','2021-03-16 21:40:56',1),(22,'2021-03-16 13:40:56','文章标题2','http://localhost:8080/ssm2b4x5/upload/hanfuzhishi_fengmiantupian2.jpg','2021-03-16 21:40:56','文章内容2','发布人2','2021-03-16 21:40:56',2),(23,'2021-03-16 13:40:56','文章标题3','http://localhost:8080/ssm2b4x5/upload/hanfuzhishi_fengmiantupian3.jpg','2021-03-16 21:40:56','文章内容3','发布人3','2021-03-16 21:40:56',3),(24,'2021-03-16 13:40:56','文章标题4','http://localhost:8080/ssm2b4x5/upload/hanfuzhishi_fengmiantupian4.jpg','2021-03-16 21:40:56','文章内容4','发布人4','2021-03-16 21:40:56',4),(25,'2021-03-16 13:40:56','文章标题5','http://localhost:8080/ssm2b4x5/upload/hanfuzhishi_fengmiantupian5.jpg','2021-03-16 21:40:56','文章内容5','发布人5','2021-03-16 21:40:56',5),(26,'2021-03-16 13:40:56','文章标题6','http://localhost:8080/ssm2b4x5/upload/hanfuzhishi_fengmiantupian6.jpg','2021-03-16 21:40:56','文章内容6','发布人6','2021-03-16 21:40:56',6);
/*!40000 ALTER TABLE `hanfuzhishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'fuzhuangzhanshi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-16 13:40:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-16 13:40:56','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm2b4x5/upload/yonghu_zhaopian1.jpg','地址1',100),(12,'2021-03-16 13:40:56','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm2b4x5/upload/yonghu_zhaopian2.jpg','地址2',100),(13,'2021-03-16 13:40:56','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm2b4x5/upload/yonghu_zhaopian3.jpg','地址3',100),(14,'2021-03-16 13:40:56','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm2b4x5/upload/yonghu_zhaopian4.jpg','地址4',100),(15,'2021-03-16 13:40:56','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm2b4x5/upload/yonghu_zhaopian5.jpg','地址5',100),(16,'2021-03-16 13:40:56','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm2b4x5/upload/yonghu_zhaopian6.jpg','地址6',100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuxiangce`
--

DROP TABLE IF EXISTS `yonghuxiangce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuxiangce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangcemingcheng` varchar(200) NOT NULL COMMENT '相册名称',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `jianshu` varchar(200) DEFAULT NULL COMMENT '简述',
  `xiangcetupian` longtext COMMENT '相册图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='用户相册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuxiangce`
--

LOCK TABLES `yonghuxiangce` WRITE;
/*!40000 ALTER TABLE `yonghuxiangce` DISABLE KEYS */;
INSERT INTO `yonghuxiangce` VALUES (51,'2021-03-16 13:40:56','相册名称1','http://localhost:8080/ssm2b4x5/upload/yonghuxiangce_fengmiantu1.jpg','简述1','相册图片1','2021-03-16 21:40:56','账号1','姓名1',1,1),(52,'2021-03-16 13:40:56','相册名称2','http://localhost:8080/ssm2b4x5/upload/yonghuxiangce_fengmiantu2.jpg','简述2','相册图片2','2021-03-16 21:40:56','账号2','姓名2',2,2),(53,'2021-03-16 13:40:56','相册名称3','http://localhost:8080/ssm2b4x5/upload/yonghuxiangce_fengmiantu3.jpg','简述3','相册图片3','2021-03-16 21:40:56','账号3','姓名3',3,3),(54,'2021-03-16 13:40:56','相册名称4','http://localhost:8080/ssm2b4x5/upload/yonghuxiangce_fengmiantu4.jpg','简述4','相册图片4','2021-03-16 21:40:56','账号4','姓名4',4,4),(55,'2021-03-16 13:40:56','相册名称5','http://localhost:8080/ssm2b4x5/upload/yonghuxiangce_fengmiantu5.jpg','简述5','相册图片5','2021-03-16 21:40:56','账号5','姓名5',5,5),(56,'2021-03-16 13:40:56','相册名称6','http://localhost:8080/ssm2b4x5/upload/yonghuxiangce_fengmiantu6.jpg','简述6','相册图片6','2021-03-16 21:40:56','账号6','姓名6',6,6);
/*!40000 ALTER TABLE `yonghuxiangce` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-18 21:57:05
