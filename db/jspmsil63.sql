-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmsil63
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
-- Table structure for table `bumenxinxi`
--

DROP TABLE IF EXISTS `bumenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bumenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenxinxi` varchar(200) NOT NULL COMMENT '部门信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614341766996 DEFAULT CHARSET=utf8 COMMENT='部门信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumenxinxi`
--

LOCK TABLES `bumenxinxi` WRITE;
/*!40000 ALTER TABLE `bumenxinxi` DISABLE KEYS */;
INSERT INTO `bumenxinxi` VALUES (22,'2021-02-26 12:13:15','部门信息11'),(23,'2021-02-26 12:13:15','部门信息3'),(24,'2021-02-26 12:13:15','部门信息4'),(25,'2021-02-26 12:13:15','部门信息5'),(26,'2021-02-26 12:13:15','部门信息6'),(1614341766995,'2021-02-26 12:16:06','交通部');
/*!40000 ALTER TABLE `bumenxinxi` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmsil63/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmsil63/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmsil63/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danganleixing`
--

DROP TABLE IF EXISTS `danganleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danganleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danganleixing` varchar(200) NOT NULL COMMENT '档案类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614341878105 DEFAULT CHARSET=utf8 COMMENT='档案类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danganleixing`
--

LOCK TABLES `danganleixing` WRITE;
/*!40000 ALTER TABLE `danganleixing` DISABLE KEYS */;
INSERT INTO `danganleixing` VALUES (63,'2021-02-26 12:13:15','档案类型3'),(64,'2021-02-26 12:13:15','档案类型4'),(65,'2021-02-26 12:13:15','档案类型5'),(66,'2021-02-26 12:13:15','档案类型6'),(1614341878104,'2021-02-26 12:17:57','档案类型20');
/*!40000 ALTER TABLE `danganleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danganxinxi`
--

DROP TABLE IF EXISTS `danganxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danganxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danganbianhao` varchar(200) NOT NULL COMMENT '档案编号',
  `danganmingcheng` varchar(200) NOT NULL COMMENT '档案名称',
  `shigumingcheng` varchar(200) DEFAULT NULL COMMENT '事故名称',
  `danganleixing` varchar(200) DEFAULT NULL COMMENT '档案类型',
  `dangantupian` varchar(200) DEFAULT NULL COMMENT '档案图片',
  `danganneirong` longtext COMMENT '档案内容',
  `rudangshijian` date DEFAULT NULL COMMENT '入档时间',
  `chulijieguo` varchar(200) DEFAULT NULL COMMENT '处理结果',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danganbianhao` (`danganbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614342205178 DEFAULT CHARSET=utf8 COMMENT='档案信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danganxinxi`
--

LOCK TABLES `danganxinxi` WRITE;
/*!40000 ALTER TABLE `danganxinxi` DISABLE KEYS */;
INSERT INTO `danganxinxi` VALUES (71,'2021-02-26 12:13:15','档案编号1','档案名称1','事故名称1','档案类型1','http://localhost:8080/jspmsil63/upload/danganxinxi_dangantupian1.jpg','档案内容1','2021-02-26','未结案'),(72,'2021-02-26 12:13:15','档案编号2','档案名称2','事故名称2','档案类型2','http://localhost:8080/jspmsil63/upload/danganxinxi_dangantupian2.jpg','档案内容2','2021-02-26','未结案'),(73,'2021-02-26 12:13:15','档案编号3','档案名称3','事故名称3','档案类型3','http://localhost:8080/jspmsil63/upload/danganxinxi_dangantupian3.jpg','档案内容3','2021-02-26','未结案'),(74,'2021-02-26 12:13:15','档案编号4','档案名称4','事故名称4','档案类型4','http://localhost:8080/jspmsil63/upload/danganxinxi_dangantupian4.jpg','档案内容4','2021-02-26','未结案'),(75,'2021-02-26 12:13:15','档案编号5','档案名称5','事故名称5','档案类型5','http://localhost:8080/jspmsil63/upload/danganxinxi_dangantupian5.jpg','档案内容5','2021-02-26','未结案'),(76,'2021-02-26 12:13:15','档案编号6','档案名称6','事故名称6','档案类型6','http://localhost:8080/jspmsil63/upload/danganxinxi_dangantupian6.jpg','档案内容6','2021-02-26','未结案'),(1614342205177,'2021-02-26 12:23:24','1614342162','私了','追尾','档案类型20','http://localhost:8080/jspmsil63/upload/1614342169210.jpg','追尾私下解决\r\n','2021-02-28','已结案');
/*!40000 ALTER TABLE `danganxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingchaxinxi`
--

DROP TABLE IF EXISTS `jingchaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingchaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingyuanbianhao` int(11) NOT NULL COMMENT '警员编号',
  `jingyuanmingzi` varchar(200) NOT NULL COMMENT '警员名字',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingyuanbianhao` (`jingyuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614341816707 DEFAULT CHARSET=utf8 COMMENT='警察信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingchaxinxi`
--

LOCK TABLES `jingchaxinxi` WRITE;
/*!40000 ALTER TABLE `jingchaxinxi` DISABLE KEYS */;
INSERT INTO `jingchaxinxi` VALUES (31,'2021-02-26 12:13:15',1,'警员名字1','http://localhost:8080/jspmsil63/upload/jingchaxinxi_tupian1.jpg','440300199101010001','13823888881'),(32,'2021-02-26 12:13:15',2,'警员名字2','http://localhost:8080/jspmsil63/upload/jingchaxinxi_tupian2.jpg','440300199202020002','13823888882'),(34,'2021-02-26 12:13:15',4,'警员名字4','http://localhost:8080/jspmsil63/upload/jingchaxinxi_tupian4.jpg','440300199404040004','13823888884'),(35,'2021-02-26 12:13:15',5,'警员名字5','http://localhost:8080/jspmsil63/upload/jingchaxinxi_tupian5.jpg','440300199505050005','13823888885'),(36,'2021-02-26 12:13:15',6,'dd','http://localhost:8080/jspmsil63/upload/jingchaxinxi_tupian6.jpg','440300199606060006','13823888886'),(1614341816706,'2021-02-26 12:16:56',66,'66','http://localhost:8080/jspmsil63/upload/1614341801875.png','441254533954125214','13536235102');
/*!40000 ALTER TABLE `jingchaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shensuxinxi`
--

DROP TABLE IF EXISTS `shensuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shensuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shigumingcheng` varchar(200) DEFAULT NULL COMMENT '事故名称',
  `shiguleixing` varchar(200) DEFAULT NULL COMMENT '事故类型',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `shensuliyou` longtext COMMENT '申诉理由',
  `shensucailiao` varchar(200) DEFAULT NULL COMMENT '申诉材料',
  `shensuriqi` date DEFAULT NULL COMMENT '申诉日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `chezhuxingming` varchar(200) DEFAULT NULL COMMENT '车主姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614342078289 DEFAULT CHARSET=utf8 COMMENT='申诉信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shensuxinxi`
--

LOCK TABLES `shensuxinxi` WRITE;
/*!40000 ALTER TABLE `shensuxinxi` DISABLE KEYS */;
INSERT INTO `shensuxinxi` VALUES (81,'2021-02-26 12:13:15','事故名称1','事故类型1','车牌1','申诉理由1','','2021-02-26','账号1','车主姓名1','手机1','是',''),(82,'2021-02-26 12:13:15','事故名称2','事故类型2','车牌2','申诉理由2','','2021-02-26','账号2','车主姓名2','手机2','是',''),(83,'2021-02-26 12:13:15','事故名称3','事故类型3','车牌3','申诉理由3','','2021-02-26','账号3','车主姓名3','手机3','是',''),(84,'2021-02-26 12:13:15','事故名称4','事故类型4','车牌4','申诉理由4','','2021-02-26','账号4','车主姓名4','手机4','是',''),(85,'2021-02-26 12:13:15','事故名称5','事故类型5','车牌5','申诉理由5','','2021-02-26','账号5','车主姓名5','手机5','是',''),(86,'2021-02-26 12:13:15','事故名称6','事故类型6','车牌6','申诉理由6','','2021-02-26','账号6','车主姓名6','手机6','是',''),(1614342078288,'2021-02-26 12:21:17','追尾','一般事故','A22222','不同意私了','http://localhost:8080/jspmsil63/file/download?fileName=1614342076514.jpg','2021-02-27','444','阿耳','13536121451','是','私下解决');
/*!40000 ALTER TABLE `shensuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiguleixing`
--

DROP TABLE IF EXISTS `shiguleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiguleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiguleixing` varchar(200) NOT NULL COMMENT '事故类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614341827249 DEFAULT CHARSET=utf8 COMMENT='事故类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiguleixing`
--

LOCK TABLES `shiguleixing` WRITE;
/*!40000 ALTER TABLE `shiguleixing` DISABLE KEYS */;
INSERT INTO `shiguleixing` VALUES (41,'2021-02-26 12:13:15','事故类型1'),(42,'2021-02-26 12:13:15','事故类型2'),(43,'2021-02-26 12:13:15','事故类型3'),(44,'2021-02-26 12:13:15','事故类型4'),(45,'2021-02-26 12:13:15','事故类型5'),(46,'2021-02-26 12:13:15','事故类型6'),(1614341827248,'2021-02-26 12:17:06','一般事故');
/*!40000 ALTER TABLE `shiguleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiguxinxi`
--

DROP TABLE IF EXISTS `shiguxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiguxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shigumingcheng` varchar(200) NOT NULL COMMENT '事故名称',
  `shiguleixing` varchar(200) NOT NULL COMMENT '事故类型',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `chezhuxingming` varchar(200) DEFAULT NULL COMMENT '车主姓名',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fashengyuanyin` longtext COMMENT '发生原因',
  `chulijieguo` longtext COMMENT '处理结果',
  `shigushijian` date NOT NULL COMMENT '事故时间',
  `chulijingcha` varchar(200) DEFAULT NULL COMMENT '处理警察',
  `tianqi` varchar(200) DEFAULT NULL COMMENT '天气',
  `chufajine` int(11) NOT NULL COMMENT '处罚金额',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614341985181 DEFAULT CHARSET=utf8 COMMENT='事故信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiguxinxi`
--

LOCK TABLES `shiguxinxi` WRITE;
/*!40000 ALTER TABLE `shiguxinxi` DISABLE KEYS */;
INSERT INTO `shiguxinxi` VALUES (51,'2021-02-26 12:13:15','事故名称1','事故类型1','账号1','车主姓名1','车牌1','手机1','发生原因1','处理结果1','2021-02-26','处理警察1','晴天',1,'未支付'),(52,'2021-02-26 12:13:15','事故名称2','事故类型2','账号2','车主姓名2','车牌2','手机2','发生原因2','处理结果2','2021-02-26','处理警察2','晴天',2,'未支付'),(53,'2021-02-26 12:13:15','事故名称3','事故类型3','账号3','车主姓名3','车牌3','手机3','发生原因3','处理结果3','2021-02-26','处理警察3','晴天',3,'未支付'),(54,'2021-02-26 12:13:15','事故名称4','事故类型4','账号4','车主姓名4','车牌4','手机4','发生原因4','处理结果4','2021-02-26','处理警察4','晴天',4,'未支付'),(55,'2021-02-26 12:13:15','事故名称5','事故类型5','账号5','车主姓名5','车牌5','手机5','发生原因5','处理结果5','2021-02-26','处理警察5','晴天',5,'未支付'),(56,'2021-02-26 12:13:15','事故名称6','事故类型6','账号6','车主姓名6','车牌6','手机6','发生原因6','处理结果6','2021-02-26','处理警察6','晴天',6,'未支付'),(1614341985180,'2021-02-26 12:19:44','追尾','一般事故','444','阿耳','A22222','13536121451','驾驶员不注意','私了','2021-02-26','66','晴天',500,'已支付');
/*!40000 ALTER TABLE `shiguxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','0re2px1qavmtgrifbq2yhdclzmok2ld1','2021-02-26 12:13:52','2021-02-26 13:21:33'),(2,1614341719693,'444','yonghu','用户','jamjlawjsyly0ixjn3g1o6cb7mn1hbs7','2021-02-26 12:20:06','2021-02-26 13:24:36');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-26 12:13:15');
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
  `chezhuxingming` varchar(200) NOT NULL COMMENT '车主姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chepai` varchar(200) NOT NULL COMMENT '车牌',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614341719694 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-26 12:13:15','用户1','123456','车主姓名1','男','http://localhost:8080/jspmsil63/upload/yonghu_tupian1.jpg','车牌1','440300199101010001','13823888881'),(12,'2021-02-26 12:13:15','用户2','123456','车主姓名2','男','http://localhost:8080/jspmsil63/upload/yonghu_tupian2.jpg','车牌2','440300199202020002','13823888882'),(13,'2021-02-26 12:13:15','用户3','123456','车主姓名3','男','http://localhost:8080/jspmsil63/upload/yonghu_tupian3.jpg','车牌3','440300199303030003','13823888883'),(14,'2021-02-26 12:13:15','用户4','123456','车主姓名4','男','http://localhost:8080/jspmsil63/upload/yonghu_tupian4.jpg','车牌4','440300199404040004','13823888884'),(15,'2021-02-26 12:13:15','用户5','123456','车主姓名5','男','http://localhost:8080/jspmsil63/upload/yonghu_tupian5.jpg','车牌5','440300199505050005','13823888885'),(16,'2021-02-26 12:13:15','用户6','123456','车主姓名6','男','http://localhost:8080/jspmsil63/upload/yonghu_tupian6.jpg','车牌6','440300199606060006','13823888886'),(1614341719693,'2021-02-26 12:15:19','444','111','阿耳','男','http://localhost:8080/jspmsil63/upload/1614342254937.jpg','A22222','','');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-26 21:17:17
