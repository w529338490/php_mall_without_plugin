-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: qdm16653534.my3w.com    Database: qdm16653534_db
-- ------------------------------------------------------
-- Server version	5.1.48-log

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
-- Table structure for table `ecs_account_log`
--

DROP TABLE IF EXISTS `ecs_account_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_account_log`
--

LOCK TABLES `ecs_account_log` WRITE;
/*!40000 ALTER TABLE `ecs_account_log` DISABLE KEYS */;
INSERT INTO `ecs_account_log` VALUES (1,1,0.00,0.00,996,996,1388397103,'订单 2013122731476 赠送的积分',99),(2,1,0.00,0.00,7589,7589,1388468702,'订单 2013123135238 赠送的积分',99),(3,1,0.00,0.00,100,100,1388474932,'订单 2013122780190 赠送的积分',99),(4,1,0.00,0.00,3000,3000,1388479351,'订单 2013122727106 赠送的积分',99),(5,1,0.00,0.00,100,100,1388479393,'订单 2013122775150 赠送的积分',99),(6,1,0.00,0.00,1500,1500,1388479445,'订单 2013122784673 赠送的积分',99),(7,1,0.00,0.00,3580,3580,1388479495,'订单 2013122722923 赠送的积分',99),(8,1,0.00,0.00,5140,5140,1388481843,'订单 2013120440283 赠送的积分',99),(9,20,0.00,0.00,84,300,1408698822,'订单 2014082248545 赠送的积分',99),(10,20,0.00,0.00,0,-10,1408699296,'支付订单 2014082255742',99),(11,20,0.00,0.00,0,-10,1408699409,'支付订单 2014082212354',99);
/*!40000 ALTER TABLE `ecs_account_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_ad`
--

DROP TABLE IF EXISTS `ecs_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_ad`
--

LOCK TABLES `ecs_ad` WRITE;
/*!40000 ALTER TABLE `ecs_ad` DISABLE KEYS */;
INSERT INTO `ecs_ad` VALUES (1,1,0,'首页-顶部通栏广告','','1385551168024731458.jpg',1385481600,1482768000,'','','',85,1),(2,2,0,'首页-网站公告顶部广告','','1407224949631407950.jpg',1385481600,1482768000,'','','',29,1),(3,3,0,'首页-团购广告','group_buy.php?act=view&id=2','1385561496734639703.jpg',1385481600,1482768000,'','','',39,1),(4,4,0,'首页-新品广告1','','1385562976459503572.jpg',1385481600,1482768000,'','','',9,1),(5,4,0,'首页-新品广告2','','1385562986080802298.jpg',1385481600,1482768000,'','','',30,1),(6,4,0,'首页-新品广告3','','1385562997212489804.jpg',1385481600,1482768000,'','','',5,1),(7,4,0,'首页-新品广告4','','1385563008900654744.jpg',1385481600,1482768000,'','','',4,1),(8,4,0,'首页-新品广告5','','1385563020969481163.jpg',1385481600,1482768000,'','','',1,1),(9,4,0,'首页-新品广告6','','1385563031696648334.jpg',1385481600,1482768000,'','','',9,1),(10,4,0,'首页-新品广告7','','1385563042278486683.jpg',1385481600,1482768000,'','','',15,1),(11,4,0,'首页-新品广告8','','1385563061973622412.jpg',1385481600,1482768000,'','','',3,1),(12,5,0,'首页-精品广告1','','1385563785486596108.jpg',1385481600,1482768000,'','','',6,1),(13,5,0,'首页-精品广告2','','1385563796223516241.jpg',1385481600,1482768000,'','','',8,1),(14,5,0,'首页-精品广告3','','1385563806418900698.jpg',1385481600,1482768000,'','','',9,1),(15,5,0,'首页-精品广告4','','1385563817924225430.jpg',1385481600,1482768000,'','','',6,1),(16,5,0,'首页-精品广告5','','1385563826309356310.jpg',1385481600,1482768000,'','','',2,1),(17,5,0,'首页-精品广告6','','1385563836174341330.jpg',1385481600,1482768000,'','','',1,1),(18,5,0,'首页-精品广告7','','1385563849778664955.jpg',1385481600,1482768000,'','','',1,1),(19,5,0,'首页-精品广告8','','1385563862235281116.jpg',1385481600,1482768000,'','','',1,1),(20,6,0,'首页-分类ID1-左侧广告','','1385565216752788626.jpg',1385481600,1482768000,'','','',4,1),(21,7,0,'首页-分类ID1-中间广告1','','1385565301823647496.jpg',1385481600,1482768000,'','','',10,1),(22,7,0,'首页-分类ID1-中间广告2','','1385565313973601364.jpg',1385481600,1482768000,'','','',6,1),(23,7,0,'首页-分类ID1-中间广告3','','1385565325784594312.jpg',1385481600,1482768000,'','','',3,1),(24,8,0,'首页-分类ID1-右侧广告','http://m2.i7c.com.cn/goods-2.html','1385565388950769615.jpg',1385481600,1482768000,'','','',3,1),(25,9,0,'首页-分类ID1-底部广告1','','1385565513361590387.jpg',1385481600,1482768000,'','','',0,1),(26,9,0,'首页-分类ID1-底部广告2','','1385565524012945886.jpg',1385481600,1482768000,'','','',1,1),(27,9,0,'首页-分类ID1-底部广告3','','1385565535843814607.jpg',1385481600,1482768000,'','','',7,1),(28,9,0,'首页-分类ID1-底部广告4','','1385565546883726827.jpg',1385481600,1482768000,'','','',4,1),(29,9,0,'首页-分类ID1-底部广告5','','1385565566388673167.jpg',1385481600,1482768000,'','','',1,1),(30,10,0,'凯撒豪庭','','1385567264349425711.jpg',1385481600,1482768000,'','','',18,1),(31,10,0,'韩菲尔','','1385567283471023198.jpg',1385481600,1482768000,'','','',7,1),(32,10,0,'蒂美悦','','1385567298962379604.jpg',1385481600,1482768000,'','','',5,1),(33,10,0,'卡富亚','','1385567321404680080.jpg',1385481600,1482768000,'','','',2,1),(34,10,0,'青春城堡','','1385567338038094367.jpg',1385481600,1482768000,'','','',6,1),(35,10,0,'林中鹰','','1385567354148399323.jpg',1385481600,1482768000,'','','',3,1),(36,10,0,'TCL','','1385567377550016441.jpg',1385481600,1482768000,'','','',4,1),(37,10,0,'西门子','','1385567506769611793.jpg',1385481600,1482768000,'','','',3,1),(38,10,0,'贝尔地板','','1385567523147726052.jpg',1385481600,1482768000,'','','',1,1),(39,10,0,'艾玛诗','','1385567539283904426.jpg',1385481600,1482768000,'','','',7,1),(40,10,0,'梦娜丝','','1385567557155880519.jpg',1385481600,1482768000,'','','',7,1),(41,10,0,'赛朵','','1385567570526008030.jpg',1385481600,1482768000,'','','',1,1),(42,10,0,'优曼家纺','','1385567592611729011.jpg',1385481600,1482768000,'','','',2,1),(43,10,0,'唯萨','','1385567609421350373.jpg',1385481600,1482768000,'','','',2,1),(147,52,3,'新品家具，极速抢“鲜”','','新品家具，极速抢“鲜”',1386086400,1483372800,'','','',3,1),(148,52,3,'特价商品，抄底特卖专场!','','特价商品，抄底特卖专场!',1386086400,1483372800,'','','',2,1),(46,12,0,'灯饰钜惠！我和美美的约定','','1385629104062757737.jpg',1385568000,1482854400,'','','',0,1),(47,12,0,'6周年卫浴特卖','','1385629143233483304.jpg',1385568000,1482854400,'','','',2,1),(48,12,0,'8大最受欢迎地板','','1385629185383198062.jpg',1385568000,1482854400,'','','',0,1),(49,12,0,'美乐乐6周年厨卫盛宴','','1385629203743519421.jpg',1385568000,1482854400,'','','',1,1),(50,12,0,'全新美乐乐Iphone客户端！','','1385629219002800898.jpg',1385568000,1482854400,'','','',1,1),(51,13,0,'分类频道页-分类ID4-楼层左侧广告1','','1385637044638399758.jpg',1385568000,1482854400,'','','',0,1),(52,13,0,'分类频道页-分类ID4-楼层左侧广告2','','1385637055173837465.jpg',1385568000,1482854400,'','','',0,1),(53,14,0,'分类频道页-分类ID4-楼层底部广告1','','1385639850522276745.jpg',1385568000,1482854400,'','','',0,1),(54,14,0,'分类频道页-分类ID4-楼层底部广告2','','1385639861747015482.jpg',1385568000,1482854400,'','','',0,1),(55,14,0,'分类频道页-分类ID4-楼层底部广告3','','1385639872196664630.jpg',1385568000,1482854400,'','','',0,1),(56,14,0,'分类频道页-分类ID4-楼层底部广告4','','1385639882019449849.jpg',1385568000,1482854400,'','','',0,1),(57,15,0,'分类频道页-分类ID1-最新促销活动-图片','','1385641707679275672.jpg',1385568000,1482854400,'','','',2,1),(58,16,3,'现货清仓！半卖半送!','','现货清仓！半卖半送!',1385568000,1388160000,'','','',0,1),(59,16,3,'终极好家具，进口全实木——低至6.8折，我和我的小','','终极好家具，进口全实木——低至6.8折，我和我的小',1385568000,1482854400,'','','',0,1),(60,16,3,'打造儿童家居新天地','','打造儿童家居新天地',1385568000,1482854400,'','','',0,1),(61,16,3,'美乐乐/SKG6周年狂欢购！','','美乐乐/SKG6周年狂欢购！',1385568000,1482854400,'','','',1,1),(62,16,3,'SKG引爆炸弹价，全场包邮！','','SKG引爆炸弹价，全场包邮！',1385568000,1482854400,'','','',0,1),(63,17,0,'团购页-通栏广告','','1385739221485486702.jpg',1385654400,1482940800,'','','',1,1),(64,18,0,'文章页-通栏广告','','1385807709770719903.jpg',1385740800,1483027200,'','','',2,1),(65,19,0,'文章页-右侧广告','','1385812505707871830.jpg',1385740800,1483027200,'','','',3,1),(66,20,0,'秀家-左侧广告','','1387380814051147257.jpg',1385827200,1483113600,'','','',33,1),(67,21,0,'PTC陶瓷暖风机 ¥369.00','','1385901421527538016.jpg',1385827200,1483113600,'','','',0,1),(68,21,0,'爱丽丝床品四件套 ¥299.00','','1385901457542076573.jpg',1385827200,1483113600,'','','',0,1),(69,21,0,'紫色水纹毛巾被 ¥99.00','','1385901485766604226.jpg',1385827200,1483113600,'','','',0,1),(70,21,0,'圆形珍珠相框 ¥28.00','','1385901528449836839.jpg',1385827200,1483113600,'','','',0,1),(71,23,0,'特惠套装页-顶部广告1','','1385912682519019507.jpg',1385827200,1483113600,'','','',0,1),(72,24,0,'特惠套装页-顶部广告2','','1385912717354520013.jpg',1385827200,1483113600,'','','',1,1),(73,25,0,'首页-顶部促销广告','','1385972141450905269.gif',1385913600,1483200000,'','','',34,1),(74,26,0,'首页-导航菜单-分类ID1-推荐品牌1','','1385973893624934679.jpg',1385913600,1483200000,'凯撒豪庭','','',3,1),(75,26,0,'首页-导航菜单-分类ID1-推荐品牌2','','1385973862171596810.jpg',1385913600,1483200000,'韩菲尔','','',1,1),(76,26,0,'首页-导航菜单-分类ID1-推荐品牌3','','1385973873999702874.jpg',1385913600,1483200000,'蒂美悦','','',1,1),(77,26,0,'首页-导航菜单-分类ID1-推荐品牌4','','1385973884138818577.jpg',1385913600,1483200000,'卡富亚','','',1,1),(78,27,0,'商品页-顶部通栏广告','','1385990367544595004.jpg',1385913600,1483200000,'','','',9,1),(79,28,0,'首页-分类ID2-左侧广告','','1386081752958196621.jpg',1386000000,1483286400,'','','',2,1),(80,29,0,'首页-分类ID2-中间广告1','','1386081778055926198.jpg',1386000000,1483286400,'','','',4,1),(81,29,0,'首页-分类ID2-中间广告2','','1386081791567609402.jpg',1386000000,1483286400,'','','',3,1),(82,29,0,'首页-分类ID2-中间广告3','','1386081812051772280.jpg',1386000000,1483286400,'','','',4,1),(83,30,0,'首页-分类ID2-右侧广告','','1386081835306877737.jpg',1386000000,1483286400,'','','',7,1),(84,31,0,'首页-分类ID2-底部广告1','','1386081958889071005.jpg',1386000000,1483286400,'','','',3,1),(85,31,0,'首页-分类ID2-底部广告2','','1386081970561689872.jpg',1386000000,1483286400,'','','',2,1),(86,31,0,'首页-分类ID2-底部广告3','','1386081981701517524.jpg',1386000000,1483286400,'','','',2,1),(87,31,0,'首页-分类ID2-底部广告4','','1386081994631606298.jpg',1386000000,1483286400,'','','',1,1),(88,31,0,'首页-分类ID2-底部广告5','','1386082009648973384.jpg',1386000000,1483286400,'','','',1,1),(89,32,0,'首页-分类ID3-左侧广告','','1386082116637576384.jpg',1386000000,1483286400,'','','',1,1),(90,33,0,'首页-分类ID3-中间广告1','','1386082151147099491.jpg',1386000000,1483286400,'','','',5,1),(91,33,0,'首页-分类ID3-中间广告2','','1386082169831168832.jpg',1386000000,1483286400,'','','',8,1),(92,33,0,'首页-分类ID3-中间广告3','','1386082196812000842.jpg',1386000000,1483286400,'','','',3,1),(93,34,0,'首页-分类ID3-右侧广告','','1386082215676242714.jpg',1386000000,1483286400,'','','',1,1),(94,35,0,'首页-分类ID3-底部广告1','','1386082288805741032.jpg',1386000000,1483286400,'','','',4,1),(95,35,0,'首页-分类ID3-底部广告2','','1386082302015538300.jpg',1386000000,1483286400,'','','',4,1),(96,35,0,'首页-分类ID3-底部广告3','','1386082324636393380.jpg',1386000000,1483286400,'','','',3,1),(97,35,0,'首页-分类ID3-底部广告4','','1386082337095214396.jpg',1386000000,1483286400,'','','',1,1),(98,35,0,'首页-分类ID3-底部广告5','','1386082351337103577.jpg',1386000000,1483286400,'','','',0,1),(99,36,0,'分类频道页-分类ID5-楼层左侧广告1','','1386084593087143883.jpg',1386000000,1483286400,'','','',0,1),(100,36,0,'分类频道页-分类ID5-楼层左侧广告2','','1386084611448317635.jpg',1386000000,1483286400,'','','',0,1),(101,37,0,'分类频道页-分类ID5-楼层底部广告1','','1386084754854268370.jpg',1386000000,1483286400,'','','',0,1),(102,37,0,'分类频道页-分类ID5-楼层底部广告2','','1386084765565627916.jpg',1386000000,1483286400,'','','',0,1),(103,37,0,'分类频道页-分类ID5-楼层底部广告3','','1386084776104092568.jpg',1386000000,1483286400,'','','',0,1),(104,37,0,'分类频道页-分类ID5-楼层底部广告4','','1386084793386473158.jpg',1386000000,1483286400,'','','',0,1),(105,38,0,'分类频道页-分类ID6-楼层左侧广告1','','1386084878898640541.jpg',1386000000,1483286400,'','','',0,1),(106,38,0,'分类频道页-分类ID6-楼层左侧广告2','','1386084892380371385.jpg',1386000000,1483286400,'','','',0,1),(107,39,0,'分类频道页-分类ID6-楼层底部广告1','','1386084959785983329.jpg',1386000000,1483286400,'','','',0,1),(108,39,0,'分类频道页-分类ID6-楼层底部广告2','','1386084970892829075.jpg',1386000000,1483286400,'','','',0,1),(109,39,0,'分类频道页-分类ID6-楼层底部广告3','','1386084981624962223.jpg',1386000000,1483286400,'','','',0,1),(110,39,0,'分类频道页-分类ID6-楼层底部广告4','','1386085002924029593.jpg',1386000000,1483286400,'','','',0,1),(111,40,0,'到店体验0元送豪礼！','','1386145475382169329.jpg',1386086400,1483372800,'','','',2,1),(112,40,0,'免费设计，家电轻松得！','','1386145499633052733.jpg',1386086400,1483372800,'','','',0,1),(113,40,0,'荧屏家具大咖秀','','1386145520802274294.jpg',1386086400,1483372800,'','','',2,1),(114,40,0,'吃货的三大境界','','1386145535592291773.jpg',1386086400,1483372800,'','','',1,1),(115,40,0,'打造儿童家居天地','','1386145557289874100.jpg',1386086400,1483372800,'','','',3,1),(116,41,0,'顶级分类页-分类ID1-品牌广告1','','1386146346502910325.gif',1386086400,1483372800,'凯撒豪庭','','',2,1),(117,41,0,'顶级分类页-分类ID1-品牌广告2','','1386146357216516045.gif',1386086400,1483372800,'韩菲尔','','',0,1),(118,41,0,'顶级分类页-分类ID1-品牌广告3','','1386146368753039290.gif',1386086400,1483372800,'卡富亚','','',0,1),(119,41,0,'顶级分类页-分类ID1-品牌广告4','','1386146381585913683.gif',1386086400,1483372800,'蒂美悦','','',0,1),(120,41,0,'顶级分类页-分类ID1-品牌广告5','','1386146401944843869.gif',1386086400,1483372800,'小童舍','','',0,1),(121,42,0,'顶级分类页-分类ID1-新品广告1','','1386147814037570965.jpg',1386086400,1483372800,'','','',3,1),(122,42,0,'顶级分类页-分类ID1-新品广告2','','1386147829627874428.jpg',1386086400,1483372800,'','','',0,1),(123,42,0,'顶级分类页-分类ID1-新品广告3','','1386147840292242640.jpg',1386086400,1483372800,'','','',1,1),(124,42,0,'顶级分类页-分类ID1-新品广告4','','1386147851606949863.jpg',1386086400,1483372800,'','','',0,1),(125,42,0,'顶级分类页-分类ID1-新品广告5','','1386147864234767578.jpg',1386086400,1483372800,'','','',0,1),(126,43,0,'顶级分类页-分类ID1-热卖排行1','','1386148468302908812.jpg',1386086400,1483372800,'','','',3,1),(127,43,0,'顶级分类页-分类ID1-热卖排行2','','1386148480939796852.jpg',1386086400,1483372800,'','','',0,1),(128,43,0,'顶级分类页-分类ID1-热卖排行3','','1386148491356319919.jpg',1386086400,1483372800,'','','',0,1),(129,44,0,'顶级分类页-分类ID4-楼层左侧广告1','','1386149390639154108.jpg',1386086400,1483372800,'','','',0,1),(130,44,0,'顶级分类页-分类ID4-楼层左侧广告2','','1386149401074442847.jpg',1386086400,1483372800,'','','',0,1),(131,44,0,'顶级分类页-分类ID4-楼层左侧广告3','','1386149415004888945.jpg',1386086400,1483372800,'','','',0,1),(132,45,0,'顶级分类页-分类ID4-楼层右侧广告','','1386149462509553921.jpg',1386086400,1483372800,'','','',0,1),(133,46,0,'顶级分类页-分类ID5-楼层左侧广告1','','1386153503176931374.jpg',1386086400,1483372800,'','','',0,1),(134,46,0,'顶级分类页-分类ID5-楼层左侧广告2','','1386153520765573811.jpg',1386086400,1483372800,'','','',0,1),(135,46,0,'顶级分类页-分类ID5-楼层左侧广告3','','1386153532565786907.jpg',1386086400,1483372800,'','','',0,1),(136,47,0,'顶级分类页-分类ID5-楼层右侧广告1','','1386153556910478258.jpg',1386086400,1483372800,'','','',0,1),(137,48,0,'顶级分类页-分类ID6-楼层左侧广告1','','1386153727784449596.jpg',1386086400,1483372800,'','','',0,1),(138,48,0,'顶级分类页-分类ID6-楼层左侧广告2','','1386153738682789793.jpg',1386086400,1483372800,'','','',0,1),(139,48,0,'顶级分类页-分类ID6-楼层左侧广告3','','1386153752716745409.jpg',1386086400,1483372800,'','','',0,1),(140,49,0,'顶级分类页-分类ID6-楼层右侧广告','','1386153777577077036.jpg',1386086400,1483372800,'','','',0,1),(141,50,0,'顶级分类页-分类ID1-最新促销活动-图片','','1386154016906256632.jpg',1386086400,1483372800,'','','345345345345',2,1),(142,51,3,'打造儿童天地','','打造儿童天地',1386086400,1483372800,'','','',1,1),(143,51,3,'现货清仓/半卖半送','','现货清仓/半卖半送',1386086400,1483372800,'','','',0,1),(144,51,3,'终极好家具，进口全实木——低至6.8折，我和我的小伙伴们都惊呆了-活动-美乐乐家具网','','终极好家具，进口全实木——低至6.8折，我和我的小伙伴们都惊呆了-活动-美乐乐家具网',1386086400,1388678400,'','','',0,1),(145,51,3,'美乐乐/SKG6周年狂欢购','','美乐乐/SKG6周年狂欢购',1386086400,1483372800,'','','',0,1),(146,51,3,'SKG引爆炸弹价，全场包邮','','SKG引爆炸弹价，全场包邮',1386086400,1483372800,'','','',0,1),(149,52,3,'热卖家具，火爆疯狂抢购!','','热卖家具，火爆疯狂抢购!',1386086400,1483372800,'','','',11,1),(172,61,0,'触屏首页-轮播广告1','','1376962008930613613.jpg',1376928000,1474214400,'','','',0,1),(173,61,0,'触屏首页-轮播广告2','','1376962021988432562.jpg',1376928000,1474214400,'','','',0,1),(174,61,0,'触屏首页-轮播广告3','','1376962033066550718.jpg',1376928000,1474214400,'','','',0,1),(175,61,0,'触屏首页-轮播广告4','','1376962047868870319.jpg',1376928000,1474214400,'','','',0,1),(176,61,0,'触屏首页-轮播广告5','','1376962066922775366.jpg',1376928000,1474214400,'','','',0,1),(177,62,0,'家具城','category.php?c_id=1','1376962548135940550.png',1376928000,1474214400,'','','',0,1),(178,62,0,'建材城','category.php?c_id=2','1376962568788030173.png',1376928000,1474214400,'','','',0,1),(179,62,0,'家饰城','category.php?c_id=3','1376962586922173829.png',1376928000,1474214400,'','','',0,1),(180,62,0,'所有分类','cat_all.php','1376962605623168464.png',1376928000,1474214400,'','','',0,1),(181,63,0,'触屏首页-分类ID24-图片广告','','1376963472943928458.jpg',1376928000,1474214400,'','','',0,1),(182,64,0,'触屏首页-分类ID27-图片广告','','1376963510305719505.jpg',1376928000,1474214400,'','','',0,1),(183,65,0,'触屏首页-分类ID199-图片广告','','1376963547464408539.jpg',1376928000,1474214400,'','','',0,1),(184,66,3,'客服服务','article.php?act=detail&a_id=90','客服服务',1376928000,1379520000,'','','',0,1),(185,66,3,'服务到家','article.php?act=detail&a_id=90','服务到家',1376928000,1474214400,'','','',0,1),(186,66,3,'到店支付','article.php?act=detail&a_id=90','到店支付',1376928000,1474214400,'','','',0,1),(187,66,3,'售后服务','article.php?act=detail&a_id=90','售后服务',1376928000,1474214400,'','','',0,1),(188,66,3,'质量保证','article.php?act=detail&a_id=90','质量保证',1376928000,1474214400,'','','',0,1),(189,67,3,'copyright © 2005-2013 m.meilele.com','','copyright © 2005-2013 m.meilele.com',1376928000,1379520000,'','','',0,1),(190,68,2,'触屏首页-公司地址','','<a href=\"javascript:;\" class=\"label\">广州金沙洲体验馆</a>\r\n          <div class=\"hideMap\"> <a class=\"phone\" href=\"tel:020-81439005\"><span>抢购热线：020-81439005</span></a>\r\n            <dl>\r\n              <dt class=\"name\">地址：</dt>\r\n              <dd class=\"value\">广州市金沙洲建设大道1号中海金沙湾2号楼42，43号商铺</dd>\r\n            </dl>\r\n          </div>',1376928000,1474214400,'','','',0,1),(191,69,3,'触屏首页-400电话','','<a href=\"index.php\" style=\"margin-right:10px;\">首页</a><a href=\"user.php\" style=\"margin-right:10px;\">登录</a><a href=\"cart.php\">购物车</a><a class=\"at\" href=\"tel:4000098666\"><span class=\"tel_icon\"></span>400-0098000</a></span>',1376928000,1505750400,'','','',0,1),(192,70,0,'体验馆-顶部通栏广告','','1386410740593845033.jpg',1386345600,1483632000,'','','',3,1),(193,71,0,'体验馆-ID2-flash广告1','','1386489609310313079.jpg',1386432000,1483718400,'','','',0,1),(194,71,0,'体验馆-ID2-flash广告2','','1386489645637842899.jpg',1386432000,1483718400,'','','',0,1),(195,71,0,'体验馆-ID2-flash广告3','','1386489655683375036.jpg',1386432000,1483718400,'','','',0,1),(196,71,0,'体验馆-ID2-flash广告4','','1386489673346602821.JPG',1386432000,1483718400,'','','',0,1),(197,72,0,'搜索页-通栏广告','','1386733341987229055.jpg',1386691200,1483977600,'','','',1,1),(198,73,0,'搜索页-左侧广告','','1386733404898907100.jpg',1386691200,1483977600,'','','',2,1),(199,74,0,'搜索页-flash广告1','','1386733512531025061.jpg',1386691200,1483977600,'','','',0,1),(200,74,0,'搜索页-flash广告2','','1386733523185827927.jpg',1386691200,1483977600,'','','',1,1),(201,74,0,'搜索页-flash广告3','','1386733534164764270.jpg',1386691200,1483977600,'','','',2,1),(202,74,0,'搜索页-flash广告4','','1386733546009792097.jpg',1386691200,1483977600,'','','',0,1),(203,75,0,'专题页-活动广告1','','1387106370443195254.jpg',1387036800,1484323200,'','','',15,1),(204,75,0,'专题页-活动广告2','','1387106382772192977.jpg',1387036800,1484323200,'','','',6,1),(205,75,0,'专题页-活动广告3','','1387106395395051523.jpg',1387036800,1484323200,'','','',5,1),(206,75,0,'专题页-活动广告4','','1387106409970043190.jpg',1387036800,1484323200,'','','',5,1),(207,76,0,'体验馆-ID3-flash广告2','','1403152278214932035.jpg',1403107200,1405699200,'','','',1,1);
/*!40000 ALTER TABLE `ecs_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_ad_custom`
--

DROP TABLE IF EXISTS `ecs_ad_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_ad_custom`
--

LOCK TABLES `ecs_ad_custom` WRITE;
/*!40000 ALTER TABLE `ecs_ad_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_ad_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_ad_position`
--

DROP TABLE IF EXISTS `ecs_ad_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_ad_position`
--

LOCK TABLES `ecs_ad_position` WRITE;
/*!40000 ALTER TABLE `ecs_ad_position` DISABLE KEYS */;
INSERT INTO `ecs_ad_position` VALUES (1,'首页-顶部通栏广告',980,50,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(2,'首页-网站公告顶部广告',228,102,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(3,'首页-团购广告',210,192,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(4,'首页-新品广告',1,1,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(5,'首页-精品广告',1,1,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(6,'首页-分类ID1-左侧广告',202,330,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(7,'首页-分类ID1-中间广告',721,330,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(8,'首页-分类ID1-右侧广告',202,330,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(9,'首页-分类ID1-底部广告',202,240,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(10,'首页-热门品牌',85,55,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(12,'分类频道页-分类ID2-轮播广告',770,370,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(13,'分类频道页-分类ID11-楼层左侧广告',200,302,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(14,'分类频道页-分类ID11-楼层底部广告',220,180,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(15,'分类频道页-分类ID2-最新促销活动-图片',292,132,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(16,'分类频道页-分类ID2-最新促销活动-文字',1,1,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(17,'团购页-通栏广告',980,168,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(18,'文章页-通栏广告',980,60,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(19,'文章页-右侧广告',300,250,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(20,'秀家-左侧广告',980,287,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(21,'秀家-本月奖品',156,120,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(23,'特惠套装页-顶部广告1',980,125,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(24,'特惠套装页-顶部广告2',980,255,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(25,'首页-顶部促销广告',145,90,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(26,'首页-导航菜单-分类ID1-推荐品牌',100,55,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(27,'商品页-顶部通栏广告',980,60,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(28,'首页-分类ID2-左侧广告',202,330,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(29,'首页-分类ID2-中间广告',721,330,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(30,'首页-分类ID2-右侧广告',202,330,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(31,'首页-分类ID2-底部广告',202,240,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(32,'首页-分类ID3-左侧广告',202,330,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(33,'首页-分类ID3-中间广告',721,330,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(34,'首页-分类ID3-右侧广告',202,330,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(35,'首页-分类ID3-底部广告',202,240,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(36,'分类频道页-分类ID12-楼层左侧广告',200,302,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(37,'分类频道页-分类ID12-楼层底部广告',220,180,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(38,'分类频道页-分类ID13-楼层左侧广告',200,302,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(39,'分类频道页-分类ID13-楼层底部广告',220,180,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(40,'顶级分类页-分类ID1-轮播广告',770,410,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(41,'顶级分类页-分类ID1-品牌广告',126,100,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(42,'顶级分类页-分类ID1-新品广告',280,180,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(43,'顶级分类页-分类ID1-热卖排行',690,332,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(44,'顶级分类页-分类ID4-楼层左侧广告',700,342,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(45,'顶级分类页-分类ID4-楼层右侧广告',279,342,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(46,'顶级分类页-分类ID5-楼层左侧广告',700,342,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(47,'顶级分类页-分类ID5-楼层右侧广告',279,342,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(48,'顶级分类页-分类ID6-楼层左侧广告',700,342,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(49,'顶级分类页-分类ID6-楼层右侧广告',279,342,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(50,'顶级分类页-分类ID1-最新促销活动-图片',292,132,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(51,'顶级分类页-分类ID1-最新促销活动-文字',1,1,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(52,'首页-导航菜单-促销活动',1,1,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(61,'触屏首页-轮播广告',540,163,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(62,'触屏首页-导航图标',92,92,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(63,'触屏首页-分类ID1-图片广告',297,246,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(64,'触屏首页-分类ID2-图片广告',297,246,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(65,'触屏首页-分类ID3-图片广告',297,246,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(66,'触屏首页-底部导航',1,1,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(67,'触屏首页-版权信息',1,1,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(68,'触屏首页-公司地址',1,1,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(69,'触屏首页-400电话',1,1,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(70,'体验馆-顶部通栏广告',980,60,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(71,'体验馆-ID2-flash广告',687,301,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(72,'搜索页-通栏广告',980,60,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(73,'搜索页-左侧广告',210,271,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(74,'搜索页-flash广告',600,348,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(75,'专题页-活动广告',456,206,'','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'),(76,'体验馆-ID3-flash广告',687,301,'体验馆-ID2-flash广告','<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
/*!40000 ALTER TABLE `ecs_ad_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_admin_action`
--

DROP TABLE IF EXISTS `ecs_admin_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_admin_action`
--

LOCK TABLES `ecs_admin_action` WRITE;
/*!40000 ALTER TABLE `ecs_admin_action` DISABLE KEYS */;
INSERT INTO `ecs_admin_action` VALUES (1,0,'goods',''),(2,0,'cms_manage',''),(3,0,'users_manage',''),(4,0,'priv_manage',''),(5,0,'sys_manage',''),(6,0,'order_manage',''),(7,0,'promotion',''),(8,0,'email',''),(9,0,'templates_manage',''),(10,0,'db_manage',''),(11,0,'sms_manage',''),(21,1,'goods_manage',''),(22,1,'remove_back',''),(23,1,'cat_manage',''),(24,1,'cat_drop','cat_manage'),(25,1,'attr_manage',''),(26,1,'brand_manage',''),(27,1,'comment_priv',''),(84,1,'tag_manage',''),(30,2,'article_cat',''),(31,2,'article_manage',''),(32,2,'shopinfo_manage',''),(33,2,'shophelp_manage',''),(34,2,'vote_priv',''),(35,7,'topic_manage',''),(74,4,'template_manage',''),(73,3,'feedback_priv',''),(38,3,'integrate_users',''),(39,3,'sync_users','integrate_users'),(40,3,'users_manage',''),(41,3,'users_drop','users_manage'),(42,3,'user_rank',''),(85,3,'surplus_manage','account_manage'),(43,4,'admin_manage',''),(44,4,'admin_drop','admin_manage'),(45,4,'allot_priv','admin_manage'),(46,4,'logs_manage',''),(47,4,'logs_drop','logs_manage'),(48,5,'shop_config',''),(49,5,'ship_manage',''),(50,5,'payment',''),(51,5,'shiparea_manage',''),(52,5,'area_manage',''),(53,6,'order_os_edit',''),(54,6,'order_ps_edit','order_os_edit'),(55,6,'order_ss_edit','order_os_edit'),(56,6,'order_edit','order_os_edit'),(57,6,'order_view',''),(58,6,'order_view_finished',''),(59,6,'repay_manage',''),(60,6,'booking',''),(61,6,'sale_order_stats',''),(62,6,'client_flow_stats',''),(78,7,'snatch_manage',''),(83,7,'ad_manage',''),(80,7,'gift_manage',''),(81,7,'card_manage',''),(70,1,'goods_type',''),(82,7,'pack',''),(79,7,'bonus_manage',''),(75,5,'friendlink',''),(76,5,'db_backup',''),(77,5,'db_renew','db_backup'),(86,4,'agency_manage',''),(87,3,'account_manage',''),(88,5,'flash_manage',''),(89,5,'navigator',''),(90,7,'auction',''),(91,7,'group_by',''),(92,7,'favourable',''),(93,7,'whole_sale',''),(94,1,'goods_auto',''),(95,2,'article_auto',''),(96,5,'cron',''),(97,5,'affiliate',''),(98,5,'affiliate_ck',''),(99,8,'attention_list',''),(100,8,'email_list',''),(101,8,'magazine_list',''),(102,8,'view_sendlist',''),(103,1,'virualcard',''),(104,7,'package_manage',''),(105,1,'picture_batch',''),(106,1,'goods_export',''),(107,1,'goods_batch',''),(108,1,'gen_goods_script',''),(109,5,'sitemap',''),(110,5,'file_priv',''),(111,5,'file_check',''),(112,9,'template_select',''),(113,9,'template_setup',''),(114,9,'library_manage',''),(115,9,'lang_edit',''),(116,9,'backup_setting',''),(117,9,'mail_template',''),(118,10,'db_backup',''),(119,10,'db_renew',''),(120,10,'db_optimize',''),(121,10,'sql_query',''),(122,10,'convert',''),(124,11,'sms_send',''),(128,7,'exchange_goods',''),(129,6,'delivery_view',''),(130,6,'back_view',''),(131,5,'reg_fields',''),(132,5,'shop_authorized',''),(133,5,'webcollect_manage',''),(134,4,'suppliers_manage',''),(135,4,'role_manage','');
/*!40000 ALTER TABLE `ecs_admin_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_admin_log`
--

DROP TABLE IF EXISTS `ecs_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=865 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_admin_log`
--

LOCK TABLES `ecs_admin_log` WRITE;
/*!40000 ALTER TABLE `ecs_admin_log` DISABLE KEYS */;
INSERT INTO `ecs_admin_log` VALUES (1,1385534865,1,'编辑商店设置: ','127.0.0.1'),(2,1385535239,1,'添加商品分类: 家具','127.0.0.1'),(3,1385535247,1,'添加商品分类: 建材','127.0.0.1'),(4,1385535262,1,'添加商品分类: 家居家饰','127.0.0.1'),(5,1385535280,1,'添加商品分类: 卧室','127.0.0.1'),(6,1385535289,1,'添加商品分类: 客厅','127.0.0.1'),(7,1385535296,1,'编辑商品分类: 客厅','127.0.0.1'),(8,1385535309,1,'添加商品分类: 餐厅','127.0.0.1'),(9,1385535316,1,'添加商品分类: 书房','127.0.0.1'),(10,1385535332,1,'添加商品分类: 儿童房','127.0.0.1'),(11,1385535342,1,'添加商品分类: 户外家具','127.0.0.1'),(12,1385535351,1,'添加商品分类: 定制家具','127.0.0.1'),(13,1385535367,1,'添加商品分类: 灯饰照明','127.0.0.1'),(14,1385535375,1,'添加商品分类: 厨房用品','127.0.0.1'),(15,1385535388,1,'添加商品分类: 卫浴用品','127.0.0.1'),(16,1385535396,1,'添加商品分类: 五金电器','127.0.0.1'),(17,1385535405,1,'添加商品分类: 墙地面','127.0.0.1'),(18,1385535424,1,'添加商品分类: 五金工具','127.0.0.1'),(19,1385535434,1,'添加商品分类: 床上用品','127.0.0.1'),(20,1385535443,1,'添加商品分类: 居家日用','127.0.0.1'),(21,1385535453,1,'添加商品分类: 布艺织物','127.0.0.1'),(22,1385535460,1,'添加商品分类: 家居饰品','127.0.0.1'),(23,1385535469,1,'添加商品分类: 厨房餐饮','127.0.0.1'),(24,1385535494,1,'添加商品分类: 生活电器','127.0.0.1'),(25,1385535520,1,'添加商品分类: 床','127.0.0.1'),(26,1385535529,1,'添加商品分类: 床垫','127.0.0.1'),(27,1385535541,1,'添加商品分类: 床头柜','127.0.0.1'),(28,1385535551,1,'添加商品分类: 沙发','127.0.0.1'),(29,1385535562,1,'添加商品分类: 茶几/边桌','127.0.0.1'),(30,1385535574,1,'添加商品分类: 电视柜','127.0.0.1'),(31,1385535587,1,'添加商品分类: 餐桌','127.0.0.1'),(32,1385535597,1,'添加商品分类: 餐椅','127.0.0.1'),(33,1385535605,1,'添加商品分类: 餐边柜','127.0.0.1'),(34,1385535615,1,'添加商品分类: 书桌/工作台','127.0.0.1'),(35,1385535628,1,'添加商品分类: 书柜/书架','127.0.0.1'),(36,1385535639,1,'添加商品分类: 书椅/转椅','127.0.0.1'),(37,1385535653,1,'添加商品分类: 儿童床','127.0.0.1'),(38,1385535666,1,'添加商品分类: 儿童床头柜','127.0.0.1'),(39,1385535676,1,'添加商品分类: 儿童衣柜','127.0.0.1'),(40,1385535686,1,'添加商品分类: 吊篮/吊椅','127.0.0.1'),(41,1385535701,1,'添加商品分类: 休闲桌','127.0.0.1'),(42,1385535710,1,'添加商品分类: 休闲椅','127.0.0.1'),(43,1385535727,1,'添加商品分类: 定制橱柜','127.0.0.1'),(44,1385535742,1,'添加商品分类: 定制书柜/书台','127.0.0.1'),(45,1385535891,1,'编辑商店设置: ','127.0.0.1'),(46,1385535919,1,'编辑商店设置: ','127.0.0.1'),(47,1385536232,1,'添加商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(48,1385536310,1,'添加商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','127.0.0.1'),(49,1385536398,1,'添加商品: 欧式田园	粉红玫瑰立体雕花排骨架床','127.0.0.1'),(50,1385536464,1,'添加商品: 法式风格	1.8米皮拉扣床 PU发泡雕花床','127.0.0.1'),(51,1385536549,1,'添加商品: 地中海风格 美国进口白杨木双人床','127.0.0.1'),(52,1385536616,1,'添加商品: 现代风格	1.8米软床 头层牛皮床','127.0.0.1'),(53,1385536684,1,'添加文章分类: 关于美乐乐','127.0.0.1'),(54,1385536713,1,'添加文章分类: 新手指南','127.0.0.1'),(55,1385536723,1,'添加文章分类: 配送安装','127.0.0.1'),(56,1385536739,1,'添加文章分类: 售后服务','127.0.0.1'),(57,1385536747,1,'添加文章分类: 购物保障','127.0.0.1'),(58,1385536786,1,'添加文章: 公司简介','127.0.0.1'),(59,1385536801,1,'添加文章: 体验馆','127.0.0.1'),(60,1385536815,1,'添加文章: 诚聘英才','127.0.0.1'),(61,1385536865,1,'添加文章: 注册新用户','127.0.0.1'),(62,1385536874,1,'添加文章: 订购家具流程','127.0.0.1'),(63,1385536882,1,'添加文章: 体验馆购买指导','127.0.0.1'),(64,1385536897,1,'添加文章: 收货指南','127.0.0.1'),(65,1385536904,1,'添加文章: 体验馆服务费','127.0.0.1'),(66,1385536912,1,'添加文章: 物流配送','127.0.0.1'),(67,1385536923,1,'添加文章: 45天无理由退换货','127.0.0.1'),(68,1385536930,1,'添加文章: 如何申请退款','127.0.0.1'),(69,1385536939,1,'添加文章: 维修补件说明','127.0.0.1'),(70,1385536952,1,'添加文章: 正品保证','127.0.0.1'),(71,1385536960,1,'添加文章: 注册协议','127.0.0.1'),(72,1385536968,1,'添加文章: 隐私保护','127.0.0.1'),(73,1385537035,1,'删除友情链接: ','127.0.0.1'),(74,1385537037,1,'删除友情链接: ','127.0.0.1'),(75,1385537039,1,'删除友情链接: ','127.0.0.1'),(76,1385537051,1,'添加友情链接: 床图片','127.0.0.1'),(77,1385537067,1,'添加友情链接: 衣帽间装修效果图','127.0.0.1'),(78,1385537081,1,'添加友情链接: 福州家居网','127.0.0.1'),(79,1385550814,1,'编辑商店设置: ','127.0.0.1'),(80,1385551154,1,'添加广告位置: 首页-顶部通栏广告','127.0.0.1'),(81,1385551168,1,'添加广告: 首页-顶部通栏广告','127.0.0.1'),(82,1385555332,1,'编辑商品分类: 床','127.0.0.1'),(83,1385555342,1,'编辑商品分类: 床头柜','127.0.0.1'),(84,1385555350,1,'编辑商品分类: 床垫','127.0.0.1'),(85,1385556356,1,'编辑品牌管理: 凯撒豪庭','127.0.0.1'),(86,1385556363,1,'添加品牌管理: 韩菲尔','127.0.0.1'),(87,1385556371,1,'添加品牌管理: 蒂美悦','127.0.0.1'),(88,1385556380,1,'添加品牌管理: 卡富亚','127.0.0.1'),(89,1385556396,1,'编辑商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','127.0.0.1'),(90,1385556405,1,'编辑商品: 欧式田园	粉红玫瑰立体雕花排骨架床','127.0.0.1'),(91,1385556412,1,'编辑商品: 法式风格	1.8米皮拉扣床 PU发泡雕花床','127.0.0.1'),(92,1385560003,1,'添加广告位置: 首页-网站公告顶部广告','127.0.0.1'),(93,1385560014,1,'添加广告: 首页-网站公告顶部广告','127.0.0.1'),(94,1385560394,1,'添加文章分类: 网站公告','127.0.0.1'),(95,1385560416,1,'添加文章: 美乐乐第262家体验馆空降古都许','127.0.0.1'),(96,1385560443,1,'添加文章: 中原大地再迎新馆！美乐乐第265','127.0.0.1'),(97,1385560453,1,'添加文章: 第266家体验馆花落牡丹江！','127.0.0.1'),(98,1385561315,1,'编辑商店设置: ','127.0.0.1'),(99,1385561485,1,'添加广告位置: 首页-团购广告','127.0.0.1'),(100,1385561496,1,'添加广告: 首页-团购广告','127.0.0.1'),(101,1385561641,1,'添加团购商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','127.0.0.1'),(102,1385561665,1,'添加团购商品: 地中海风格 美国进口白杨木双人床','127.0.0.1'),(103,1385561867,1,'编辑团购商品: 地中海风格 美国进口白杨木双人床[2]','127.0.0.1'),(104,1385561884,1,'编辑团购商品: 地中海风格 美国进口白杨木双人床[2]','127.0.0.1'),(105,1385561907,1,'编辑广告: 首页-团购广告','127.0.0.1'),(106,1385561938,1,'编辑商店设置: ','127.0.0.1'),(107,1385562421,1,'编辑商品: 现代风格	1.8米软床 头层牛皮床','127.0.0.1'),(108,1385562438,1,'编辑商品: 地中海风格 美国进口白杨木双人床','127.0.0.1'),(109,1385562457,1,'编辑商品: 法式风格	1.8米皮拉扣床 PU发泡雕花床','127.0.0.1'),(110,1385562948,1,'添加广告位置: 首页-新品广告','127.0.0.1'),(111,1385562976,1,'添加广告: 首页-新品广告1','127.0.0.1'),(112,1385562986,1,'添加广告: 首页-新品广告2','127.0.0.1'),(113,1385562997,1,'添加广告: 首页-新品广告3','127.0.0.1'),(114,1385563008,1,'添加广告: 首页-新品广告4','127.0.0.1'),(115,1385563020,1,'添加广告: 首页-新品广告5','127.0.0.1'),(116,1385563031,1,'添加广告: 首页-新品广告6','127.0.0.1'),(117,1385563042,1,'添加广告: 首页-新品广告7','127.0.0.1'),(118,1385563061,1,'添加广告: 首页-新品广告8','127.0.0.1'),(119,1385563775,1,'添加广告位置: 首页-精品广告','127.0.0.1'),(120,1385563785,1,'添加广告: 首页-精品广告1','127.0.0.1'),(121,1385563796,1,'添加广告: 首页-精品广告2','127.0.0.1'),(122,1385563806,1,'添加广告: 首页-精品广告3','127.0.0.1'),(123,1385563817,1,'添加广告: 首页-精品广告4','127.0.0.1'),(124,1385563826,1,'添加广告: 首页-精品广告5','127.0.0.1'),(125,1385563836,1,'添加广告: 首页-精品广告6','127.0.0.1'),(126,1385563849,1,'添加广告: 首页-精品广告7','127.0.0.1'),(127,1385563862,1,'添加广告: 首页-精品广告8','127.0.0.1'),(128,1385565187,1,'添加广告位置: 首页-分类ID1-左侧广告','127.0.0.1'),(129,1385565216,1,'添加广告: 首页-分类ID1-左侧广告','127.0.0.1'),(130,1385565228,1,'编辑广告位置: 202','127.0.0.1'),(131,1385565287,1,'添加广告位置: 首页-分类ID1-中间广告','127.0.0.1'),(132,1385565301,1,'添加广告: 首页-分类ID1-中间广告1','127.0.0.1'),(133,1385565313,1,'添加广告: 首页-分类ID1-中间广告2','127.0.0.1'),(134,1385565325,1,'添加广告: 首页-分类ID1-中间广告3','127.0.0.1'),(135,1385565365,1,'添加广告位置: 首页-分类ID1-右侧广告','127.0.0.1'),(136,1385565388,1,'添加广告: 首页-分类ID1-右侧广告','127.0.0.1'),(137,1385565433,1,'添加广告位置: 首页-分类ID1-底部广告','127.0.0.1'),(138,1385565513,1,'添加广告: 首页-分类ID1-底部广告1','127.0.0.1'),(139,1385565524,1,'添加广告: 首页-分类ID1-底部广告2','127.0.0.1'),(140,1385565535,1,'添加广告: 首页-分类ID1-底部广告3','127.0.0.1'),(141,1385565546,1,'添加广告: 首页-分类ID1-底部广告4','127.0.0.1'),(142,1385565566,1,'添加广告: 首页-分类ID1-底部广告5','127.0.0.1'),(143,1385567155,1,'添加广告位置: 首页-热门品牌','127.0.0.1'),(144,1385567264,1,'添加广告: 凯撒豪庭','127.0.0.1'),(145,1385567283,1,'添加广告: 韩菲尔','127.0.0.1'),(146,1385567298,1,'添加广告: 蒂美悦','127.0.0.1'),(147,1385567321,1,'添加广告: 卡富亚','127.0.0.1'),(148,1385567338,1,'添加广告: 青春城堡','127.0.0.1'),(149,1385567354,1,'添加广告: 林中鹰','127.0.0.1'),(150,1385567377,1,'添加广告: TCL','127.0.0.1'),(151,1385567506,1,'添加广告: 西门子','127.0.0.1'),(152,1385567523,1,'添加广告: 贝尔地板','127.0.0.1'),(153,1385567539,1,'添加广告: 艾玛诗','127.0.0.1'),(154,1385567557,1,'添加广告: 梦娜丝','127.0.0.1'),(155,1385567570,1,'添加广告: 赛朵','127.0.0.1'),(156,1385567592,1,'添加广告: 优曼家纺','127.0.0.1'),(157,1385567609,1,'添加广告: 唯萨','127.0.0.1'),(158,1385567635,1,'编辑广告位置: 首页-热门品牌','127.0.0.1'),(159,1385567647,1,'编辑广告位置: 首页-热门品牌','127.0.0.1'),(160,1385619321,1,'添加文章分类: 晒家达人','127.0.0.1'),(161,1385619408,1,'添加文章分类: 家居资讯','127.0.0.1'),(162,1385619509,1,'添加文章: 【小苏的家】阳台改榻榻米，仅2.6w！五个月的装修长跑！','127.0.0.1'),(163,1385619526,1,'添加文章: ❤95㎡简约婚房❤拱形吊顶+欧式家具（基装+主材+家具清单','127.0.0.1'),(164,1385619539,1,'添加文章: 【主妇逆袭】简欧路上，7万123平装修中的零零碎碎（光荣','127.0.0.1'),(165,1385619554,1,'添加文章: 高端大气上档次的现代简约装修 美爆了！','127.0.0.1'),(166,1385619573,1,'添加文章: 单身女汉子独爱kitty猫儿，单身族居家必备神器！','127.0.0.1'),(167,1385619598,1,'添加文章: 19万精装广州135㎡普罗旺斯浪漫地中海三居','127.0.0.1'),(168,1385619618,1,'添加文章: 7W换回一个美丽婚房，阳台变身休闲区，红红火火构建魅力','127.0.0.1'),(169,1385619637,1,'添加文章: <76㎡小二居多图实拍细节>小清新文艺范儿，十足的地中','127.0.0.1'),(170,1385620453,1,'添加文章: 75平现代简约风格 白+蓝色','127.0.0.1'),(171,1385620467,1,'添加文章: 85后艺术温馨家 简单中的清新','127.0.0.1'),(172,1385620493,1,'添加文章: 35平超精致小窝 小空间大梦想','127.0.0.1'),(173,1385620506,1,'添加文章: 网友详谈二手房翻修','127.0.0.1'),(174,1385620520,1,'添加文章: 70平极致浪漫公寓 我的浪漫满','127.0.0.1'),(175,1385620533,1,'添加文章: 7万装60平小婚房 简约温馨气','127.0.0.1'),(176,1385620546,1,'添加文章: 8万半包装的95平温暖简约3居','127.0.0.1'),(177,1385620557,1,'添加文章: 85后感谢设计师 89平浪漫清新','127.0.0.1'),(178,1385628126,1,'添加广告位置: 分类频道页-分类ID4-导航促销广告','127.0.0.1'),(179,1385628160,1,'添加广告: 新品家具，极速抢“鲜”','127.0.0.1'),(180,1385628177,1,'添加广告: 特价商品，抄底特卖专场!','127.0.0.1'),(181,1385629079,1,'添加广告位置: 分类频道页-分类ID4-轮播广告','127.0.0.1'),(182,1385629104,1,'添加广告: 灯饰钜惠！我和美美的约定','127.0.0.1'),(183,1385629143,1,'添加广告: 6周年卫浴特卖','127.0.0.1'),(184,1385629185,1,'添加广告: 8大最受欢迎地板','127.0.0.1'),(185,1385629203,1,'添加广告: 美乐乐6周年厨卫盛宴','127.0.0.1'),(186,1385629219,1,'添加广告: 全新美乐乐Iphone客户端！','127.0.0.1'),(187,1385629701,1,'编辑广告位置: 分类频道页-分类ID1-轮播广告','127.0.0.1'),(188,1385637030,1,'添加广告位置: 分类频道页-分类ID4-楼层左侧广告','127.0.0.1'),(189,1385637044,1,'添加广告: 分类频道页-分类ID4-楼层左侧广告1','127.0.0.1'),(190,1385637055,1,'添加广告: 分类频道页-分类ID4-楼层左侧广告2','127.0.0.1'),(191,1385639838,1,'添加广告位置: 分类频道页-分类ID4-楼层底部广告','127.0.0.1'),(192,1385639850,1,'添加广告: 分类频道页-分类ID4-楼层底部广告1','127.0.0.1'),(193,1385639861,1,'添加广告: 分类频道页-分类ID4-楼层底部广告2','127.0.0.1'),(194,1385639872,1,'添加广告: 分类频道页-分类ID4-楼层底部广告3','127.0.0.1'),(195,1385639882,1,'添加广告: 分类频道页-分类ID4-楼层底部广告4','127.0.0.1'),(196,1385641696,1,'添加广告位置: 分类频道页-分类ID1-最新促销活动-图片','127.0.0.1'),(197,1385641707,1,'添加广告: 分类频道页-分类ID1-最新促销活动-图片','127.0.0.1'),(198,1385641733,1,'添加广告位置: 分类频道页-分类ID1-最新促销活动-文字','127.0.0.1'),(199,1385641751,1,'添加广告: 现货清仓！半卖半送!','127.0.0.1'),(200,1385641773,1,'添加广告: 终极好家具，进口全实木——低至6.8折，我和我的小','127.0.0.1'),(201,1385641793,1,'添加广告: 打造儿童家居新天地','127.0.0.1'),(202,1385641809,1,'添加广告: 美乐乐/SKG6周年狂欢购！','127.0.0.1'),(203,1385641823,1,'添加广告: SKG引爆炸弹价，全场包邮！','127.0.0.1'),(204,1385652639,1,'编辑商品分类: 卧室','127.0.0.1'),(205,1385652882,1,'添加属性: 家装风格','127.0.0.1'),(206,1385652919,1,'添加属性: 材质','127.0.0.1'),(207,1385652949,1,'添加属性: 床类型','127.0.0.1'),(208,1385652969,1,'编辑商品类型: 床','127.0.0.1'),(209,1385652981,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(210,1385653016,1,'编辑商品分类: 卧室','127.0.0.1'),(211,1385656822,1,'编辑商店设置: ','127.0.0.1'),(212,1385657269,1,'编辑商店设置: ','127.0.0.1'),(213,1385711780,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(214,1385713071,1,'添加属性: 类&emsp;型','127.0.0.1'),(215,1385713389,1,'添加属性: 内&emsp;径','127.0.0.1'),(216,1385713424,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(217,1385714694,1,'编辑属性: 内&emsp;径','127.0.0.1'),(218,1385714716,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(219,1385731441,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(220,1385731459,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(221,1385739210,1,'添加广告位置: 团购页-通栏广告','127.0.0.1'),(222,1385739221,1,'添加广告: 团购页-通栏广告','127.0.0.1'),(223,1385739966,1,'添加团购商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(224,1385740002,1,'添加团购商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','127.0.0.1'),(225,1385740037,1,'添加团购商品: 欧式田园	粉红玫瑰立体雕花排骨架床','127.0.0.1'),(226,1385740067,1,'添加团购商品: 地中海风格 美国进口白杨木双人床','127.0.0.1'),(227,1385740570,1,'编辑团购商品: 地中海风格 美国进口白杨木双人床[4]','127.0.0.1'),(228,1385740693,1,'编辑团购商品: 美式古典	双面描金雕花排骨架床[1]','127.0.0.1'),(229,1385740711,1,'编辑团购商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床[2]','127.0.0.1'),(230,1385740788,1,'编辑团购商品: 美式古典	双面描金雕花排骨架床[1]','127.0.0.1'),(231,1385740802,1,'编辑团购商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床[2]','127.0.0.1'),(232,1385740813,1,'编辑团购商品: 欧式田园	粉红玫瑰立体雕花排骨架床[3]','127.0.0.1'),(233,1385740824,1,'编辑团购商品: 地中海风格 美国进口白杨木双人床[4]','127.0.0.1'),(234,1385741049,1,'编辑团购商品: 美式古典	双面描金雕花排骨架床[1]','127.0.0.1'),(235,1385741056,1,'编辑团购商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床[2]','127.0.0.1'),(236,1385741063,1,'编辑团购商品: 欧式田园	粉红玫瑰立体雕花排骨架床[3]','127.0.0.1'),(237,1385741071,1,'编辑团购商品: 地中海风格 美国进口白杨木双人床[4]','127.0.0.1'),(238,1385742925,1,'编辑团购商品: 美式古典	双面描金雕花排骨架床[1]','127.0.0.1'),(239,1385742933,1,'编辑团购商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床[2]','127.0.0.1'),(240,1385784016,1,'安装支付方式: 支付宝','127.0.0.1'),(241,1385784024,1,'安装支付方式: 银行汇款/转帐','127.0.0.1'),(242,1385784032,1,'安装配送方式: 顺丰速运','127.0.0.1'),(243,1385784038,1,'添加配送区域: 中国','127.0.0.1'),(244,1385807699,1,'添加广告位置: 文章页-通栏广告','127.0.0.1'),(245,1385807709,1,'添加广告: 文章页-通栏广告','127.0.0.1'),(246,1385812458,1,'编辑广告位置: 文章页-通栏广告','127.0.0.1'),(247,1385812494,1,'添加广告位置: 文章页-右侧广告','127.0.0.1'),(248,1385812505,1,'添加广告: 文章页-右侧广告','127.0.0.1'),(249,1385813282,1,'编辑文章: 75平现代简约风格 白+蓝色','127.0.0.1'),(250,1385817893,1,'编辑文章: 75平现代简约风格 白+蓝色','127.0.0.1'),(251,1385817936,1,'编辑文章: 75平现代简约风格 白+蓝色','127.0.0.1'),(252,1385819386,1,'编辑文章: 8万半包装的95平温暖简约3居','127.0.0.1'),(253,1385819392,1,'编辑文章: 85后感谢设计师 89平浪漫清新','127.0.0.1'),(254,1385821836,1,'编辑品牌管理: 凯撒豪庭','127.0.0.1'),(255,1385821846,1,'编辑品牌管理: 韩菲尔','127.0.0.1'),(256,1385821871,1,'编辑品牌管理: 蒂美悦','127.0.0.1'),(257,1385821882,1,'编辑品牌管理: 卡富亚','127.0.0.1'),(258,1385899236,1,'添加文章分类: 秀家','127.0.0.1'),(259,1385901128,1,'添加广告位置: 秀家-左侧广告','127.0.0.1'),(260,1385901141,1,'添加广告: 秀家-左侧广告','127.0.0.1'),(261,1385901314,1,'添加广告位置: 秀家-本月奖品','127.0.0.1'),(262,1385901421,1,'添加广告: PTC陶瓷暖风机 ¥369.00','127.0.0.1'),(263,1385901457,1,'添加广告: 爱丽丝床品四件套 ¥299.00','127.0.0.1'),(264,1385901485,1,'添加广告: 紫色水纹毛巾被 ¥99.00','127.0.0.1'),(265,1385901528,1,'添加广告: 圆形珍珠相框 ¥28.00','127.0.0.1'),(266,1385901566,1,'编辑广告位置: 秀家-本月奖品','127.0.0.1'),(267,1385902046,1,'添加广告位置: 秀家-热门分类','127.0.0.1'),(268,1385902100,1,'删除广告位置: ','127.0.0.1'),(269,1385902207,1,'编辑商品分类: 书房','127.0.0.1'),(270,1385902217,1,'编辑商品分类: 床','127.0.0.1'),(271,1385902227,1,'编辑商品分类: 餐桌','127.0.0.1'),(272,1385902570,1,'添加文章: 秀家1','127.0.0.1'),(273,1385902590,1,'添加文章: 秀家2','127.0.0.1'),(274,1385902601,1,'添加文章: 秀家3','127.0.0.1'),(275,1385902611,1,'添加文章: 秀家4','127.0.0.1'),(276,1385902622,1,'添加文章: 秀家5','127.0.0.1'),(277,1385902631,1,'添加文章: 秀家6','127.0.0.1'),(278,1385908434,1,'编辑文章: 秀家6','127.0.0.1'),(279,1385909803,1,'编辑文章: 秀家6','127.0.0.1'),(280,1385912669,1,'添加广告位置: 特惠套装页-顶部广告1','127.0.0.1'),(281,1385912682,1,'添加广告: 特惠套装页-顶部广告1','127.0.0.1'),(282,1385912703,1,'添加广告位置: 特惠套装页-顶部广告2','127.0.0.1'),(283,1385912717,1,'添加广告: 特惠套装页-顶部广告2','127.0.0.1'),(284,1385912756,1,'编辑广告位置: 特惠套装页-顶部广告2','127.0.0.1'),(285,1385912759,1,'编辑广告位置: 特惠套装页-顶部广告1','127.0.0.1'),(286,1385972127,1,'添加广告位置: 首页-顶部促销广告','127.0.0.1'),(287,1385972141,1,'添加广告: 首页-顶部促销广告','127.0.0.1'),(288,1385972168,1,'编辑广告位置: 首页-顶部促销广告','127.0.0.1'),(289,1385973765,1,'添加广告位置: 首页-导航菜单-分类ID1-推荐品牌','127.0.0.1'),(290,1385973845,1,'添加广告: 首页-导航菜单-分类ID1-推荐品牌1','127.0.0.1'),(291,1385973862,1,'添加广告: 首页-导航菜单-分类ID1-推荐品牌2','127.0.0.1'),(292,1385973873,1,'添加广告: 首页-导航菜单-分类ID1-推荐品牌3','127.0.0.1'),(293,1385973884,1,'添加广告: 首页-导航菜单-分类ID1-推荐品牌4','127.0.0.1'),(294,1385973893,1,'编辑广告: 首页-导航菜单-分类ID1-推荐品牌1','127.0.0.1'),(295,1385984993,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(296,1385985008,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(297,1385990354,1,'添加广告位置: 商品页-顶部通栏广告','127.0.0.1'),(298,1385990367,1,'添加广告: 商品页-顶部通栏广告','127.0.0.1'),(299,1385990419,1,'编辑广告: 首页-顶部通栏广告','127.0.0.1'),(300,1385990429,1,'编辑广告位置: 商品页-顶部通栏广告','127.0.0.1'),(301,1385992782,1,'编辑操作日志: ','127.0.0.1'),(302,1385992859,1,'编辑操作日志: ','127.0.0.1'),(303,1385993039,1,'编辑用户评论: 回复','127.0.0.1'),(304,1385994692,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(305,1385994842,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(306,1385999070,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(307,1385999545,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(308,1385999988,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(309,1386057078,1,'编辑操作日志: ','127.0.0.1'),(310,1386058299,1,'还原数据库备份: 备份时间2013-12-03 08:09:29','127.0.0.1'),(311,1386059295,1,'添加超值礼包: 客厅-功能沙发客厅5件套（1+2+3+1茶几+1电视柜）','127.0.0.1'),(312,1386062940,1,'添加超值礼包: 餐厅','127.0.0.1'),(313,1386062970,1,'编辑超值礼包: 餐厅-6件套（1桌+4椅+1吊灯）','127.0.0.1'),(314,1386063396,1,'添加超值礼包: 卧房-3套装（1.5米床+1床头柜+1吸顶灯）','127.0.0.1'),(315,1386063739,1,'添加超值礼包: 客厅-3套装（1转角沙发+1吸顶灯+1茶几）','127.0.0.1'),(316,1386066235,1,'添加超值礼包: 客厅-时尚经典 带储物功能真皮转角沙发(1+3+左贵妃)','127.0.0.1'),(317,1386074915,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(318,1386078563,1,'编辑商品: 欧式田园	粉红玫瑰立体雕花排骨架床','127.0.0.1'),(319,1386081282,1,'编辑广告位置: 首页-分类ID1-左侧广告','127.0.0.1'),(320,1386081294,1,'添加广告位置: 首页-分类ID2-左侧广告','127.0.0.1'),(321,1386081300,1,'编辑广告位置: 首页-分类ID1-中间广告','127.0.0.1'),(322,1386081308,1,'添加广告位置: 首页-分类ID2-中间广告','127.0.0.1'),(323,1386081314,1,'编辑广告位置: 首页-分类ID1-右侧广告','127.0.0.1'),(324,1386081322,1,'添加广告位置: 首页-分类ID2-右侧广告','127.0.0.1'),(325,1386081329,1,'编辑广告位置: 首页-分类ID1-底部广告','127.0.0.1'),(326,1386081341,1,'添加广告位置: 首页-分类ID2-底部广告','127.0.0.1'),(327,1386081456,1,'编辑广告位置: 202','127.0.0.1'),(328,1386081459,1,'编辑广告位置: 330','127.0.0.1'),(329,1386081467,1,'编辑广告位置: 721','127.0.0.1'),(330,1386081470,1,'编辑广告位置: 330','127.0.0.1'),(331,1386081482,1,'编辑广告位置: 202','127.0.0.1'),(332,1386081485,1,'编辑广告位置: 330','127.0.0.1'),(333,1386081493,1,'编辑广告位置: 202','127.0.0.1'),(334,1386081496,1,'编辑广告位置: 240','127.0.0.1'),(335,1386081502,1,'编辑广告位置: 首页-分类ID2-左侧广告','127.0.0.1'),(336,1386081510,1,'添加广告位置: 首页-分类ID3-左侧广告','127.0.0.1'),(337,1386081516,1,'编辑广告位置: 首页-分类ID2-中间广告','127.0.0.1'),(338,1386081524,1,'添加广告位置: 首页-分类ID3-中间广告','127.0.0.1'),(339,1386081530,1,'编辑广告位置: 首页-分类ID2-右侧广告','127.0.0.1'),(340,1386081538,1,'添加广告位置: 首页-分类ID3-右侧广告','127.0.0.1'),(341,1386081546,1,'编辑广告位置: 首页-分类ID2-底部广告','127.0.0.1'),(342,1386081556,1,'添加广告位置: 首页-分类ID3-底部广告','127.0.0.1'),(343,1386081569,1,'编辑广告位置: 202','127.0.0.1'),(344,1386081572,1,'编辑广告位置: 330','127.0.0.1'),(345,1386081578,1,'编辑广告位置: 330','127.0.0.1'),(346,1386081579,1,'编辑广告位置: 330','127.0.0.1'),(347,1386081580,1,'编辑广告位置: 330','127.0.0.1'),(348,1386081584,1,'编辑广告位置: 240','127.0.0.1'),(349,1386081587,1,'编辑广告位置: 240','127.0.0.1'),(350,1386081595,1,'编辑广告位置: 721','127.0.0.1'),(351,1386081596,1,'编辑广告位置: 721','127.0.0.1'),(352,1386081599,1,'编辑广告位置: 202','127.0.0.1'),(353,1386081601,1,'编辑广告位置: 202','127.0.0.1'),(354,1386081602,1,'编辑广告位置: 202','127.0.0.1'),(355,1386081712,1,'编辑广告位置: 首页-分类ID2-左侧广告','127.0.0.1'),(356,1386081752,1,'添加广告: 首页-分类ID2-左侧广告','127.0.0.1'),(357,1386081757,1,'编辑广告位置: 首页-分类ID2-中间广告','127.0.0.1'),(358,1386081778,1,'添加广告: 首页-分类ID2-中间广告1','127.0.0.1'),(359,1386081791,1,'添加广告: 首页-分类ID2-中间广告2','127.0.0.1'),(360,1386081812,1,'添加广告: 首页-分类ID2-中间广告3','127.0.0.1'),(361,1386081820,1,'编辑广告位置: 首页-分类ID2-右侧广告','127.0.0.1'),(362,1386081835,1,'添加广告: 首页-分类ID2-右侧广告','127.0.0.1'),(363,1386081945,1,'编辑广告位置: 首页-分类ID2-底部广告','127.0.0.1'),(364,1386081958,1,'添加广告: 首页-分类ID2-底部广告1','127.0.0.1'),(365,1386081970,1,'添加广告: 首页-分类ID2-底部广告2','127.0.0.1'),(366,1386081981,1,'添加广告: 首页-分类ID2-底部广告3','127.0.0.1'),(367,1386081994,1,'添加广告: 首页-分类ID2-底部广告4','127.0.0.1'),(368,1386082009,1,'添加广告: 首页-分类ID2-底部广告5','127.0.0.1'),(369,1386082095,1,'编辑广告位置: 首页-分类ID3-左侧广告','127.0.0.1'),(370,1386082116,1,'添加广告: 首页-分类ID3-左侧广告','127.0.0.1'),(371,1386082124,1,'编辑广告位置: 首页-分类ID3-中间广告','127.0.0.1'),(372,1386082151,1,'添加广告: 首页-分类ID3-中间广告1','127.0.0.1'),(373,1386082169,1,'添加广告: 首页-分类ID3-中间广告2','127.0.0.1'),(374,1386082196,1,'添加广告: 首页-分类ID3-中间广告3','127.0.0.1'),(375,1386082202,1,'编辑广告位置: 首页-分类ID3-右侧广告','127.0.0.1'),(376,1386082215,1,'添加广告: 首页-分类ID3-右侧广告','127.0.0.1'),(377,1386082237,1,'编辑广告位置: 首页-分类ID3-底部广告','127.0.0.1'),(378,1386082271,1,'编辑广告位置: 首页-分类ID3-底部广告','127.0.0.1'),(379,1386082288,1,'添加广告: 首页-分类ID3-底部广告1','127.0.0.1'),(380,1386082302,1,'添加广告: 首页-分类ID3-底部广告2','127.0.0.1'),(381,1386082324,1,'添加广告: 首页-分类ID3-底部广告3','127.0.0.1'),(382,1386082337,1,'添加广告: 首页-分类ID3-底部广告4','127.0.0.1'),(383,1386082351,1,'添加广告: 首页-分类ID3-底部广告5','127.0.0.1'),(384,1386083114,1,'添加商品: 时尚经典 带储物功能真皮转角沙发(1+3+左贵妃)','127.0.0.1'),(385,1386083156,1,'添加商品: 奢华霸气 进口全真皮沙发套装（1+2+3）','127.0.0.1'),(386,1386083216,1,'添加商品: 清新雅致 可拆装沙发套装（1+2+3）','127.0.0.1'),(387,1386083286,1,'添加商品: 温柔海风 唯美布艺左转角沙发（1+3+左贵妃）','127.0.0.1'),(388,1386083439,1,'添加商品: 橡胶木实木餐桌椅套装（七件套）','127.0.0.1'),(389,1386083510,1,'添加商品: 餐厅6件套（1餐桌+4餐椅+1餐边柜）','127.0.0.1'),(390,1386083574,1,'添加商品: 餐厅5件套装（1.5餐台+4无扶手餐椅）','127.0.0.1'),(391,1386083649,1,'添加商品: 美式田园	实木餐厅套装（1桌+4椅）','127.0.0.1'),(392,1386084128,1,'编辑广告位置: 分类频道页-分类ID4-楼层左侧广告','127.0.0.1'),(393,1386084139,1,'添加广告位置: 分类频道页-分类ID5-楼层左侧广告','127.0.0.1'),(394,1386084220,1,'编辑广告位置: 分类频道页-分类ID4-楼层底部广告','127.0.0.1'),(395,1386084227,1,'添加广告位置: 分类频道页-分类ID5-楼层底部广告','127.0.0.1'),(396,1386084286,1,'编辑广告位置: 200','127.0.0.1'),(397,1386084289,1,'编辑广告位置: 302','127.0.0.1'),(398,1386084298,1,'编辑广告位置: 220','127.0.0.1'),(399,1386084301,1,'编辑广告位置: 180','127.0.0.1'),(400,1386084304,1,'编辑广告位置: 分类频道页-分类ID5-楼层左侧广告','127.0.0.1'),(401,1386084312,1,'添加广告位置: 分类频道页-分类ID6-楼层左侧广告','127.0.0.1'),(402,1386084326,1,'编辑广告位置: 分类频道页-分类ID5-楼层底部广告','127.0.0.1'),(403,1386084332,1,'添加广告位置: 分类频道页-分类ID6-楼层底部广告','127.0.0.1'),(404,1386084338,1,'编辑广告位置: 200','127.0.0.1'),(405,1386084340,1,'编辑广告位置: 200','127.0.0.1'),(406,1386084343,1,'编辑广告位置: 302','127.0.0.1'),(407,1386084344,1,'编辑广告位置: 302','127.0.0.1'),(408,1386084346,1,'编辑广告位置: 220','127.0.0.1'),(409,1386084347,1,'编辑广告位置: 220','127.0.0.1'),(410,1386084349,1,'编辑广告位置: 302','127.0.0.1'),(411,1386084351,1,'编辑广告位置: 180','127.0.0.1'),(412,1386084354,1,'编辑广告位置: 180','127.0.0.1'),(413,1386084572,1,'编辑广告位置: 分类频道页-分类ID5-楼层左侧广告','127.0.0.1'),(414,1386084593,1,'添加广告: 分类频道页-分类ID5-楼层左侧广告1','127.0.0.1'),(415,1386084611,1,'添加广告: 分类频道页-分类ID5-楼层左侧广告2','127.0.0.1'),(416,1386084739,1,'编辑广告位置: 分类频道页-分类ID5-楼层底部广告','127.0.0.1'),(417,1386084754,1,'添加广告: 分类频道页-分类ID5-楼层底部广告1','127.0.0.1'),(418,1386084765,1,'添加广告: 分类频道页-分类ID5-楼层底部广告2','127.0.0.1'),(419,1386084776,1,'添加广告: 分类频道页-分类ID5-楼层底部广告3','127.0.0.1'),(420,1386084793,1,'添加广告: 分类频道页-分类ID5-楼层底部广告4','127.0.0.1'),(421,1386084866,1,'编辑广告位置: 分类频道页-分类ID6-楼层左侧广告','127.0.0.1'),(422,1386084878,1,'添加广告: 分类频道页-分类ID6-楼层左侧广告1','127.0.0.1'),(423,1386084892,1,'添加广告: 分类频道页-分类ID6-楼层左侧广告2','127.0.0.1'),(424,1386084930,1,'编辑广告位置: 分类频道页-分类ID6-楼层底部广告','127.0.0.1'),(425,1386084959,1,'添加广告: 分类频道页-分类ID6-楼层底部广告1','127.0.0.1'),(426,1386084970,1,'添加广告: 分类频道页-分类ID6-楼层底部广告2','127.0.0.1'),(427,1386084981,1,'添加广告: 分类频道页-分类ID6-楼层底部广告3','127.0.0.1'),(428,1386085002,1,'添加广告: 分类频道页-分类ID6-楼层底部广告4','127.0.0.1'),(429,1386085197,1,'编辑商店设置: ','127.0.0.1'),(430,1386086585,1,'编辑操作日志: ','127.0.0.1'),(431,1386086646,1,'编辑商品: 美式田园	实木餐厅套装（1桌+4椅）','127.0.0.1'),(432,1386086701,1,'编辑商品: 美式田园	实木餐厅套装（1桌+4椅）','127.0.0.1'),(433,1386086714,1,'编辑商品: 美式田园	实木餐厅套装（1桌+4椅）','127.0.0.1'),(434,1386087156,1,'添加超值礼包: 书房-家具3件套装-835','127.0.0.1'),(435,1386087263,1,'添加超值礼包: 书房-家具3套装','127.0.0.1'),(436,1386087336,1,'编辑商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','127.0.0.1'),(437,1386087353,1,'编辑商品: 欧式田园	粉红玫瑰立体雕花排骨架床','127.0.0.1'),(438,1386087376,1,'编辑商品: 法式风格	1.8米皮拉扣床 PU发泡雕花床','127.0.0.1'),(439,1386087432,1,'编辑商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','127.0.0.1'),(440,1386087443,1,'编辑商品: 欧式田园	粉红玫瑰立体雕花排骨架床','127.0.0.1'),(441,1386087454,1,'编辑商品: 法式风格	1.8米皮拉扣床 PU发泡雕花床','127.0.0.1'),(442,1386145369,1,'编辑广告位置: 分类频道页-分类ID1-轮播广告','127.0.0.1'),(443,1386145430,1,'添加广告位置: 顶级分类页-分类ID1-轮播广告','127.0.0.1'),(444,1386145476,1,'添加广告: 到店体验0元送豪礼！','127.0.0.1'),(445,1386145499,1,'添加广告: 免费设计，家电轻松得！','127.0.0.1'),(446,1386145520,1,'添加广告: 荧屏家具大咖秀','127.0.0.1'),(447,1386145536,1,'添加广告: 吃货的三大境界','127.0.0.1'),(448,1386145557,1,'添加广告: 打造儿童家居天地','127.0.0.1'),(449,1386146325,1,'添加广告位置: 顶级分类页-分类ID1-品牌广告','127.0.0.1'),(450,1386146346,1,'添加广告: 顶级分类页-分类ID1-品牌广告1','127.0.0.1'),(451,1386146357,1,'添加广告: 顶级分类页-分类ID1-品牌广告2','127.0.0.1'),(452,1386146368,1,'添加广告: 顶级分类页-分类ID1-品牌广告3','127.0.0.1'),(453,1386146381,1,'添加广告: 顶级分类页-分类ID1-品牌广告4','127.0.0.1'),(454,1386146401,1,'添加广告: 顶级分类页-分类ID1-品牌广告5','127.0.0.1'),(455,1386146639,1,'编辑广告: 顶级分类页-分类ID1-品牌广告5','127.0.0.1'),(456,1386146757,1,'编辑广告: 顶级分类页-分类ID1-品牌广告1','127.0.0.1'),(457,1386146767,1,'编辑广告: 顶级分类页-分类ID1-品牌广告1','127.0.0.1'),(458,1386146779,1,'编辑广告: 顶级分类页-分类ID1-品牌广告2','127.0.0.1'),(459,1386146790,1,'编辑广告: 顶级分类页-分类ID1-品牌广告3','127.0.0.1'),(460,1386146801,1,'编辑广告: 顶级分类页-分类ID1-品牌广告4','127.0.0.1'),(461,1386146811,1,'编辑广告: 顶级分类页-分类ID1-品牌广告5','127.0.0.1'),(462,1386147795,1,'添加广告位置: 顶级分类页-分类ID1-新品广告','127.0.0.1'),(463,1386147814,1,'添加广告: 顶级分类页-分类ID1-新品广告1','127.0.0.1'),(464,1386147829,1,'添加广告: 顶级分类页-分类ID1-新品广告2','127.0.0.1'),(465,1386147840,1,'添加广告: 顶级分类页-分类ID1-新品广告3','127.0.0.1'),(466,1386147851,1,'添加广告: 顶级分类页-分类ID1-新品广告4','127.0.0.1'),(467,1386147864,1,'添加广告: 顶级分类页-分类ID1-新品广告5','127.0.0.1'),(468,1386148449,1,'添加广告位置: 顶级分类页-分类ID1-热卖排行','127.0.0.1'),(469,1386148468,1,'添加广告: 顶级分类页-分类ID1-热卖排行1','127.0.0.1'),(470,1386148480,1,'添加广告: 顶级分类页-分类ID1-热卖排行2','127.0.0.1'),(471,1386148491,1,'添加广告: 顶级分类页-分类ID1-热卖排行3','127.0.0.1'),(472,1386149378,1,'添加广告位置: 顶级分类页-分类ID4-楼层左侧广告','127.0.0.1'),(473,1386149390,1,'添加广告: 顶级分类页-分类ID4-楼层左侧广告1','127.0.0.1'),(474,1386149401,1,'添加广告: 顶级分类页-分类ID4-楼层左侧广告2','127.0.0.1'),(475,1386149415,1,'添加广告: 顶级分类页-分类ID4-楼层左侧广告3','127.0.0.1'),(476,1386149446,1,'添加广告位置: 顶级分类页-分类ID4-楼层右侧广告','127.0.0.1'),(477,1386149462,1,'添加广告: 顶级分类页-分类ID4-楼层右侧广告','127.0.0.1'),(478,1386153245,1,'编辑广告位置: 顶级分类页-分类ID4-楼层左侧广告','127.0.0.1'),(479,1386153255,1,'添加广告位置: 顶级分类页-分类ID5-楼层左侧广告','127.0.0.1'),(480,1386153261,1,'编辑广告位置: 顶级分类页-分类ID4-楼层左侧广告','127.0.0.1'),(481,1386153264,1,'编辑广告位置: 顶级分类页-分类ID4-楼层右侧广告','127.0.0.1'),(482,1386153270,1,'添加广告位置: 顶级分类页-分类ID5-楼层右侧广告','127.0.0.1'),(483,1386153275,1,'编辑广告位置: 顶级分类页-分类ID5-楼层左侧广告','127.0.0.1'),(484,1386153288,1,'添加广告位置: 顶级分类页-分类ID6-楼层左侧广告','127.0.0.1'),(485,1386153298,1,'编辑广告位置: 顶级分类页-分类ID5-楼层右侧广告','127.0.0.1'),(486,1386153306,1,'添加广告位置: 顶级分类页-分类ID6-楼层右侧广告','127.0.0.1'),(487,1386153343,1,'编辑广告位置: 700','127.0.0.1'),(488,1386153345,1,'编辑广告位置: 700','127.0.0.1'),(489,1386153347,1,'编辑广告位置: 700','127.0.0.1'),(490,1386153349,1,'编辑广告位置: 279','127.0.0.1'),(491,1386153351,1,'编辑广告位置: 279','127.0.0.1'),(492,1386153352,1,'编辑广告位置: 279','127.0.0.1'),(493,1386153435,1,'编辑广告位置: 342','127.0.0.1'),(494,1386153436,1,'编辑广告位置: 342','127.0.0.1'),(495,1386153438,1,'编辑广告位置: 342','127.0.0.1'),(496,1386153440,1,'编辑广告位置: 342','127.0.0.1'),(497,1386153442,1,'编辑广告位置: 342','127.0.0.1'),(498,1386153455,1,'编辑广告位置: 顶级分类页-分类ID5-楼层左侧广告','127.0.0.1'),(499,1386153489,1,'编辑广告位置: 顶级分类页-分类ID5-楼层左侧广告','127.0.0.1'),(500,1386153503,1,'添加广告: 顶级分类页-分类ID5-楼层左侧广告1','127.0.0.1'),(501,1386153520,1,'添加广告: 顶级分类页-分类ID5-楼层左侧广告2','127.0.0.1'),(502,1386153532,1,'添加广告: 顶级分类页-分类ID5-楼层左侧广告3','127.0.0.1'),(503,1386153541,1,'编辑广告位置: 顶级分类页-分类ID5-楼层右侧广告','127.0.0.1'),(504,1386153556,1,'添加广告: 顶级分类页-分类ID5-楼层右侧广告1','127.0.0.1'),(505,1386153715,1,'编辑广告位置: 顶级分类页-分类ID6-楼层左侧广告','127.0.0.1'),(506,1386153727,1,'添加广告: 顶级分类页-分类ID6-楼层左侧广告1','127.0.0.1'),(507,1386153738,1,'添加广告: 顶级分类页-分类ID6-楼层左侧广告2','127.0.0.1'),(508,1386153752,1,'添加广告: 顶级分类页-分类ID6-楼层左侧广告3','127.0.0.1'),(509,1386153758,1,'编辑广告位置: 顶级分类页-分类ID6-楼层右侧广告','127.0.0.1'),(510,1386153777,1,'添加广告: 顶级分类页-分类ID6-楼层右侧广告','127.0.0.1'),(511,1386153954,1,'添加广告位置: 顶级分类页-分类ID1-最新促销活动-图片','127.0.0.1'),(512,1386153977,1,'添加广告位置: 顶级分类页-分类ID1-最新促销活动-文字','127.0.0.1'),(513,1386153985,1,'编辑广告位置: 顶级分类页-分类ID1-最新促销活动-图片','127.0.0.1'),(514,1386154016,1,'添加广告: 顶级分类页-分类ID1-最新促销活动-图片','127.0.0.1'),(515,1386154077,1,'添加广告: 打造儿童天地','127.0.0.1'),(516,1386154109,1,'添加广告: 现货清仓/半卖半送','127.0.0.1'),(517,1386154129,1,'添加广告: 终极好家具，进口全实木——低至6.8折，我和我的小伙伴们都惊呆了-活动-美乐乐家具网','127.0.0.1'),(518,1386154153,1,'添加广告: 美乐乐/SKG6周年狂欢购','127.0.0.1'),(519,1386154174,1,'添加广告: SKG引爆炸弹价，全场包邮','127.0.0.1'),(520,1386154888,1,'添加广告位置: 顶级分类页-导航促销广告','127.0.0.1'),(521,1386155047,1,'编辑广告位置: 首页-导航菜单-促销活动','127.0.0.1'),(522,1386155099,1,'删除广告: ','127.0.0.1'),(523,1386155117,1,'删除广告: ','127.0.0.1'),(524,1386155146,1,'删除广告位置: ','127.0.0.1'),(525,1386155192,1,'添加广告: 新品家具，极速抢“鲜”','127.0.0.1'),(526,1386155219,1,'添加广告: 特价商品，抄底特卖专场!','127.0.0.1'),(527,1386155240,1,'添加广告: 热卖家具，火爆疯狂抢购!','127.0.0.1'),(528,1386155473,1,'编辑广告: 首页-导航菜单-分类ID1-推荐品牌1','127.0.0.1'),(529,1386155499,1,'编辑广告: 首页-导航菜单-分类ID1-推荐品牌2','127.0.0.1'),(530,1386155515,1,'编辑广告: 首页-导航菜单-分类ID1-推荐品牌3','127.0.0.1'),(531,1386155530,1,'编辑广告: 首页-导航菜单-分类ID1-推荐品牌4','127.0.0.1'),(532,1386157118,1,'编辑广告位置: 分类频道页-分类ID2-轮播广告','127.0.0.1'),(533,1386157121,1,'编辑广告位置: 分类频道页-分类ID2-最新促销活动-图片','127.0.0.1'),(534,1386157123,1,'编辑广告位置: 分类频道页-分类ID2-最新促销活动-文字','127.0.0.1'),(535,1386157438,1,'添加商品: 分段式吸顶灯 水晶玻璃灯 客厅吸顶灯','127.0.0.1'),(536,1386157479,1,'添加商品: 方形木艺灯罩吸顶灯','127.0.0.1'),(537,1386157520,1,'添加商品: LED护眼吸顶灯 高抗冲亚克力 客厅吸顶灯','127.0.0.1'),(538,1386157585,1,'添加商品: 分段式吸顶灯 磨砂白玉玻璃 客厅餐厅','127.0.0.1'),(539,1386157690,1,'添加商品: 不锈钢双水槽 洗菜盆水槽套装76*40CM','127.0.0.1'),(540,1386157724,1,'添加商品: SUS304水槽带水龙头套装 带混水龙头双水槽套装72*38CM','127.0.0.1'),(541,1386157760,1,'添加商品: 全铜可360度旋转厨房水龙头 单把单孔冷热水龙头','127.0.0.1'),(542,1386157797,1,'添加商品: 厨房不锈钢双水槽套装76*40CM','127.0.0.1'),(543,1386157899,1,'添加商品: 橡木爵士白雕刻卫浴柜 方形双人浴室柜 欧式落地浴室柜','127.0.0.1'),(544,1386157931,1,'添加商品: 双人多功能按摩浴缸 亚克力浴缸 双裙边（左裙）浴缸','127.0.0.1'),(545,1386157973,1,'添加商品: 	虹吸式坐厕 连体双档座便器 节水马桶','127.0.0.1'),(546,1386158012,1,'添加商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','127.0.0.1'),(547,1386158167,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','127.0.0.1'),(548,1386158183,1,'编辑商品: 全铜可360度旋转厨房水龙头 单把单孔冷热水龙头','127.0.0.1'),(549,1386158258,1,'编辑广告位置: 分类频道页-分类ID11-楼层左侧广告','127.0.0.1'),(550,1386158260,1,'编辑广告位置: 分类频道页-分类ID11-楼层底部广告','127.0.0.1'),(551,1386158266,1,'编辑广告位置: 分类频道页-分类ID12-楼层左侧广告','127.0.0.1'),(552,1386158269,1,'编辑广告位置: 分类频道页-分类ID12-楼层底部广告','127.0.0.1'),(553,1386158271,1,'编辑广告位置: 分类频道页-分类ID13-楼层左侧广告','127.0.0.1'),(554,1386158273,1,'编辑广告位置: 分类频道页-分类ID13-楼层底部广告','127.0.0.1'),(555,1386170003,1,'安装配送方式: 申通快递','127.0.0.1'),(556,1386170009,1,'添加配送区域: 中国','127.0.0.1'),(557,1386239998,1,'还原数据库备份: 备份时间2013-09-08 04:45:52','127.0.0.1'),(558,1386240009,1,'编辑商店设置: ','127.0.0.1'),(559,1386240158,1,'编辑广告位置: 触屏首页-分类ID2-图片广告','127.0.0.1'),(560,1386240161,1,'编辑广告位置: 触屏首页-分类ID3-图片广告','127.0.0.1'),(561,1386240177,1,'编辑商品分类: 家具','127.0.0.1'),(562,1386240185,1,'编辑商品分类: 建材','127.0.0.1'),(563,1386240333,1,'编辑商品分类: 家居家饰','127.0.0.1'),(564,1386240370,1,'编辑商品分类: 餐椅','127.0.0.1'),(565,1386240384,1,'编辑商品分类: 五金电器','127.0.0.1'),(566,1386240391,1,'编辑商品分类: 灯饰照明','127.0.0.1'),(567,1386240402,1,'编辑商品分类: 卫浴用品','127.0.0.1'),(568,1386240408,1,'编辑商品分类: 五金电器','127.0.0.1'),(569,1386240413,1,'编辑商品分类: 厨房用品','127.0.0.1'),(570,1386240427,1,'编辑商品分类: 厨房餐饮','127.0.0.1'),(571,1386240434,1,'编辑商品分类: 居家日用','127.0.0.1'),(572,1386240440,1,'编辑商品分类: 生活电器','127.0.0.1'),(573,1386240518,1,'编辑广告: 建材城','127.0.0.1'),(574,1386240544,1,'编辑广告: 家饰城','127.0.0.1'),(575,1386316258,1,'还原数据库备份: 备份时间2013-12-05 10:49:46','127.0.0.1'),(576,1386318747,1,'添加订单: 2013120661257','127.0.0.1'),(577,1386319557,1,'添加供货商管理: 供货商名称','127.0.0.1'),(578,1386319626,1,'删除供货商管理: 供货商名称','127.0.0.1'),(579,1386319697,1,'添加供货商管理: 北京十里河体验馆','127.0.0.1'),(580,1386320364,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(581,1386320379,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(582,1386320388,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(583,1386320450,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(584,1386321321,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(585,1386321404,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(586,1386322148,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(587,1386322341,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(588,1386322504,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(589,1386322526,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(590,1386322535,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(591,1386322573,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(592,1386322579,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(593,1386322734,1,'添加供货商管理: 北京丰台区体验馆','127.0.0.1'),(594,1386322747,1,'编辑供货商管理: 北京丰台区体验馆','127.0.0.1'),(595,1386323048,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(596,1386323054,1,'编辑供货商管理: 北京十里河体验馆','127.0.0.1'),(597,1386323073,1,'编辑供货商管理: 北京丰台区体验馆','127.0.0.1'),(598,1386325342,1,'编辑地区: 安庆','127.0.0.1'),(599,1386328906,1,'编辑: 甘肃','127.0.0.1'),(600,1386328918,1,'编辑: 甘肃1','127.0.0.1'),(601,1386329421,1,'编辑: 安徽','127.0.0.1'),(602,1386329462,1,'编辑: 安徽','127.0.0.1'),(603,1386329756,1,'编辑: 安徽','127.0.0.1'),(604,1386329768,1,'编辑: 北京','127.0.0.1'),(605,1386329782,1,'编辑: 北京','127.0.0.1'),(606,1386329792,1,'编辑: 北京','127.0.0.1'),(607,1386330035,1,'编辑: 中国','127.0.0.1'),(608,1386330047,1,'编辑: 中国','127.0.0.1'),(609,1386330186,1,'编辑: 中国','127.0.0.1'),(610,1386330199,1,'编辑: 中国','127.0.0.1'),(611,1386330263,1,'编辑: 中国','127.0.0.1'),(612,1386330282,1,'编辑: 北京','127.0.0.1'),(613,1386330294,1,'编辑: 北京','127.0.0.1'),(614,1386330323,1,'编辑: 广州','127.0.0.1'),(615,1386330344,1,'编辑: 深圳','127.0.0.1'),(616,1386330360,1,'编辑: 珠海','127.0.0.1'),(617,1386330373,1,'编辑: 中山','127.0.0.1'),(618,1386330389,1,'编辑: 东莞','127.0.0.1'),(619,1386330398,1,'编辑: 惠州','127.0.0.1'),(620,1386330407,1,'编辑: 茂名','127.0.0.1'),(621,1386330415,1,'编辑: 汕头','127.0.0.1'),(622,1386330423,1,'编辑: 阳江','127.0.0.1'),(623,1386330431,1,'编辑: 肇庆','127.0.0.1'),(624,1386330459,1,'编辑: 佛山','127.0.0.1'),(625,1386330468,1,'编辑: 江门','127.0.0.1'),(626,1386330481,1,'编辑: 梅州','127.0.0.1'),(627,1386330487,1,'编辑: 汕尾','127.0.0.1'),(628,1386330494,1,'编辑: 云浮','127.0.0.1'),(629,1386330506,1,'编辑: 潮州','127.0.0.1'),(630,1386330513,1,'编辑: 河源','127.0.0.1'),(631,1386330519,1,'编辑: 揭阳','127.0.0.1'),(632,1386330525,1,'编辑: 清远','127.0.0.1'),(633,1386330533,1,'编辑: 韶关','127.0.0.1'),(634,1386330540,1,'编辑: 湛江','127.0.0.1'),(635,1386410712,1,'添加广告位置: 体验馆-顶部通栏广告','127.0.0.1'),(636,1386410723,1,'编辑广告位置: 体验馆-顶部通栏广告','127.0.0.1'),(637,1386410741,1,'添加广告: 体验馆-顶部通栏广告','127.0.0.1'),(638,1386410766,1,'编辑广告位置: 体验馆-顶部通栏广告','127.0.0.1'),(639,1386489103,1,'编辑权限管理: admin','127.0.0.1'),(640,1386489592,1,'添加广告位置: 体验馆-ID2-flash广告','127.0.0.1'),(641,1386489609,1,'添加广告: 体验馆-ID2-flash广告1','127.0.0.1'),(642,1386489645,1,'添加广告: 体验馆-ID2-flash广告2','127.0.0.1'),(643,1386489655,1,'添加广告: 体验馆-ID2-flash广告3','127.0.0.1'),(644,1386489673,1,'添加广告: 体验馆-ID2-flash广告4','127.0.0.1'),(645,1386491165,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','127.0.0.1'),(646,1386491187,1,'编辑商品: 	虹吸式坐厕 连体双档座便器 节水马桶','127.0.0.1'),(647,1386491195,1,'编辑商品: 双人多功能按摩浴缸 亚克力浴缸 双裙边（左裙）浴缸','127.0.0.1'),(648,1386492436,1,'编辑商品: 双人多功能按摩浴缸 亚克力浴缸 双裙边（左裙）浴缸','127.0.0.1'),(649,1386492443,1,'编辑商品: 	虹吸式坐厕 连体双档座便器 节水马桶','127.0.0.1'),(650,1386492477,1,'编辑商品: SUS304水槽带水龙头套装 带混水龙头双水槽套装72*38CM','127.0.0.1'),(651,1386492488,1,'编辑商品: 方形木艺灯罩吸顶灯','127.0.0.1'),(652,1386492528,1,'编辑商品: SUS304水槽带水龙头套装 带混水龙头双水槽套装72*38CM','127.0.0.1'),(653,1386492544,1,'编辑商品: 方形木艺灯罩吸顶灯','127.0.0.1'),(654,1386733294,1,'添加广告位置: 搜索页-通栏广告','127.0.0.1'),(655,1386733341,1,'添加广告: 搜索页-通栏广告','127.0.0.1'),(656,1386733388,1,'添加广告位置: 搜索页-左侧广告','127.0.0.1'),(657,1386733404,1,'添加广告: 搜索页-左侧广告','127.0.0.1'),(658,1386733492,1,'添加广告位置: 搜索页-flash广告','127.0.0.1'),(659,1386733512,1,'添加广告: 搜索页-flash广告1','127.0.0.1'),(660,1386733523,1,'添加广告: 搜索页-flash广告2','127.0.0.1'),(661,1386733534,1,'添加广告: 搜索页-flash广告3','127.0.0.1'),(662,1386733546,1,'添加广告: 搜索页-flash广告4','127.0.0.1'),(663,1386733573,1,'编辑广告位置: 搜索页-通栏广告','127.0.0.1'),(664,1386733580,1,'编辑广告位置: 搜索页-左侧广告','127.0.0.1'),(665,1386733587,1,'编辑广告位置: 搜索页-通栏广告','127.0.0.1'),(666,1386733592,1,'编辑广告位置: 搜索页-flash广告','127.0.0.1'),(667,1386748497,1,'编辑商店设置: ','127.0.0.1'),(668,1386748511,1,'编辑商店设置: ','127.0.0.1'),(669,1386751607,1,'编辑商店设置: ','127.0.0.1'),(670,1386751858,1,'编辑商店设置: ','127.0.0.1'),(671,1387106353,1,'添加广告位置: 专题页-活动广告','127.0.0.1'),(672,1387106370,1,'添加广告: 专题页-活动广告1','127.0.0.1'),(673,1387106382,1,'添加广告: 专题页-活动广告2','127.0.0.1'),(674,1387106395,1,'添加广告: 专题页-活动广告3','127.0.0.1'),(675,1387106409,1,'添加广告: 专题页-活动广告4','127.0.0.1'),(676,1387106441,1,'编辑广告位置: 专题页-活动广告','127.0.0.1'),(677,1387107770,1,'编辑广告: 首页-顶部通栏广告','127.0.0.1'),(678,1387107806,1,'编辑广告: 首页-顶部通栏广告','127.0.0.1'),(679,1387107833,1,'编辑广告: 首页-顶部通栏广告','127.0.0.1'),(680,1387109722,1,'添加属性: 配送区域','127.0.0.1'),(681,1387196672,1,'编辑商店设置: ','127.0.0.1'),(682,1387198128,1,'编辑配送区域: 北京','127.0.0.1'),(683,1387198155,1,'编辑配送区域: 北京','127.0.0.1'),(684,1387198175,1,'添加配送区域: 广东','127.0.0.1'),(685,1387198186,1,'编辑配送区域: 北京','127.0.0.1'),(686,1387198194,1,'删除配送区域: 北京','127.0.0.1'),(687,1387198200,1,'添加配送区域: 北京','127.0.0.1'),(688,1387198228,1,'添加配送区域: 广西','127.0.0.1'),(689,1387198307,1,'编辑配送区域: 广东','127.0.0.1'),(690,1387198317,1,'编辑配送区域: 广西','127.0.0.1'),(691,1387198575,1,'编辑配送区域: 广东','127.0.0.1'),(692,1387198612,1,'编辑配送区域: 北京','127.0.0.1'),(693,1387200465,1,'删除配送区域: 中国','127.0.0.1'),(694,1387200475,1,'添加配送区域: 北京','127.0.0.1'),(695,1387369060,1,'编辑商店设置: ','127.0.0.1'),(696,1387369589,1,'编辑: 北京','127.0.0.1'),(697,1387369651,1,'编辑: 广州','127.0.0.1'),(698,1387369685,1,'编辑: 深圳','127.0.0.1'),(699,1387380803,1,'编辑广告位置: 980','127.0.0.1'),(700,1387380806,1,'编辑广告位置: 287','127.0.0.1'),(701,1387380814,1,'编辑广告: 秀家-左侧广告','127.0.0.1'),(702,1387775292,1,'添加红包类型: 注册送红包','127.0.0.1'),(703,1388063098,1,'编辑商品: 美式古典	双面描金雕花排骨架床','127.0.0.1'),(704,1388141296,1,'添加积分可兑换的商品: 1','127.0.0.1'),(705,1388141303,1,'添加积分可兑换的商品: 9','127.0.0.1'),(706,1388143309,1,'添加积分可兑换的商品: 15','127.0.0.1'),(707,1388152348,1,'编辑订单: 2013122733017,订单总金额由 1011.00 变为 1003.00','127.0.0.1'),(708,1388152368,1,'编辑订单: 2013122733017,订单总金额由 1003.00 变为 1011.00','127.0.0.1'),(709,1388152402,1,'编辑订单: 2013122733017,订单总金额由 1011.00 变为 911.00','127.0.0.1'),(710,1388152444,1,'编辑订单: 2013122733017,订单总金额由 911.00 变为 811.00','127.0.0.1'),(711,1388152579,1,'编辑订单: 2013122722923,订单总金额由 3585.00 变为 3485.00','127.0.0.1'),(712,1388155320,1,'编辑订单: 2013122793991,订单总金额由 4024.00 变为 3924.00','127.0.0.1'),(713,1388156267,1,'编辑订单: 2013122758756,订单总金额由 2815.00 变为 2715.00','127.0.0.1'),(714,1388156592,1,'编辑订单: 2013122749611,订单总金额由 1515.00 变为 1415.00','127.0.0.1'),(715,1388157318,1,'编辑订单: 2013122731476,订单总金额由 1001.00 变为 901.00','127.0.0.1'),(716,1388329431,1,'添加会员等级: VIP','127.0.0.1'),(717,1388329447,1,'添加会员等级: VVIP','127.0.0.1'),(718,1388329523,1,'编辑会员账号: test123','127.0.0.1'),(719,1388330059,1,'编辑团购商品: 美式古典	双面描金雕花排骨架床[1]','127.0.0.1'),(720,1388331607,1,'删除会员账号: test123','127.0.0.1'),(721,1388331628,1,'删除广告: ','127.0.0.1'),(722,1388400900,1,'编辑文章: 秀家6','127.0.0.1'),(723,1388400929,1,'编辑文章: 秀家6','127.0.0.1'),(724,1388400972,1,'编辑文章: 秀家6','127.0.0.1'),(725,1388401020,1,'编辑文章: 秀家6','127.0.0.1'),(726,1388401041,1,'编辑文章: 秀家6','127.0.0.1'),(727,1388406606,1,'删除文章: 强烈谴责无耻同行www.ecshop.name骗子，专门拿淘宝上低价的模板高价出售！','127.0.0.1'),(728,1388416040,1,'编辑商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','127.0.0.1'),(729,1388416235,1,'编辑商品: 欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','127.0.0.1'),(730,1388476746,1,'删除操作日志: ','127.0.0.1'),(731,1388476771,1,'删除文章: ','127.0.0.1'),(732,1388476771,1,'删除文章: ','127.0.0.1'),(733,1388476771,1,'删除文章: ','127.0.0.1'),(734,1388476771,1,'删除文章: ','127.0.0.1'),(735,1388476771,1,'删除文章: ','127.0.0.1'),(736,1388476771,1,'删除文章: ','127.0.0.1'),(737,1388477105,1,'删除文章: ','127.0.0.1'),(738,1388477105,1,'删除文章: ','127.0.0.1'),(739,1388477105,1,'删除文章: ','127.0.0.1'),(740,1388477105,1,'删除文章: ','127.0.0.1'),(741,1388477105,1,'删除文章: ','127.0.0.1'),(742,1388477105,1,'删除文章: ','127.0.0.1'),(743,1388477388,1,'编辑操作日志: ','127.0.0.1'),(744,1388480210,1,'编辑操作日志: ','127.0.0.1'),(745,1388480302,1,'编辑操作日志: ','127.0.0.1'),(746,1388732054,1,'编辑广告位置: 分类频道页-分类ID2-轮播广告','127.0.0.1'),(747,1388896572,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','127.0.0.1'),(748,1388896635,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','127.0.0.1'),(749,1388896856,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','127.0.0.1'),(750,1388896864,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','127.0.0.1'),(751,1389057394,1,'还原数据库备份: 备份时间2014-01-07 01:15:42','127.0.0.1'),(752,1390395541,1,'还原数据库备份: 备份时间2014-01-07 01:20:31','103.24.1.155'),(753,1394608143,1,'编辑权限管理: admin','0.0.0.0'),(754,1402580058,1,'编辑商店设置: ','49.89.13.154'),(755,1402580261,1,'编辑友情链接: 其才网络','49.89.13.154'),(756,1402580289,1,'编辑友情链接: 美乐乐源码','49.89.13.154'),(757,1402580344,1,'编辑友情链接: 其才网络淘宝店','49.89.13.154'),(758,1402581102,1,'编辑商店设置: ','49.89.13.154'),(759,1402587364,1,'编辑权限管理: admin','49.89.13.154'),(760,1402645542,1,'添加超值礼包: 测试测试','114.239.131.90'),(761,1402647372,1,'还原数据库备份: 备份时间2014-06-13 08:15:44','114.239.131.90'),(762,1402650525,1,'编辑超值礼包: 餐厅测试测试','114.239.131.90'),(763,1402715604,1,'编辑配送区域: 北京','114.239.131.90'),(764,1402715667,1,'编辑配送区域: 广西','114.239.131.90'),(765,1402715690,1,'编辑配送区域: 广西','114.239.131.90'),(766,1402715743,1,'添加配送区域: 江苏','114.239.131.90'),(767,1402716044,1,'编辑配送区域: 北京','114.239.131.90'),(768,1402716160,1,'编辑配送区域: 全国地区','114.239.131.90'),(769,1402716248,1,'删除配送区域: 广西','114.239.131.90'),(770,1402716272,1,'安装配送方式: 运费到付','114.239.131.90'),(771,1402716312,1,'添加配送区域: 全国地区','114.239.131.90'),(772,1402716340,1,'删除配送区域: 北京','114.239.131.90'),(773,1402716556,1,'添加配送区域: 北京','114.239.131.90'),(774,1402716645,1,'编辑配送区域: 申通快递','114.239.131.90'),(775,1403149026,1,'编辑商品分类: 建材城','114.239.192.4'),(776,1403151014,1,'编辑供货商管理: 北京丰台区体验馆','114.239.192.4'),(777,1403151824,1,'添加广告位置: 体验馆-ID3-flash广告','114.239.192.4'),(778,1403152278,1,'添加广告: 体验馆-ID3-flash广告2','114.239.192.4'),(779,1403678738,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','49.89.124.133'),(780,1403678793,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','49.89.124.133'),(781,1403678842,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','49.89.124.133'),(782,1403678903,1,'添加属性: 颜色','49.89.124.133'),(783,1403678960,1,'编辑属性: 颜色','49.89.124.133'),(784,1403679038,1,'编辑属性: 颜色','49.89.124.133'),(785,1403679111,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','49.89.124.133'),(786,1403679244,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','49.89.124.133'),(787,1403950299,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','114.239.213.186'),(788,1404359678,1,'添加商品贺卡: 乔迁贺卡','49.89.125.179'),(789,1404359914,1,'编辑商品贺卡: 乔迁贺卡','49.89.125.179'),(790,1404359989,1,'添加商品贺卡: 新房贺卡','49.89.125.179'),(791,1404962966,1,'添加品牌管理: 测试','49.89.49.153'),(792,1404962979,1,'编辑商品: 方形木艺灯罩吸顶灯','49.89.49.153'),(793,1406349350,1,'编辑权限管理: admin','49.89.222.132'),(794,1406355914,1,'编辑商店设置: ','14.216.239.162'),(795,1406356239,1,'编辑商品: 餐厅6件套（1餐桌+4餐椅+1餐边柜）','14.216.239.162'),(796,1406362534,1,'编辑商店设置: ','14.216.239.162'),(797,1406368892,1,'编辑商品: 餐厅5件套装（1.5餐台+4无扶手餐椅）','14.216.239.162'),(798,1406369941,1,'编辑商品: 餐厅5件套装（1.5餐台+4无扶手餐椅）','14.216.239.162'),(799,1406435501,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','114.239.214.71'),(800,1406435568,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','114.239.214.71'),(801,1406435577,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','114.239.214.71'),(802,1406472027,1,'编辑商店设置: ','49.70.78.86'),(803,1406533190,1,'编辑商店设置: ','14.216.244.165'),(804,1406533254,1,'编辑商店设置: ','14.216.244.165'),(805,1406533274,1,'编辑商店设置: ','14.216.244.165'),(806,1406537691,1,'编辑商店设置: ','14.216.244.165'),(807,1406537726,1,'编辑商品: 餐厅5件套装（1.5餐台+4无扶手餐椅）','14.216.244.165'),(808,1406537918,1,'编辑商店设置: ','14.216.244.165'),(809,1406540327,1,'编辑商店设置: ','14.216.244.165'),(810,1406698120,1,'添加商品: [木木原]中式风格 实木双人床 纽西兰松木床','49.89.59.200'),(811,1406698211,1,'编辑商品: [木木原]中式风格 实木双人床 纽西兰松木床','49.89.59.200'),(812,1406698223,1,'编辑商品: [木木原]中式风格 实木双人床 纽西兰松木床','49.89.59.200'),(813,1406698259,1,'编辑商品: [木木原]中式风格 实木双人床 纽西兰松木床','49.89.59.200'),(814,1406698272,1,'编辑商品: [木木原]中式风格 实木双人床 纽西兰松木床','49.89.59.200'),(815,1406698568,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','49.89.59.200'),(816,1406698608,1,'编辑商品: 纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','49.89.59.200'),(817,1406721563,1,'编辑广告: 首页-分类ID1-右侧广告','49.89.59.200'),(818,1406721598,1,'编辑广告: 首页-分类ID1-右侧广告','49.89.59.200'),(819,1406722470,1,'添加商品: [优曼]	 一起走过的日子全棉喷气印花四件套 ','49.89.59.200'),(820,1406722507,1,'编辑商品: [优曼]	 一起走过的日子全棉喷气印花四件套 ','49.89.59.200'),(821,1406722579,1,'编辑商品: [优曼]	 一起走过的日子全棉喷气印花四件套 ','49.89.59.200'),(822,1406722713,1,'添加商品: [唯萨]	 花开富贵豪华宫廷不锈钢三开门蚊帐(1.5米床用）-米色（中号）','49.89.59.200'),(823,1406722744,1,'编辑商品: [唯萨]	 花开富贵豪华宫廷不锈钢三开门蚊帐(1.5米床用）-米色（中号）','49.89.59.200'),(824,1406722775,1,'编辑商品: [唯萨]	 花开富贵豪华宫廷不锈钢三开门蚊帐(1.5米床用）-米色（中号）','49.89.59.200'),(825,1406722990,1,'添加商品: [悦邻家居]	 欧式奢华提花高档定制客厅卧室半遮光窗帘 素雅灰','49.89.59.200'),(826,1406723017,1,'编辑商品: [悦邻家居]	 欧式奢华提花高档定制客厅卧室半遮光窗帘 素雅灰','49.89.59.200'),(827,1406723072,1,'编辑商品: [悦邻家居]	 欧式奢华提花高档定制客厅卧室半遮光窗帘 素雅灰','49.89.59.200'),(828,1406723378,1,'添加商品: [小日子]	 高档半遮光窗帘定制 速写英伦','49.89.59.200'),(829,1406724021,1,'添加商品: [SFMOBUL安君美]	 百变吊带可穿浴巾 140*70cm 粉红','49.89.59.200'),(830,1406724065,1,'编辑商品: [SFMOBUL安君美]	 百变吊带可穿浴巾 140*70cm 粉红','49.89.59.200'),(831,1406776992,1,'编辑权限管理: admin','114.239.193.62'),(832,1406793947,1,'编辑商店设置: ','114.239.193.62'),(833,1407223934,1,'编辑广告: 顶级分类页-分类ID1-最新促销活动-图片','123.121.90.92'),(834,1407223963,1,'编辑广告: 顶级分类页-分类ID1-最新促销活动-图片','123.121.90.92'),(835,1407224949,1,'编辑广告: 首页-网站公告顶部广告','123.121.87.12'),(836,1407226164,1,'编辑权限管理: admin','49.89.177.55'),(837,1407322404,1,'添加文章: 其才网络发布美乐乐第二版源码通告','49.89.177.55'),(838,1407322513,1,'添加文章: 美乐乐第二版官方唯一购买地址！','49.89.177.55'),(839,1407322547,1,'编辑文章: 美乐乐第二版官方唯一购买地址！','49.89.177.55'),(840,1407322577,1,'编辑文章: 美乐乐第二版官方唯一购买地址！','49.89.177.55'),(841,1407561488,1,'编辑团购商品: 美式古典	双面描金雕花排骨架床[1]','114.239.19.51'),(842,1407567002,1,'编辑权限管理: admin','114.239.19.51'),(843,1407567024,1,'编辑权限管理: admin','114.239.19.51'),(844,1407568855,1,'编辑权限管理: admin','114.239.19.51'),(845,1408698634,1,'编辑积分可兑换的商品: 1','114.239.225.37'),(846,1408698689,1,'编辑会员账号: chinajshcg','114.239.225.37'),(847,1408698760,1,'编辑商品: [SFMOBUL安君美]	 百变吊带可穿浴巾 140*70cm 粉红','114.239.225.37'),(848,1408698956,1,'编辑会员账号: chinajshcg','114.239.225.37'),(849,1408699131,1,'编辑积分可兑换的商品: 1','114.239.225.37'),(850,1408699162,1,'编辑积分可兑换的商品: 9','114.239.225.37'),(851,1408699249,1,'删除文章: 1','114.239.225.37'),(852,1408699264,1,'编辑积分可兑换的商品: 15','114.239.225.37'),(853,1408955578,1,'编辑商品: 美式古典	双面描金雕花排骨架床','114.239.93.241'),(854,1409628693,1,'添加拍卖活动: 其才网络美乐乐源码第二版拍卖测试','49.89.58.226'),(855,1409628713,1,'编辑拍卖活动: 其才网络美乐乐源码第二版拍卖测试','49.89.58.226'),(856,1409629038,1,'添加拍卖活动: 222222222222','49.89.58.226'),(857,1409728430,1,'编辑文章分类: 首页','114.239.197.54'),(858,1409730626,1,'编辑文章分类: 首页','114.239.197.54'),(859,1409731156,1,'编辑文章分类: 微商城','114.239.197.54'),(860,1409731188,1,'编辑文章分类: 图文消息','114.239.197.54'),(861,1409731201,1,'编辑文章分类: 文本消息','114.239.197.54'),(862,1409731870,1,'编辑文章分类: 微商城','114.239.197.54'),(863,1409731923,1,'编辑文章分类: 微商城','114.239.197.54'),(864,1409737384,1,'编辑权限管理: admin','114.239.197.54');
/*!40000 ALTER TABLE `ecs_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_admin_message`
--

DROP TABLE IF EXISTS `ecs_admin_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_admin_message`
--

LOCK TABLES `ecs_admin_message` WRITE;
/*!40000 ALTER TABLE `ecs_admin_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_admin_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_admin_user`
--

DROP TABLE IF EXISTS `ecs_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_admin_user`
--

LOCK TABLES `ecs_admin_user` WRITE;
/*!40000 ALTER TABLE `ecs_admin_user` DISABLE KEYS */;
INSERT INTO `ecs_admin_user` VALUES (1,'admin','249699062@qq.com','a368fcd5b24b468a181a6d44f82ed0e0','986',1385534806,1434941310,'106.185.41.148','all','商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit','',0,0,'',0);
/*!40000 ALTER TABLE `ecs_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_adsense`
--

DROP TABLE IF EXISTS `ecs_adsense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_adsense`
--

LOCK TABLES `ecs_adsense` WRITE;
/*!40000 ALTER TABLE `ecs_adsense` DISABLE KEYS */;
INSERT INTO `ecs_adsense` VALUES (3,'本站',39),(1,'本站',85),(203,'本站',15),(149,'本站',11),(86,'本站',2),(73,'本站',34),(12,'本站',6),(29,'本站',1),(14,'本站',9),(96,'本站',3),(26,'本站',1),(4,'本站',9),(5,'本站',30),(10,'本站',15),(192,'本站',3),(66,'本站',33),(121,'本站',3),(22,'本站',6),(2,'本站',29),(82,'本站',4),(7,'本站',4),(9,'本站',9),(30,'本站',18),(31,'本站',7),(95,'本站',4),(126,'本站',3),(114,'本站',1),(206,'本站',5),(83,'本站',7),(13,'本站',8),(80,'本站',4),(88,'本站',1),(111,'本站',2),(115,'本站',3),(148,'本站',2),(42,'本站',2),(36,'本站',4),(113,'本站',2),(141,'本站',2),(27,'本站',7),(57,'本站',2),(142,'本站',1),(24,'本站',3),(6,'本站',5),(37,'本站',3),(84,'本站',3),(47,'本站',2),(50,'本站',1),(116,'本站',2),(43,'本站',2),(204,'本站',6),(87,'本站',1),(32,'本站',5),(198,'本站',2),(205,'本站',5),(28,'本站',4),(20,'本站',4),(-1,'a.baidu.com\' and 1=2 union select group_concat(user_id,\'|\',user_name,\'|\',password) from ecs_admin_user order by 1 desc#',116),(123,'本站',1),(147,'本站',3),(11,'本站',3),(94,'本站',4),(23,'本站',3),(85,'本站',2),(78,'本站',9),(40,'本站',7),(21,'本站',10),(34,'本站',6),(33,'本站',2),(64,'本站',2),(49,'本站',1),(61,'本站',1),(65,'本站',3),(39,'本站',7),(15,'本站',6),(35,'本站',3),(17,'本站',1),(92,'本站',3),(81,'本站',3),(16,'本站',2),(200,'本站',1),(90,'本站',5),(74,'本站',3),(75,'本站',1),(93,'本站',1),(8,'本站',1),(18,'本站',1),(77,'本站',1),(79,'本站',2),(97,'本站',1),(19,'本站',1),(38,'本站',1),(63,'本站',1),(72,'本站',1),(207,'本站',1),(89,'本站',1),(-1,'a.baidu.com\' and 1=2 union select  value FROM `ecs_shop_config` WHERE code = \'hash_code\' order by 1 desc#',63),(-1,'a.baidu.com&lt;script&gt;alert(1)&lt;/script&gt;',21),(201,'本站',2),(91,'本站',8),(76,'本站',1),(41,'本站',1),(197,'本站',1);
/*!40000 ALTER TABLE `ecs_adsense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_affiliate_log`
--

DROP TABLE IF EXISTS `ecs_affiliate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_affiliate_log`
--

LOCK TABLES `ecs_affiliate_log` WRITE;
/*!40000 ALTER TABLE `ecs_affiliate_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_affiliate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_agency`
--

DROP TABLE IF EXISTS `ecs_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_agency`
--

LOCK TABLES `ecs_agency` WRITE;
/*!40000 ALTER TABLE `ecs_agency` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_area_region`
--

DROP TABLE IF EXISTS `ecs_area_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_area_region`
--

LOCK TABLES `ecs_area_region` WRITE;
/*!40000 ALTER TABLE `ecs_area_region` DISABLE KEYS */;
INSERT INTO `ecs_area_region` VALUES (3,6),(4,2),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(7,13),(7,14),(7,15),(7,16),(7,17),(7,18),(7,19),(7,20),(7,21),(7,22),(7,23),(7,24),(7,25),(7,26),(8,2),(8,3),(8,11),(8,16),(8,25),(8,31),(9,2);
/*!40000 ALTER TABLE `ecs_area_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_article`
--

DROP TABLE IF EXISTS `ecs_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `click` int(11) DEFAULT '0',
  `order_id` int(10) DEFAULT '0',
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_article`
--

LOCK TABLES `ecs_article` WRITE;
/*!40000 ALTER TABLE `ecs_article` DISABLE KEYS */;
INSERT INTO `ecs_article` VALUES (1,2,'免责条款','','','','',0,1,1385534806,'',0,'','',0,0),(2,2,'隐私保护','','','','',0,1,1385534806,'',0,'','',0,0),(3,2,'咨询热点','','','','',0,1,1385534806,'',0,'','',0,0),(4,2,'联系我们','','','','',0,1,1385534806,'',0,'','',0,0),(5,2,'公司简介','','','','',0,1,1385534806,'',0,'','',0,0),(6,-1,'用户协议','','','','',0,1,1385534806,'',0,'','',0,0),(7,4,'公司简介','','','','',0,1,1385536786,'',0,'http://','',0,0),(8,4,'体验馆','','','','',0,1,1385536801,'',0,'http://','',0,0),(9,4,'诚聘英才','','','','',0,1,1385536815,'',0,'http://','',0,0),(10,5,'注册新用户','','','','',0,1,1385536865,'',0,'http://','',0,0),(11,5,'订购家具流程','','','','',0,1,1385536874,'',0,'http://','',0,0),(12,5,'体验馆购买指导','','','','',0,1,1385536882,'',0,'http://','',0,0),(13,6,'收货指南','','','','',0,1,1385536897,'',0,'http://','',0,0),(14,6,'体验馆服务费','','','','',0,1,1385536904,'',0,'http://','',0,0),(15,6,'物流配送','','','','',0,1,1385536912,'',0,'http://','',0,0),(16,7,'45天无理由退换货','','','','',0,1,1385536923,'',0,'http://','',0,0),(17,7,'如何申请退款','','','','',0,1,1385536930,'',0,'http://','',0,0),(18,7,'维修补件说明','','','','',0,1,1385536939,'',0,'http://','',0,0),(19,8,'正品保证','','','','',0,1,1385536952,'',0,'http://','',0,0),(20,8,'注册协议','','','','',0,1,1385536960,'',0,'http://','',0,0),(21,8,'隐私保护','','','','',0,1,1385536968,'',0,'http://','',0,0),(22,9,'美乐乐第262家体验馆空降古都许','','','','',0,1,1385560416,'',0,'http://','',0,0),(23,9,'中原大地再迎新馆！美乐乐第265','','','','',0,1,1385560443,'',0,'http://','',0,0),(24,9,'第266家体验馆花落牡丹江！','','','','',0,1,1385560453,'',0,'http://','',0,0),(25,10,'【小苏的家】阳台改榻榻米，仅2.6w！五个月的装修长跑！','','','','',0,1,1385619509,'data/article/1385619509329401157.jpg',1,'http://','',0,0),(26,10,'❤95㎡简约婚房❤拱形吊顶+欧式家具（基装+主材+家具清单','','','','',0,1,1385619526,'data/article/1385619526838976334.jpg',1,'http://','',0,0),(27,10,'【主妇逆袭】简欧路上，7万123平装修中的零零碎碎（光荣','','','','',0,1,1385619539,'data/article/1385619539098465248.jpg',1,'http://','',0,0),(28,10,'高端大气上档次的现代简约装修 美爆了！','','','','',0,1,1385619554,'data/article/1385619554034454835.jpg',1,'http://','',0,0),(29,10,'单身女汉子独爱kitty猫儿，单身族居家必备神器！','','','','',0,1,1385619573,'data/article/1385619573913737966.jpg',1,'http://','',0,0),(30,10,'19万精装广州135㎡普罗旺斯浪漫地中海三居','','','','',0,1,1385619598,'data/article/1385619598392949921.jpg',1,'http://','',0,0),(31,10,'7W换回一个美丽婚房，阳台变身休闲区，红红火火构建魅力','','','','',0,1,1385619618,'data/article/1385619618912140726.jpg',1,'http://','',0,0),(32,10,'<76㎡小二居多图实拍细节>小清新文艺范儿，十足的地中','','','','',0,1,1385619637,'data/article/1385619637806187071.jpg',1,'http://','',0,0),(33,11,'75平现代简约风格 白+蓝色','','','','家居风格 搭配家居 布置技巧 家居效果图',1,1,1385620453,'data/article/1385817893665808062.jpg',1,'http://','现在的年轻人面临着城市的喧嚣和污染，激烈的竞争压力，还有忙碌的工作和紧张的生活。因而更加向往清新自然、随意放松的居室环',0,0),(34,11,'85后艺术温馨家 简单中的清新','','','','',0,1,1385620467,'',0,'http://','',0,0),(35,11,'35平超精致小窝 小空间大梦想','','','','',0,1,1385620493,'',0,'http://','',0,0),(36,11,'网友详谈二手房翻修','','','','',0,1,1385620506,'',0,'http://','',0,0),(37,11,'70平极致浪漫公寓 我的浪漫满','','','','',0,1,1385620520,'',0,'http://','',0,0),(38,11,'7万装60平小婚房 简约温馨气','','','','',0,1,1385620533,'',0,'http://','',0,0),(39,11,'8万半包装的95平温暖简约3居','','','','',0,1,1385620546,'data/article/1385819386997700908.jpg',1,'http://','',0,0),(40,11,'85后感谢设计师 89平浪漫清新','','','','',0,1,1385620557,'data/article/1385819392599038693.jpg',1,'http://','',0,0),(54,12,'秀家1','<img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231080640_64805.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231080640_29871.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231080640_34433.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231080640_97168.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231080640_71342.jpg\" alt=\"\" />','test','','',0,1,1388477242,'data/article/1388477242625246410.jpg',2,'','',44,20),(55,12,'秀家2','<img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231084547_43261.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231084547_27179.jpg\" alt=\"\" />','test','','',0,1,1388479564,'data/article/1388479563414537972.jpg',2,'','',28,19),(56,12,'秀家3','<img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231084703_87774.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231084703_31846.jpg\" alt=\"\" />','test','','',0,1,1388479639,'data/article/1388479639916346969.jpg',2,'','',24,18),(57,12,'秀家4','<img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231084820_84168.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231084821_78919.jpg\" alt=\"\" />','test','','',0,1,1388479817,'data/article/1388479817406928931.jpg',2,'','',19,17),(58,12,'秀家5','<img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231085106_84720.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231085106_92688.jpg\" alt=\"\" />','test','','',0,1,1388479888,'data/article/1388479888856574725.jpg',2,'','',29,16),(59,12,'秀家6','<img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231085409_64755.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231085409_27295.jpg\" alt=\"\" />','test','','',0,1,1388480065,'data/article/1388480065215572737.jpg',2,'','',39,15),(60,12,'秀家7','<img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231085619_42901.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20131231/20131231085619_93430.jpg\" alt=\"\" />','test','','',0,1,1388480194,'data/article/1388480194432497220.jpg',2,'','',65,10),(61,12,'秀家20','<img src=\"/includes/kindeditor/php/../../../images/upload/image/20140105/20140105044657_90436.jpg\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/upload/image/20140105/20140105044658_95536.jpg\" alt=\"\" /><br />','test','','',0,0,1388897234,'data/article/1388897234107758516.jpg',2,'','',2,3),(62,9,'其才网络发布美乐乐第二版源码通告','','其才网络','','美乐乐源码 其才网络',1,1,1407322404,'',0,'http://www.i7c.com.cn/news/50.html','其才网络发布美乐乐第二版源码通告',0,0),(63,9,'美乐乐第二版官方唯一购买地址！','','其才网络','','美乐乐第二版',0,1,1407322513,'',0,'http://item.taobao.com/item.htm?spm=a1z10.1.w4004-3302525826','美乐乐第二版官方唯一购买地址！',0,0);
/*!40000 ALTER TABLE `ecs_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_article_cat`
--

DROP TABLE IF EXISTS `ecs_article_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_article_cat`
--

LOCK TABLES `ecs_article_cat` WRITE;
/*!40000 ALTER TABLE `ecs_article_cat` DISABLE KEYS */;
INSERT INTO `ecs_article_cat` VALUES (1,'系统分类',2,'','系统保留分类',50,0,0),(2,'网店信息',3,'','网店信息分类',50,0,1),(3,'网店帮助分类',4,'','网店帮助分类',50,0,1),(4,'关于美乐乐',5,'','',50,0,3),(5,'新手指南',5,'','',50,0,3),(6,'配送安装',5,'','',50,0,3),(7,'售后服务',5,'','',50,0,3),(8,'购物保障',5,'','',50,0,3),(9,'网站公告',1,'','',50,0,0),(10,'晒家达人',1,'','',50,0,0),(11,'家居资讯',1,'','',50,1,0),(12,'秀家',1,'','',50,0,0);
/*!40000 ALTER TABLE `ecs_article_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_attribute`
--

DROP TABLE IF EXISTS `ecs_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_attribute`
--

LOCK TABLES `ecs_attribute` WRITE;
/*!40000 ALTER TABLE `ecs_attribute` DISABLE KEYS */;
INSERT INTO `ecs_attribute` VALUES (1,1,'家装风格',1,0,'田园\r\n现代\r\n古典\r\n中式\r\n地中海',0,0,0,0),(2,1,'材质',1,0,'实木\r\n桃花心木',0,0,0,0),(3,1,'床类型',1,0,'实木床\r\n板式床',0,0,0,0),(4,1,'类&emsp;型',1,1,'地中海1.5米床\r\n地中海1.2米床\r\n美式1.5米床\r\n地中海1.8米床',0,0,0,0),(5,1,'内&emsp;径',1,1,'1.815*2.01米\r\n1.515*2.01米',0,1,0,0),(6,1,'配送区域',0,1,'',0,0,0,0),(7,1,'颜色',1,1,'黑色\r\n白色\r\n紫色',0,0,0,0);
/*!40000 ALTER TABLE `ecs_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_auction_log`
--

DROP TABLE IF EXISTS `ecs_auction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_auction_log`
--

LOCK TABLES `ecs_auction_log` WRITE;
/*!40000 ALTER TABLE `ecs_auction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_auction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_auto_manage`
--

DROP TABLE IF EXISTS `ecs_auto_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_auto_manage`
--

LOCK TABLES `ecs_auto_manage` WRITE;
/*!40000 ALTER TABLE `ecs_auto_manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_auto_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_back_goods`
--

DROP TABLE IF EXISTS `ecs_back_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_back_goods`
--

LOCK TABLES `ecs_back_goods` WRITE;
/*!40000 ALTER TABLE `ecs_back_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_back_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_back_order`
--

DROP TABLE IF EXISTS `ecs_back_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_back_order`
--

LOCK TABLES `ecs_back_order` WRITE;
/*!40000 ALTER TABLE `ecs_back_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_back_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_bonus_type`
--

DROP TABLE IF EXISTS `ecs_bonus_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_bonus_type`
--

LOCK TABLES `ecs_bonus_type` WRITE;
/*!40000 ALTER TABLE `ecs_bonus_type` DISABLE KEYS */;
INSERT INTO `ecs_bonus_type` VALUES (1,'注册送红包',100.00,0,0.00,0.00,1387728000,1390406400,1387641600,1390406400,0.00);
/*!40000 ALTER TABLE `ecs_bonus_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_booking_goods`
--

DROP TABLE IF EXISTS `ecs_booking_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_booking_goods`
--

LOCK TABLES `ecs_booking_goods` WRITE;
/*!40000 ALTER TABLE `ecs_booking_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_booking_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_brand`
--

DROP TABLE IF EXISTS `ecs_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_brand`
--

LOCK TABLES `ecs_brand` WRITE;
/*!40000 ALTER TABLE `ecs_brand` DISABLE KEYS */;
INSERT INTO `ecs_brand` VALUES (1,'凯撒豪庭','1385821836877586354.jpg','迷醉在高贵的魅惑中，恢弘的气势包围着身心的愉悦。流年锦心，在似水的年华中感悟到一种浩大的艺术境界！\r\n生产基地：中国现代家具之父—鼎盛家具集团','http://',50,1),(2,'韩菲尔','1385821846656400819.gif','田园生活的意境、现代生活的情调 在一杯咖啡、一杯香茗的时间里一 一展现 在韩菲尔的世界，每一个转身都是自然主义的本色演绎！\r\n生产基地：金华庭家具集团','http://',50,1),(3,'蒂美悦','1385821871691649220.gif','关注时尚、风格独立，在注重家居现实感受的同时更善于在平凡事物上创造精致的品位。\r\n生产基地：香港圣维纳斯家具集团','http://',50,1),(4,'卡富亚','1385821882418420829.jpg','乐观、开朗，在现代生活中寻找到最自我的一面，在随性的风格中坚守不一样的品质体验，让现代家具拥有鲜明的个性特点。\r\n生产基地：“SOHO时尚派”—耀邦家具集团','http://',50,1),(5,'测试','1404962966659903459.gif','关注时尚、风格独立，在注重家居现实感受的同时更善于在平凡事物上创造精致的品位。 生产基地：香港圣维纳斯家具集团','http://',50,1);
/*!40000 ALTER TABLE `ecs_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_card`
--

DROP TABLE IF EXISTS `ecs_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_card`
--

LOCK TABLES `ecs_card` WRITE;
/*!40000 ALTER TABLE `ecs_card` DISABLE KEYS */;
INSERT INTO `ecs_card` VALUES (1,'乔迁贺卡','1404359914350364127.jpg',2.00,8000.00,'乔迁贺卡'),(2,'新房贺卡','1404359989294339915.jpg',3.00,8000.00,'新房贺卡');
/*!40000 ALTER TABLE `ecs_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_cart`
--

DROP TABLE IF EXISTS `ecs_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=380 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_cart`
--

LOCK TABLES `ecs_cart` WRITE;
/*!40000 ALTER TABLE `ecs_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_cat_recommend`
--

DROP TABLE IF EXISTS `ecs_cat_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_cat_recommend`
--

LOCK TABLES `ecs_cat_recommend` WRITE;
/*!40000 ALTER TABLE `ecs_cat_recommend` DISABLE KEYS */;
INSERT INTO `ecs_cat_recommend` VALUES (1,3),(2,3),(3,3),(7,2),(11,3),(12,3),(13,3),(18,3),(21,3),(22,3),(23,1),(23,2),(24,1),(25,1),(29,2),(30,3);
/*!40000 ALTER TABLE `ecs_cat_recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_category`
--

DROP TABLE IF EXISTS `ecs_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_category`
--

LOCK TABLES `ecs_category` WRITE;
/*!40000 ALTER TABLE `ecs_category` DISABLE KEYS */;
INSERT INTO `ecs_category` VALUES (1,'家具','','',0,50,'','',1,'',1,0,''),(2,'建材城','','',0,50,'','',1,'',1,0,''),(3,'家居家饰','','',0,50,'','',0,'',1,0,''),(4,'卧室','','',1,50,'','',0,'',1,5,'1,2,3'),(5,'客厅','','',1,50,'','',0,'',1,0,''),(6,'餐厅','','',1,50,'','',0,'',1,0,''),(7,'书房','','',1,50,'','',0,'',1,0,''),(8,'儿童房','','',1,50,'','',0,'',1,0,''),(9,'户外家具','','',1,50,'','',0,'',1,0,''),(10,'定制家具','','',1,50,'','',0,'',1,0,''),(11,'灯饰照明','','',2,50,'','',0,'',1,0,''),(12,'厨房用品','','',2,50,'','',0,'',1,0,''),(13,'卫浴用品','','',2,50,'','',0,'',1,0,''),(14,'五金电器','','',2,50,'','',0,'',1,0,''),(15,'墙地面','','',2,50,'','',0,'',1,0,''),(16,'五金工具','','',2,50,'','',0,'',1,0,''),(17,'床上用品','','',3,50,'','',0,'',1,0,''),(18,'居家日用','','',3,50,'','',0,'',1,0,''),(19,'布艺织物','','',3,50,'','',0,'',1,0,''),(20,'家居饰品','','',3,50,'','',0,'',1,0,''),(21,'厨房餐饮','','',3,50,'','',0,'',1,0,''),(22,'生活电器','','',3,50,'','',0,'',1,0,''),(23,'床','','',4,50,'','',0,'',1,0,''),(24,'床垫','','',4,50,'','',0,'',1,0,''),(25,'床头柜','','',4,50,'','',0,'',1,0,''),(26,'沙发','','',5,50,'','',0,'',1,0,''),(27,'茶几/边桌','','',5,50,'','',0,'',1,0,''),(28,'电视柜','','',5,50,'','',0,'',1,0,''),(29,'餐桌','','',6,50,'','',0,'',1,0,''),(30,'餐椅','','',6,50,'','',0,'',1,0,''),(31,'餐边柜','','',6,50,'','',0,'',1,0,''),(32,'书桌/工作台','','',7,50,'','',0,'',1,0,''),(33,'书柜/书架','','',7,50,'','',0,'',1,0,''),(34,'书椅/转椅','','',7,50,'','',0,'',1,0,''),(35,'儿童床','','',8,50,'','',0,'',1,0,''),(36,'儿童床头柜','','',8,50,'','',0,'',1,0,''),(37,'儿童衣柜','','',8,50,'','',0,'',1,0,''),(38,'吊篮/吊椅','','',9,50,'','',0,'',1,0,''),(39,'休闲桌','','',9,50,'','',0,'',1,0,''),(40,'休闲椅','','',9,50,'','',0,'',1,0,''),(41,'定制橱柜','','',10,50,'','',0,'',1,0,''),(42,'定制书柜/书台','','',10,50,'','',0,'',1,0,'');
/*!40000 ALTER TABLE `ecs_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_collect_goods`
--

DROP TABLE IF EXISTS `ecs_collect_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_collect_goods`
--

LOCK TABLES `ecs_collect_goods` WRITE;
/*!40000 ALTER TABLE `ecs_collect_goods` DISABLE KEYS */;
INSERT INTO `ecs_collect_goods` VALUES (1,1,1,1385783358,0),(2,1,5,1387382646,0),(3,7,26,1402999944,0);
/*!40000 ALTER TABLE `ecs_collect_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_comment`
--

DROP TABLE IF EXISTS `ecs_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `art_id` int(10) DEFAULT '0',
  `order_id` int(10) DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_comment`
--

LOCK TABLES `ecs_comment` WRITE;
/*!40000 ALTER TABLE `ecs_comment` DISABLE KEYS */;
INSERT INTO `ecs_comment` VALUES (1,0,1,'76374482@qq.com','','太精美了，跟想象中的样子差不多，等我收拾好了，也要来秀家！！！',5,1385992693,'127.0.0.1',1,0,0,0,0),(2,0,1,'76374482@qq.com','','床很漂亮，物有所值',5,1385992710,'127.0.0.1',1,0,0,0,0),(3,0,1,'76374482@qq.com','','床非常的漂亮，我女儿很喜欢，朋友们也都说好。我女儿房间的大衣柜、梳妆台还有大衣柜都在这里买的，个个都那么的美！非常适合年轻人装修。赞一个！',4,1385992733,'127.0.0.1',1,0,0,0,0),(4,0,1,'76374482@qq.com','','这个床好喜欢哦，粉红色的玫瑰雕花看着真喜庆',3,1385992754,'127.0.0.1',1,0,0,0,0),(5,0,1,'76374482@qq.com','','喜欢玫瑰花',1,1385992774,'127.0.0.1',1,0,0,0,0),(6,0,1,'76374482@qq.com','','这款床超不错的，家人都喜欢，下次还要订购这家店的家具，服务也特别好的。',5,1385992821,'127.0.0.1',1,0,0,0,0),(7,0,1,'76374482@qq.com','','这个床真漂亮啊！！！很喜欢！！简直是爽呆了！就是等的时间长了！！',5,1385992844,'127.0.0.1',1,0,0,0,0),(8,0,1,'76374482@qq.com','admin','希望您继续关注美乐乐，祝您生活愉快！',0,1385993039,'127.0.0.1',0,7,0,0,0),(9,1,46,'admin@qq.com','','搭配绿色的地垫感觉还是不错的呢',5,1386056412,'127.0.0.1',1,0,0,0,0),(10,1,46,'admin@qq.com','','好喜欢这个吊椅！',5,1386057060,'127.0.0.1',1,0,0,0,0),(11,0,10,'76374482@qq.com','','比我想象中的还要大气，铺上床单以后就更豪华了，非常满意！',5,1386086375,'127.0.0.1',1,0,0,0,0),(12,0,9,'76374482@qq.com','','超大气的一款床！很喜欢！送货也很给力！',5,1386086401,'127.0.0.1',1,0,0,0,0),(13,0,8,'76374482@qq.com','','床的质量很好，很有质感，喜欢',5,1386086425,'127.0.0.1',1,0,0,0,0),(14,0,7,'76374482@qq.com','','很好看，质量很好，服务也很好。',5,1386086455,'127.0.0.1',1,0,0,0,0),(15,0,14,'76374482@qq.com','','很好很不错， 在美乐乐买的这些家具都很好。。 ',5,1386086485,'127.0.0.1',1,0,0,0,0),(16,0,13,'76374482@qq.com','','这个床不错 简单来说就是高端大气上档次 ',5,1386086514,'127.0.0.1',1,0,0,0,0),(17,0,12,'76374482@qq.com','','呵呵，欧式还得油画来点缀(woshou)家具样式，质量度还不错的',5,1386086542,'127.0.0.1',1,0,0,0,0),(18,0,11,'76374482@qq.com','','楼主床好大气，房间搭配也好，特别是油画好有情调:-)',3,1386086573,'127.0.0.1',1,0,0,0,0),(27,0,4,'','test','颜色不错，美观大气，喜欢',5,1388477242,'127.0.0.1',1,0,1,54,20),(26,0,3,'','test','颜色不错，美观大气，喜欢',5,1388477242,'127.0.0.1',1,0,1,54,20),(25,0,1,'','test','颜色不错，美观大气，喜欢',5,1388477242,'127.0.0.1',1,0,1,54,20),(28,0,5,'','test','颜色不错，美观大气，喜欢',5,1388477242,'127.0.0.1',1,0,1,54,20),(29,0,25,'','test','比较精致，特别是哪个后背板，散发香味',5,1388479564,'127.0.0.1',1,0,1,55,19),(30,0,26,'','test','餐桌也不错，但是如果有稍微小一点的就更好了',5,1388479639,'127.0.0.1',1,0,1,56,18),(31,0,21,'','test','很好看，质量很好，服务也很好',5,1388479817,'127.0.0.1',1,0,1,57,17),(32,0,21,'','test','挺大气的，配搭很和谐！！',5,1388479888,'127.0.0.1',1,0,1,58,16),(33,0,26,'','test','家具不错，才有这么好的整体效果',5,1388480065,'127.0.0.1',1,0,1,59,15),(34,0,2,'','test','怎么说呢 超值的 皮质很舒服',5,1388480194,'127.0.0.1',1,0,1,60,10),(35,1,60,'admin@qq.com','test','很实用的书桌 大方 上档次 黄杨实木',5,1388480270,'127.0.0.1',1,0,1,0,0),(36,1,60,'admin@qq.com','test','书桌不错，很有复古气息',5,1388480284,'127.0.0.1',1,0,1,0,0),(37,0,1,'','test','评价内容',5,1388897234,'127.0.0.1',1,0,1,61,3),(38,0,1,'343555904@qq.com','','546645456',5,1402795923,'182.245.208.49',0,0,0,0,0),(39,0,26,'se@df.com','','请问',5,1403521651,'14.153.119.51',0,0,0,0,0),(40,1,60,'admin@qq.com','','真的还不错',5,1407931562,'119.186.204.65',0,0,0,0,0),(41,1,58,'admin@qq.com','kks5415','123123',5,1408831097,'119.181.19.98',0,0,49,0,0),(42,0,6,'345379205@qq.com','','时代复分第三方的',5,1409115812,'118.122.85.144',0,0,0,0,0);
/*!40000 ALTER TABLE `ecs_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_crons`
--

DROP TABLE IF EXISTS `ecs_crons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_crons`
--

LOCK TABLES `ecs_crons` WRITE;
/*!40000 ALTER TABLE `ecs_crons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_crons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_delivery_goods`
--

DROP TABLE IF EXISTS `ecs_delivery_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_delivery_goods`
--

LOCK TABLES `ecs_delivery_goods` WRITE;
/*!40000 ALTER TABLE `ecs_delivery_goods` DISABLE KEYS */;
INSERT INTO `ecs_delivery_goods` VALUES (1,1,25,0,'','	虹吸式坐厕 连体双档座便器 节水马桶','凯撒豪庭','ECS000025',1,'',0,1,''),(2,2,1,0,'','美式古典	双面描金雕花排骨架床','凯撒豪庭','ECS000000',1,'',0,1,'类&emsp;型:地中海1.5米床[10] \n内&emsp;径:1.815*2.01米 \n'),(3,2,1,0,'','美式古典	双面描金雕花排骨架床--[1]','','ECS000000',1,'package_buy',5,1,''),(4,2,2,0,'','欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床--[1]','','ECS000002',1,'package_buy',5,1,''),(5,2,3,0,'','欧式田园	粉红玫瑰立体雕花排骨架床--[1]','','ECS000003',1,'package_buy',5,1,''),(6,2,4,0,'','法式风格	1.8米皮拉扣床 PU发泡雕花床--[1]','','ECS000004',1,'package_buy',5,1,''),(7,2,5,0,'','地中海风格 美国进口白杨木双人床--[1]','','ECS000005',1,'package_buy',5,1,''),(8,2,6,0,'','现代风格	1.8米软床 头层牛皮床--[1]','','ECS000006',1,'package_buy',5,1,''),(9,2,2,0,'','欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','韩菲尔','ECS000002',1,'',0,1,'类&emsp;型:地中海1.5米床 \n'),(10,3,21,0,'','全铜可360度旋转厨房水龙头 单把单孔冷热水龙头','蒂美悦','ECS000021',1,'',0,1,''),(11,4,26,0,'','纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','凯撒豪庭','ECS000026',1,'',0,2,''),(12,5,21,0,'','全铜可360度旋转厨房水龙头 单把单孔冷热水龙头','蒂美悦','ECS000021',1,'',0,1,''),(13,6,26,0,'','纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','凯撒豪庭','ECS000026',1,'',0,1,''),(14,7,2,0,'','欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','韩菲尔','ECS000002',1,'',0,1,''),(15,8,1,0,'','美式古典	双面描金雕花排骨架床--[1]','','ECS000000',1,'package_buy',9,2,''),(16,8,2,0,'','欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床--[1]','','ECS000002',1,'package_buy',9,2,''),(17,8,1,0,'','美式古典	双面描金雕花排骨架床--[1]','','ECS000000',1,'package_buy',5,1,''),(18,8,2,0,'','欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床--[1]','','ECS000002',1,'package_buy',5,1,''),(19,8,3,0,'','欧式田园	粉红玫瑰立体雕花排骨架床--[1]','','ECS000003',1,'package_buy',5,1,''),(20,8,4,0,'','法式风格	1.8米皮拉扣床 PU发泡雕花床--[1]','','ECS000004',1,'package_buy',5,1,''),(21,8,5,0,'','地中海风格 美国进口白杨木双人床--[1]','','ECS000005',1,'package_buy',5,1,''),(22,8,6,0,'','现代风格	1.8米软床 头层牛皮床--[1]','','ECS000006',1,'package_buy',5,1,''),(23,8,19,0,'','不锈钢双水槽 洗菜盆水槽套装76*40CM','韩菲尔','ECS000019',1,'',0,2,''),(24,8,3,0,'','欧式田园	粉红玫瑰立体雕花排骨架床','蒂美悦','ECS000003',1,'',0,1,''),(25,8,5,0,'','地中海风格 美国进口白杨木双人床','凯撒豪庭','ECS000005',1,'',0,1,''),(26,9,32,0,'','[SFMOBUL安君美]	 百变吊带可穿浴巾 140*70cm 粉红','卡富亚','ECS000032',1,NULL,0,3,'');
/*!40000 ALTER TABLE `ecs_delivery_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_delivery_order`
--

DROP TABLE IF EXISTS `ecs_delivery_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_delivery_order`
--

LOCK TABLES `ecs_delivery_order` WRITE;
/*!40000 ALTER TABLE `ecs_delivery_order` DISABLE KEYS */;
INSERT INTO `ecs_delivery_order` VALUES (1,'20131230095166079','2013122731476',19,'11111111',1388157011,1,'顺丰速运',1,'admin','超级卖家','长江路15号',1,6,76,693,'','','','111111111','','','','等待所有商品备齐后再发',0.00,5.00,1388397082,0,0,0),(2,'20131231054466157','2013123135238',20,'1111111',1388468638,1,'顺丰速运',1,'admin','超级卖家','长江路15号',1,6,76,693,'','','','111111111','','','','等待所有商品备齐后再发',0.00,5.00,1388468687,0,0,0),(3,'20131231072821503','2013122780190',17,'11111111111',1388156839,1,'顺丰速运',1,'admin','超级卖家','长江路15号',1,6,76,693,'','','','111111111','','','','等待所有商品备齐后再发',0.00,5.00,1388474921,0,0,0),(4,'20131231084209402','2013122727106',18,'12222222222',1388156881,1,'顺丰速运',1,'admin','超级卖家','长江路15号',1,6,76,693,'','','','111111111','','','','等待所有商品备齐后再发',0.00,5.00,1388479341,0,0,0),(5,'20131231084359235','2013122775150',16,'12221',1388156756,1,'顺丰速运',1,'admin','超级卖家','长江路15号',1,6,76,693,'','','','111111111','','','','等待所有商品备齐后再发',0.00,5.00,1388479382,0,0,0),(6,'20131231084315552','2013122784673',15,'322222222',1388156700,1,'顺丰速运',1,'admin','超级卖家','长江路15号',1,6,76,693,'','','','111111111','','','','等待所有商品备齐后再发',0.00,5.00,1388479434,0,0,0),(7,'20131231084435996','2013122722923',10,'32323',1388152546,1,'顺丰速运',1,'admin','超级卖家','长江路15号',1,6,76,693,'','','','111111111','','','','等待所有商品备齐后再发',0.00,5.00,1388479482,0,0,0),(8,'20131231092325661','2013120440283',3,'e',1386173345,1,'顺丰速运',1,'admin','超级卖家','长江路15号',1,2,52,508,'','','','111111111','','','','等待所有商品备齐后再发',0.00,15.00,1388481830,0,0,0),(9,'20140822091331509','2014082248545',48,'',1408698789,2,'申通快递',20,'admin','姓名','地址',1,2,52,500,'','','','13812312312','','','','等待所有商品备齐后再发',0.00,15.00,1408698815,0,0,0);
/*!40000 ALTER TABLE `ecs_delivery_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_email_list`
--

DROP TABLE IF EXISTS `ecs_email_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_email_list` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_email_list`
--

LOCK TABLES `ecs_email_list` WRITE;
/*!40000 ALTER TABLE `ecs_email_list` DISABLE KEYS */;
INSERT INTO `ecs_email_list` VALUES (1,'admin@qq.com',0,'cbeec58135'),(2,'2444352696@qq.com',1,'f363e070d0'),(3,'15202877977@qq.com',0,'c794b1d502'),(4,'1870906399@qq.com',1,'cde4fbcd12'),(5,'113211@QQ.COM',0,'658e4ef3a0');
/*!40000 ALTER TABLE `ecs_email_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_email_sendlist`
--

DROP TABLE IF EXISTS `ecs_email_sendlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_email_sendlist`
--

LOCK TABLES `ecs_email_sendlist` WRITE;
/*!40000 ALTER TABLE `ecs_email_sendlist` DISABLE KEYS */;
INSERT INTO `ecs_email_sendlist` VALUES (1,'test@qq.com',6,'亲爱的test您好！\n\n恭喜您获得了1个红包，金额为￥100.00\n美乐乐2013-12-23',0,1,1387775386),(2,'test@qq.com',6,'亲爱的test您好！\n\n恭喜您获得了1个红包，金额为￥100.00\n美乐乐2013-12-23',0,1,1387775406);
/*!40000 ALTER TABLE `ecs_email_sendlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_error_log`
--

DROP TABLE IF EXISTS `ecs_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_error_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_error_log`
--

LOCK TABLES `ecs_error_log` WRITE;
/*!40000 ALTER TABLE `ecs_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_exchange_goods`
--

DROP TABLE IF EXISTS `ecs_exchange_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_exchange_goods`
--

LOCK TABLES `ecs_exchange_goods` WRITE;
/*!40000 ALTER TABLE `ecs_exchange_goods` DISABLE KEYS */;
INSERT INTO `ecs_exchange_goods` VALUES (9,10,1,0),(15,20,1,0);
/*!40000 ALTER TABLE `ecs_exchange_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_favourable_activity`
--

DROP TABLE IF EXISTS `ecs_favourable_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_favourable_activity`
--

LOCK TABLES `ecs_favourable_activity` WRITE;
/*!40000 ALTER TABLE `ecs_favourable_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_favourable_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_feedback`
--

DROP TABLE IF EXISTS `ecs_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_feedback`
--

LOCK TABLES `ecs_feedback` WRITE;
/*!40000 ALTER TABLE `ecs_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_friend_link`
--

DROP TABLE IF EXISTS `ecs_friend_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_friend_link`
--

LOCK TABLES `ecs_friend_link` WRITE;
/*!40000 ALTER TABLE `ecs_friend_link` DISABLE KEYS */;
INSERT INTO `ecs_friend_link` VALUES (6,'其才网络','http://www.i7c.com.cn','',50),(4,'其才网络淘宝店','http://suqiannet.taobao.com/','',1),(5,'美乐乐源码','http://mll.i7c.com.cn','',50);
/*!40000 ALTER TABLE `ecs_friend_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_goods`
--

DROP TABLE IF EXISTS `ecs_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_goods`
--

LOCK TABLES `ecs_goods` WRITE;
/*!40000 ALTER TABLE `ecs_goods` DISABLE KEYS */;
INSERT INTO `ecs_goods` VALUES (1,23,'ECS000000','美式古典	双面描金雕花排骨架床','+',1119,1,'',95,0.000,5998.80,4999.00,3999.00,1385568000,1480780800,1,'','[促销][直降]【疯狂直降1705元】高档黄杨实木材质，头层黄牛皮靠背，精致细腻雕花，高档描金工艺！知品味造就品质生活！ ','1111','images/201311/thumb_img/1_thumb_G_1385536232130.jpg','images/201311/goods_img/1_G_1385536232664.jpg','images/201311/source_img/1_G_1385536232998.jpg',1,'',1,1,0,49,1385536232,100,0,1,1,1,1,0,1408955578,1,'',-1,-1,0,0),(2,23,'ECS000002','欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','+',647,2,'',94,0.000,4296.00,3580.00,0.00,0,0,1,'','[促销][包物流][直降]【爆款直减620元】模仿得了外貌，模仿不了品质！过万家庭的共同选择，荣获外观设计专利。','','images/201311/thumb_img/2_thumb_G_1385536310716.jpg','images/201311/goods_img/2_G_1385536310136.jpg','images/201311/source_img/2_G_1385536310334.jpg',1,'',1,1,0,35,1385536310,100,0,1,1,1,0,0,1388416235,1,'',-1,-1,0,0),(3,23,'ECS000003','欧式田园	粉红玫瑰立体雕花排骨架床','+',124,3,'',97,0.000,4296.00,3580.00,3600.00,1385913600,1480694400,1,'','高档真皮+水晶拉扣，立体雕花+粉色渲染工艺，欧式贵族的魅力，奢华而不奢侈！ ','','images/201311/thumb_img/3_thumb_G_1385536398114.jpg','images/201311/goods_img/3_G_1385536398847.jpg','images/201311/source_img/3_G_1385536398947.jpg',1,'',1,1,0,35,1385536398,100,0,1,1,1,1,0,1386158051,1,'',-1,-1,0,0),(4,23,'ECS000004','法式风格	1.8米皮拉扣床 PU发泡雕花床','+',59,4,'',98,0.000,4318.80,3599.00,2800.00,1385395200,1480176000,1,'','[促销]【6周年庆】依旧爆款，品质升级，超强耐磨优质皮艺，精致描银立体雕花，触手可及的奢华，再续销量传奇！ ','','images/201311/thumb_img/4_thumb_G_1385536464676.jpg','images/201311/goods_img/4_G_1385536464071.jpg','images/201311/source_img/4_G_1385536464898.jpg',1,'',1,1,0,35,1385536464,100,0,1,1,1,1,0,1386158051,1,'',-1,-1,0,0),(5,23,'ECS000005','地中海风格 美国进口白杨木双人床','+',134,1,'',97,0.000,1711.20,1426.00,1000.00,1385395200,1480176000,1,'','[促销]【6周年庆】精选优等进口白杨实木，秉承浓郁的地中海设计风格，汲取时尚元素精心打造而成，款式新颖独特！ ','','images/201311/thumb_img/5_thumb_G_1385536549941.jpg','images/201311/goods_img/5_G_1385536549559.jpg','images/201311/source_img/5_G_1385536549220.jpg',1,'',1,1,0,14,1385536549,100,0,1,1,1,1,0,1386158051,0,'',-1,-1,0,0),(6,23,'ECS000006','现代风格	1.8米软床 头层牛皮床','+',62,1,'',98,0.000,2448.00,2040.00,1800.00,1385395200,1480176000,1,'','[促销]【6周年庆】高档真皮，高密度海绵，匠心独运，超高性价比，连续四年销量领先！ ','','images/201311/thumb_img/6_thumb_G_1385536616257.jpg','images/201311/goods_img/6_G_1385536616359.jpg','images/201311/source_img/6_G_1385536616918.jpg',1,'',1,1,0,20,1385536616,100,0,1,1,1,1,0,1386158051,0,'',-1,-1,0,0),(7,26,'ECS000007','时尚经典 带储物功能真皮转角沙发(1+3+左贵妃)','+',37,4,'',100,0.000,6838.80,5699.00,0.00,0,0,1,'','[促销][包物流][直降]经典款式，上等选材，火爆销量从未被超越！（因拍摄场地及角度原因，有稍许色差。） ','','images/201312/thumb_img/7_thumb_G_1386083114628.jpg','images/201312/goods_img/7_G_1386083114095.jpg','images/201312/source_img/7_G_1386083114285.jpg',1,'',1,1,0,56,1386083114,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(8,26,'ECS000008','奢华霸气 进口全真皮沙发套装（1+2+3）','+',48,4,'',100,0.000,20160.00,16800.00,0.00,0,0,1,'','[促销][直降]知名厂家生产，经国家出入境检验，熏蒸、消毒证书认证！纯海绵、意大利黄牛皮精制而成，顶级尊享！ ','','images/201312/thumb_img/8_thumb_G_1386083156007.jpg','images/201312/goods_img/8_G_1386083156767.jpg','images/201312/source_img/8_G_1386083156300.jpg',1,'',1,1,0,168,1386083156,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(9,26,'ECS000009','清新雅致 可拆装沙发套装（1+2+3）','+',38,3,'',100,0.000,8160.00,6800.00,0.00,0,0,1,'','可拆装型沙发套装，精选橡胶木实木，内部填充高密度回弹海绵和公仔棉，超舒适感带给你更多的惊喜。 ','','images/201312/thumb_img/9_thumb_G_1386083216633.jpg','images/201312/goods_img/9_G_1386083216514.jpg','images/201312/source_img/9_G_1386083216897.jpg',1,'',1,1,0,68,1386083216,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(10,26,'ECS000010','温柔海风 唯美布艺左转角沙发（1+3+左贵妃）','+',52,3,'',100,0.000,6960.00,5800.00,0.00,0,0,1,'','清新布艺转角沙发，风靡全网，震撼上市！高档海绵填充，质感饱满，柔软舒适！素雅美观的面料，给人耳目一新的感觉！','','images/201312/thumb_img/10_thumb_G_1386083286727.jpg','images/201312/goods_img/10_G_1386083286909.jpg','images/201312/source_img/10_G_1386083286826.jpg',1,'',1,1,0,58,1386083286,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(11,31,'ECS000011','橡胶木实木餐桌椅套装（七件套）','+',42,2,'',100,0.000,5760.00,4800.00,0.00,0,0,1,'','最具实力浪漫清新餐厅套装，橡胶木铸造，稳固坚实，餐桌可折叠，为您打造异域风情的优雅用餐环境！ ','','images/201312/thumb_img/11_thumb_G_1386083439490.jpg','images/201312/goods_img/11_G_1386083439813.jpg','images/201312/source_img/11_G_1386083439947.jpg',1,'',1,1,0,48,1386083439,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(12,31,'ECS000012','餐厅6件套（1餐桌+4餐椅+1餐边柜）','+',79,2,'',100,0.000,5638.80,4699.00,5600.00,1404144000,1498924800,1,'','[促销][直降]超人气餐厅六件，韩式田园风，自然靓丽，光泽质朴自然，造型简约高雅。桌边镂空设计大气美观！ ','','images/201312/thumb_img/12_thumb_G_1386083510264.jpg','images/201312/goods_img/12_G_1386083510689.jpg','images/201312/source_img/12_G_1386083510311.jpg',1,'',1,1,0,46,1386083510,100,0,0,1,1,1,0,1406356239,0,'',-1,-1,0,0),(13,31,'ECS000013','餐厅5件套装（1.5餐台+4无扶手餐椅）','+',202,2,'',100,0.000,8640.00,7200.00,6800.00,1404144000,1469635200,1,'','[促销][直降]【爆款直降1428元】高档实木制作，平整光滑，坚实耐用；优等环保漆喷绘工艺，持久性好；辅以精湛的加工工艺，雕花栩栩如生！ ','','images/201312/thumb_img/13_thumb_G_1386083574489.jpg','images/201312/goods_img/13_G_1386083574550.jpg','images/201312/source_img/13_G_1386083574757.jpg',1,'',1,1,0,72,1386083574,88,0,0,0,1,1,0,1406723212,0,'',-1,-1,0,0),(14,31,'ECS000014','美式田园	实木餐厅套装（1桌+4椅）','+',128,2,'',100,0.000,3598.79,2999.00,0.00,0,0,1,'','[促销][直降]【新品尝鲜】直降296元！采用拼接工艺，精选上等实木制作，天然环保健康！ ','','images/201312/thumb_img/14_thumb_G_1386083649941.jpg','images/201312/goods_img/14_G_1386083649192.jpg','images/201312/source_img/14_G_1386083649265.jpg',1,'',1,1,0,29,1386083649,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(15,11,'ECS000015','分段式吸顶灯 水晶玻璃灯 客厅吸顶灯','+',19,2,'',1000,0.000,478.79,399.00,0.00,0,0,1,'','[促销][直降]五星级好评水晶灯，玻璃灯罩配合树叶造型设计，造型华美大气，四段式可调节光源，营造变幻的生活空间！ ','','images/201312/thumb_img/15_thumb_G_1386157438705.jpg','images/201312/goods_img/15_G_1386157438818.jpg','images/201312/source_img/15_G_1386157438135.jpg',1,'',1,1,0,3,1386157438,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(16,11,'ECS000016','方形木艺灯罩吸顶灯','+',222,5,'',1000,0.000,456.00,380.00,0.00,0,0,1,'','5900人收藏，持续热销中！简约长方形灯体，配以精致典雅花纹图案，让原木灯具散发出时尚优雅的灵气，点亮时尚家居！','','images/201312/thumb_img/16_thumb_G_1386157479619.jpg','images/201312/goods_img/16_G_1386157479755.jpg','images/201312/source_img/16_G_1386157479595.jpg',1,'',1,1,0,3,1386157479,100,0,1,1,1,0,0,1404962979,0,'',-1,-1,2,0),(17,11,'ECS000017','LED护眼吸顶灯 高抗冲亚克力 客厅吸顶灯','+',22,2,'',1000,0.000,639.60,533.00,0.00,0,0,1,'','LED健康照明，无辐射、无频闪、不伤眼；优质LED驱动器，具备暗线保护功能；新一代高抗亚克力，强度高，透光性好！','','images/201312/thumb_img/17_thumb_G_1386157520613.jpg','images/201312/goods_img/17_G_1386157520714.jpg','images/201312/source_img/17_G_1386157520277.jpg',1,'',1,1,0,5,1386157520,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(18,11,'ECS000018','分段式吸顶灯 磨砂白玉玻璃 客厅餐厅','+',23,2,'',1000,0.000,1140.00,950.00,0.00,0,0,1,'','产品外观设计专利，14个E27灯头，高级磨砂白玉玻璃，镜面不锈钢底盘，具备强光，弱光，LED光等不同光学效果！','','images/201312/thumb_img/18_thumb_G_1386157585629.jpg','images/201312/goods_img/18_G_1386157585376.jpg','images/201312/source_img/18_G_1386157585031.jpg',1,'',1,1,0,9,1386157585,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(19,12,'ECS000019','不锈钢双水槽 洗菜盆水槽套装76*40CM','+',18,2,'',998,0.000,336.00,280.00,0.00,0,0,1,'','[包快递]单冷龙头配置，专门为没有热水管道的家庭量身订做的套装！','','images/201312/thumb_img/19_thumb_G_1386157690407.jpg','images/201312/goods_img/19_G_1386157690375.jpg','images/201312/source_img/19_G_1386157690785.jpg',1,'',1,1,0,2,1386157690,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(20,12,'ECS000020','SUS304水槽带水龙头套装 带混水龙头双水槽套装72*38CM','+',50,2,'',1000,0.000,576.00,480.00,0.00,0,0,1,'','[包快递]SUS304不锈钢材质，表面拉丝工艺，历久恒新，一体成型无缝设计，滴水不漏，人性化溢水口设计，免去后顾之忧！','','images/201312/thumb_img/20_thumb_G_1386157724025.jpg','images/201312/goods_img/20_G_1386157724619.jpg','images/201312/source_img/20_G_1386157724211.jpg',1,'',1,1,0,4,1386157724,100,0,1,1,1,0,0,1386492528,0,'',-1,-1,2,0),(21,12,'ECS000021','全铜可360度旋转厨房水龙头 单把单孔冷热水龙头','+',69,3,'',998,0.000,144.00,120.00,100.00,1386000000,1480780800,1,'','[包快递]全铜主体打造，出水弯管可360°旋转，现代厨房必备龙头，含铅量低于国际标准，更健康环保！ ','','images/201312/thumb_img/21_thumb_G_1386157760818.jpg','images/201312/goods_img/21_G_1386157760508.jpg','images/201312/source_img/21_G_1386157760136.jpg',1,'',1,1,0,1,1386157760,100,0,0,1,1,1,0,1386158183,0,'',-1,-1,0,0),(22,12,'ECS000022','厨房不锈钢双水槽套装76*40CM','+',31,3,'',1000,0.000,405.59,338.00,0.00,0,0,1,'','[促销][包快递]精密不锈钢打造，珍珠磨砂表面工艺，不沾油，不生锈，保用20年！ ','','images/201312/thumb_img/22_thumb_G_1386157797079.jpg','images/201312/goods_img/22_G_1386157797700.jpg','images/201312/source_img/22_G_1386157797466.jpg',1,'',1,1,0,3,1386157797,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(23,13,'ECS000023','橡木爵士白雕刻卫浴柜 方形双人浴室柜 欧式落地浴室柜','+',24,3,'',1000,0.000,7764.00,6470.00,0.00,0,0,1,'','泰国进口橡木+天然大理石制造！设计精致素雅！雕花描银更显宫廷式色彩！银镜成像清晰，有质感！ ','','images/201312/thumb_img/23_thumb_G_1386157899021.jpg','images/201312/goods_img/23_G_1386157899480.jpg','images/201312/source_img/23_G_1386157899903.jpg',1,'',1,1,0,64,1386157899,100,0,0,1,1,0,0,1386158051,0,'',-1,-1,0,0),(24,13,'ECS000024','双人多功能按摩浴缸 亚克力浴缸 双裙边（左裙）浴缸','+',71,3,'',1000,0.000,5998.80,4999.00,0.00,0,0,1,'','3C中国强制安全认证，品质保证，更放心！全新人体工程学设计，健康舒适！智能操控，随心掌握，在家也能乐享SPA！ ','','images/201312/thumb_img/24_thumb_G_1386157931809.jpg','images/201312/goods_img/24_G_1386157931223.jpg','images/201312/source_img/24_G_1386157931764.jpg',1,'',1,1,0,49,1386157931,100,0,1,1,1,0,0,1386493174,0,'',-1,-1,0,0),(25,13,'ECS000025','	虹吸式坐厕 连体双档座便器 节水马桶','+',107,1,'',999,0.000,1195.20,996.00,0.00,0,0,1,'','精密窑炉烧制，确保瓷体均匀耐用不变形！外观时尚，新颖独特。专业化水道设计，排污更彻底干净。','','images/201312/thumb_img/25_thumb_G_1386157973309.jpg','images/201312/goods_img/25_G_1386157973070.jpg','images/201312/source_img/25_G_1386157973100.jpg',1,'',1,1,0,9,1386157973,100,0,1,1,1,0,0,1386493173,0,'',-1,-1,0,0),(26,13,'ECS000026','纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','+',846,1,'',997,0.000,2028.00,1690.00,1500.00,1386000000,1418140800,1,'','【赠送双合一排水管】全网销量第一实木浴室柜！进口橡木材质，木质坚实，纯手工实木雕花，尽显高端品质。 ','','images/201407/thumb_img/26_thumb_G_1406698568855.jpg','images/201407/goods_img/26_G_1406698568261.jpg','images/201407/source_img/26_G_1406698568256.jpg',1,'',1,1,0,16,1386158012,5,0,0,0,0,1,0,1406723167,1,'',-1,-1,2,0),(27,23,'ECS000027','[木木原]中式风格 实木双人床 纽西兰松木床','+',95,4,'',1000,0.000,1198.80,999.00,888.00,1406649600,1409328000,1,'','','<div style=\"margin:0px;color:#666666;vertical-align:baseline;\">\r\n	<a href=\"http://www.meilele.com/special/201407-662.html#thg=gaca&amp;adg=gaco&amp;adn=%E3%80%90%E5%8D%A7%E5%AE%A4%E3%80%91%E8%AF%A6%E6%83%85%E9%A1%B5%E5%86%85%E9%A1%B5%E5%B9%BF%E5%91%8A&amp;ado=1&amp;adc=0\" target=\"_blank\"><img alt=\"美国进口床垫\" src=\"http://image.meilele.com/images/201407/1406655451800252789.jpg\" width=\"980\" height=\"170\" /></a>\r\n</div>\r\n<div style=\"margin:0px;color:#666666;vertical-align:baseline;\" class=\"img_list\">\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1dcfe83d1f608da1d8673bd9891c90a0/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1dcfe83d1f608da1d8673bd9891c90a0/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1dcfe83d1f608da1d8673bd9891c90a0/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1dcfe83d1f608da1d8673bd9891c90a0/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1dcfe83d1f608da1d8673bd9891c90a0/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1dcfe83d1f608da1d8673bd9891c90a0/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1dcfe83d1f608da1d8673bd9891c90a0/6.jpg\" width=\"1024\" height=\"50\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6b078e6224e573e5b9346b1a6ec44b88/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6b078e6224e573e5b9346b1a6ec44b88/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6b078e6224e573e5b9346b1a6ec44b88/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6b078e6224e573e5b9346b1a6ec44b88/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6b078e6224e573e5b9346b1a6ec44b88/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6b078e6224e573e5b9346b1a6ec44b88/5.jpg\" width=\"1024\" height=\"32\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/da5d3d080e3cef990cb723697930a273/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/da5d3d080e3cef990cb723697930a273/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/da5d3d080e3cef990cb723697930a273/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/da5d3d080e3cef990cb723697930a273/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/da5d3d080e3cef990cb723697930a273/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/da5d3d080e3cef990cb723697930a273/5.jpg\" width=\"1024\" height=\"93\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/fd79d4cac6430069d32b21d01e67efdd/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/fd79d4cac6430069d32b21d01e67efdd/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/fd79d4cac6430069d32b21d01e67efdd/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/fd79d4cac6430069d32b21d01e67efdd/3.jpg\" width=\"1024\" height=\"70\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/478f6d54bef453b03e99fe661f1db516/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/478f6d54bef453b03e99fe661f1db516/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/478f6d54bef453b03e99fe661f1db516/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/478f6d54bef453b03e99fe661f1db516/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/478f6d54bef453b03e99fe661f1db516/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/478f6d54bef453b03e99fe661f1db516/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/478f6d54bef453b03e99fe661f1db516/6.jpg\" width=\"1024\" height=\"88\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/cd066b3d9fa96f80404c411433505f7c/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/cd066b3d9fa96f80404c411433505f7c/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/cd066b3d9fa96f80404c411433505f7c/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/cd066b3d9fa96f80404c411433505f7c/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/cd066b3d9fa96f80404c411433505f7c/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/cd066b3d9fa96f80404c411433505f7c/5.jpg\" width=\"1024\" height=\"79\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/dc6c226fbeacb4a4333a6a7656ff6223/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/dc6c226fbeacb4a4333a6a7656ff6223/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/dc6c226fbeacb4a4333a6a7656ff6223/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/dc6c226fbeacb4a4333a6a7656ff6223/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/dc6c226fbeacb4a4333a6a7656ff6223/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/dc6c226fbeacb4a4333a6a7656ff6223/5.jpg\" width=\"1024\" height=\"97\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0094a7e7cb94efd845ce06d5e5df34cc/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0094a7e7cb94efd845ce06d5e5df34cc/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0094a7e7cb94efd845ce06d5e5df34cc/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0094a7e7cb94efd845ce06d5e5df34cc/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0094a7e7cb94efd845ce06d5e5df34cc/4.jpg\" width=\"1024\" height=\"36\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/98ec3246bd24972b0191f9a283738156/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/98ec3246bd24972b0191f9a283738156/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/98ec3246bd24972b0191f9a283738156/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/98ec3246bd24972b0191f9a283738156/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/98ec3246bd24972b0191f9a283738156/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/98ec3246bd24972b0191f9a283738156/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/98ec3246bd24972b0191f9a283738156/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/98ec3246bd24972b0191f9a283738156/7.jpg\" width=\"1024\" height=\"10\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1a5937c50822851ddb5f69a85a804865/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1a5937c50822851ddb5f69a85a804865/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1a5937c50822851ddb5f69a85a804865/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1a5937c50822851ddb5f69a85a804865/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1a5937c50822851ddb5f69a85a804865/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1a5937c50822851ddb5f69a85a804865/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/1a5937c50822851ddb5f69a85a804865/6.jpg\" width=\"1024\" height=\"35\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f5a1e3a60109c289d7829af09d3dce13/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f5a1e3a60109c289d7829af09d3dce13/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f5a1e3a60109c289d7829af09d3dce13/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f5a1e3a60109c289d7829af09d3dce13/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f5a1e3a60109c289d7829af09d3dce13/4.jpg\" width=\"1024\" height=\"63\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20d3375164d163bf254d77d375c717ce/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20d3375164d163bf254d77d375c717ce/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20d3375164d163bf254d77d375c717ce/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20d3375164d163bf254d77d375c717ce/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20d3375164d163bf254d77d375c717ce/4.jpg\" width=\"1024\" height=\"28\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/3c894a740941d17ab7e9480a313909d2/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/3c894a740941d17ab7e9480a313909d2/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/3c894a740941d17ab7e9480a313909d2/2.jpg\" width=\"1024\" height=\"39\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/317a7a970adeea95924f82e405f4f171/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/317a7a970adeea95924f82e405f4f171/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/317a7a970adeea95924f82e405f4f171/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/317a7a970adeea95924f82e405f4f171/3.jpg\" width=\"1024\" height=\"9\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/65ec78e9fde6c1df7a22770bef1af5d7/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/65ec78e9fde6c1df7a22770bef1af5d7/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/65ec78e9fde6c1df7a22770bef1af5d7/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/65ec78e9fde6c1df7a22770bef1af5d7/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/65ec78e9fde6c1df7a22770bef1af5d7/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/65ec78e9fde6c1df7a22770bef1af5d7/5.jpg\" width=\"1024\" height=\"32\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/66a416e4bd8ce348d165197cb865b485/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/66a416e4bd8ce348d165197cb865b485/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/66a416e4bd8ce348d165197cb865b485/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/66a416e4bd8ce348d165197cb865b485/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/66a416e4bd8ce348d165197cb865b485/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/66a416e4bd8ce348d165197cb865b485/5.jpg\" width=\"1024\" height=\"94\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/81ba843daedf92bc801f28b3a24949f2/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/81ba843daedf92bc801f28b3a24949f2/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/81ba843daedf92bc801f28b3a24949f2/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/81ba843daedf92bc801f28b3a24949f2/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/81ba843daedf92bc801f28b3a24949f2/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/81ba843daedf92bc801f28b3a24949f2/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/81ba843daedf92bc801f28b3a24949f2/6.jpg\" width=\"1024\" height=\"78\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20c80d16b20c6459a2e560cdc6b937c6/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20c80d16b20c6459a2e560cdc6b937c6/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20c80d16b20c6459a2e560cdc6b937c6/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20c80d16b20c6459a2e560cdc6b937c6/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20c80d16b20c6459a2e560cdc6b937c6/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/20c80d16b20c6459a2e560cdc6b937c6/5.jpg\" width=\"1024\" height=\"13\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7c23a0223e74f6276ed55f196d72ac07/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7c23a0223e74f6276ed55f196d72ac07/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7c23a0223e74f6276ed55f196d72ac07/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7c23a0223e74f6276ed55f196d72ac07/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7c23a0223e74f6276ed55f196d72ac07/4.jpg\" width=\"1024\" height=\"49\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/176b72e3231bd6e588dd1a1fe41e7e26/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/176b72e3231bd6e588dd1a1fe41e7e26/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/176b72e3231bd6e588dd1a1fe41e7e26/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/176b72e3231bd6e588dd1a1fe41e7e26/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/176b72e3231bd6e588dd1a1fe41e7e26/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/176b72e3231bd6e588dd1a1fe41e7e26/5.jpg\" width=\"1024\" height=\"91\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0884b809dddc6b99c8143e0af6ed29ff/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0884b809dddc6b99c8143e0af6ed29ff/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0884b809dddc6b99c8143e0af6ed29ff/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0884b809dddc6b99c8143e0af6ed29ff/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/0884b809dddc6b99c8143e0af6ed29ff/4.jpg\" width=\"1024\" height=\"39\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7e555289ae01e6b32acf24cdddc1e2d8/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7e555289ae01e6b32acf24cdddc1e2d8/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7e555289ae01e6b32acf24cdddc1e2d8/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7e555289ae01e6b32acf24cdddc1e2d8/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7e555289ae01e6b32acf24cdddc1e2d8/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7e555289ae01e6b32acf24cdddc1e2d8/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7e555289ae01e6b32acf24cdddc1e2d8/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/7e555289ae01e6b32acf24cdddc1e2d8/7.jpg\" width=\"1024\" height=\"42\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f7e95dc68d9c497af0fca9fe8c773c8a/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f7e95dc68d9c497af0fca9fe8c773c8a/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f7e95dc68d9c497af0fca9fe8c773c8a/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f7e95dc68d9c497af0fca9fe8c773c8a/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f7e95dc68d9c497af0fca9fe8c773c8a/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f7e95dc68d9c497af0fca9fe8c773c8a/5.jpg\" width=\"1024\" height=\"100\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f0be72417c11706b99c075c859e40e1a/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f0be72417c11706b99c075c859e40e1a/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f0be72417c11706b99c075c859e40e1a/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/f0be72417c11706b99c075c859e40e1a/3.jpg\" width=\"1024\" height=\"72\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6d700a2f9da3dddb19c7fe56c3097c11/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6d700a2f9da3dddb19c7fe56c3097c11/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6d700a2f9da3dddb19c7fe56c3097c11/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6d700a2f9da3dddb19c7fe56c3097c11/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/6d700a2f9da3dddb19c7fe56c3097c11/4.jpg\" width=\"1024\" height=\"79\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/a6ddc5b207dc9124147b6610f66d3ea8/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/a6ddc5b207dc9124147b6610f66d3ea8/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/a6ddc5b207dc9124147b6610f66d3ea8/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/a6ddc5b207dc9124147b6610f66d3ea8/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/a6ddc5b207dc9124147b6610f66d3ea8/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/a6ddc5b207dc9124147b6610f66d3ea8/5.jpg\" width=\"1024\" height=\"90\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/d8c4a3a66989c05c3682be828e626daf/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/d8c4a3a66989c05c3682be828e626daf/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/d8c4a3a66989c05c3682be828e626daf/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/d8c4a3a66989c05c3682be828e626daf/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/d8c4a3a66989c05c3682be828e626daf/4.jpg\" width=\"1024\" height=\"71\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/93b915467bf36d501f947d076c907de5/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/93b915467bf36d501f947d076c907de5/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/93b915467bf36d501f947d076c907de5/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/93b915467bf36d501f947d076c907de5/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/93b915467bf36d501f947d076c907de5/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/93b915467bf36d501f947d076c907de5/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/93b915467bf36d501f947d076c907de5/6.jpg\" width=\"1024\" height=\"28\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/8eaaa29e7207b3f0182f2360cf16b0c8/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/8eaaa29e7207b3f0182f2360cf16b0c8/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/8eaaa29e7207b3f0182f2360cf16b0c8/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/8eaaa29e7207b3f0182f2360cf16b0c8/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/8eaaa29e7207b3f0182f2360cf16b0c8/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/664/8eaaa29e7207b3f0182f2360cf16b0c8/5.jpg\" width=\"1024\" height=\"44\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"1\" src=\"http://image.meilele.com/images/201407/1405642185815553667.jpg\" width=\"1024\" />\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"2\" src=\"http://image.meilele.com/images/201406/1401921898753926169.jpg\" width=\"1024\" />\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"3\" src=\"http://image.meilele.com/images/201404/1398119440564932944.jpg\" width=\"1024\" />\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"4\" src=\"http://image.meilele.com/images/201404/1398190729069421435.jpg\" width=\"1024\" />\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"5\" src=\"http://image.meilele.com/images/201404/1398190773928261480.jpg\" width=\"1024\" />\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"6\" src=\"http://image.meilele.com/images/201404/1398359121705684943.jpg\" width=\"1024\" />\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"7\" src=\"http://image.meilele.com/images/201404/1398190869169484357.jpg\" width=\"1024\" />\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"8\" src=\"http://image.meilele.com/images/201404/1398402652875664849.jpg\" width=\"1024\" />\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"9\" src=\"http://image.meilele.com/images/201404/1398465458088874561.jpg\" width=\"1024\" />\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<img alt=\"10\" src=\"http://image.meilele.com/images/201405/1400120915736401736.jpg\" width=\"1024\" />\r\n	</div>\r\n</div>','images/201407/thumb_img/27_thumb_G_1406698120858.jpg','images/201407/goods_img/27_G_1406698120317.jpg','images/201407/source_img/27_G_1406698120889.jpg',1,'',1,1,0,9,1406698120,100,0,0,1,0,1,0,1406698272,0,'',-1,-1,0,NULL),(28,3,'ECS000028','[优曼]	 一起走过的日子全棉喷气印花四件套 ','+',26,4,'',1000,0.000,360.00,300.00,280.00,1406649600,1439395200,1,'','','<div style=\"margin:0px;color:#666666;vertical-align:baseline;\">\r\n	<a href=\"http://www.meilele.com/special/201407-662.html#thg=gaca&amp;adg=gaco&amp;adn=%E3%80%90%E5%BA%8A%E4%B8%8A%E7%94%A8%E5%93%81%E3%80%91%E8%AF%A6%E6%83%85%E9%A1%B5%E5%86%85%E9%A1%B5%E5%B9%BF%E5%91%8A&amp;ado=1&amp;adc=0\" target=\"_blank\"><img alt=\"美国进口床垫\" src=\"http://image.meilele.com/images/201407/1406656861863463409.jpg\" width=\"980\" height=\"170\" /></a>\r\n</div>\r\n<div style=\"margin:0px;color:#666666;vertical-align:baseline;\" class=\"img_list\">\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/8.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/23460fc33ecc291d6ed3259a4357183e/9.jpg\" width=\"1024\" height=\"79\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/b36dc97e96935350a56e42224971c6f7/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/b36dc97e96935350a56e42224971c6f7/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/b36dc97e96935350a56e42224971c6f7/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/b36dc97e96935350a56e42224971c6f7/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/407/b36dc97e96935350a56e42224971c6f7/4.jpg\" width=\"1024\" height=\"47\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/002d5ff68b6931cd484cada34ab9f31d/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/002d5ff68b6931cd484cada34ab9f31d/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/002d5ff68b6931cd484cada34ab9f31d/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/002d5ff68b6931cd484cada34ab9f31d/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/002d5ff68b6931cd484cada34ab9f31d/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/002d5ff68b6931cd484cada34ab9f31d/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/002d5ff68b6931cd484cada34ab9f31d/6.jpg\" width=\"1024\" height=\"97\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/3fbece623ca2ec19e772752676c5f71c/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/3fbece623ca2ec19e772752676c5f71c/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/3fbece623ca2ec19e772752676c5f71c/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/3fbece623ca2ec19e772752676c5f71c/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/3fbece623ca2ec19e772752676c5f71c/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/3fbece623ca2ec19e772752676c5f71c/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/3fbece623ca2ec19e772752676c5f71c/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/3fbece623ca2ec19e772752676c5f71c/7.jpg\" width=\"1024\" height=\"84\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/0e6620f99f1a0b310a24b8a4cc1d7340/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/0e6620f99f1a0b310a24b8a4cc1d7340/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/0e6620f99f1a0b310a24b8a4cc1d7340/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/0e6620f99f1a0b310a24b8a4cc1d7340/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/0e6620f99f1a0b310a24b8a4cc1d7340/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/0e6620f99f1a0b310a24b8a4cc1d7340/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/0e6620f99f1a0b310a24b8a4cc1d7340/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/0e6620f99f1a0b310a24b8a4cc1d7340/7.jpg\" width=\"1024\" height=\"15\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/b73ac1b403abc48daf73dfc9ec610faa/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/b73ac1b403abc48daf73dfc9ec610faa/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/b73ac1b403abc48daf73dfc9ec610faa/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/b73ac1b403abc48daf73dfc9ec610faa/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/b73ac1b403abc48daf73dfc9ec610faa/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/b73ac1b403abc48daf73dfc9ec610faa/5.jpg\" width=\"1024\" height=\"43\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/a1f4a7c75ebf37a1c8bdfc75f4d3f6c8/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/a1f4a7c75ebf37a1c8bdfc75f4d3f6c8/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/a1f4a7c75ebf37a1c8bdfc75f4d3f6c8/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/a1f4a7c75ebf37a1c8bdfc75f4d3f6c8/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/a1f4a7c75ebf37a1c8bdfc75f4d3f6c8/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/a1f4a7c75ebf37a1c8bdfc75f4d3f6c8/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/a1f4a7c75ebf37a1c8bdfc75f4d3f6c8/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/a1f4a7c75ebf37a1c8bdfc75f4d3f6c8/7.jpg\" width=\"1024\" height=\"35\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/76c396198d6aed4da192a6e2d00c5d4a/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/76c396198d6aed4da192a6e2d00c5d4a/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/76c396198d6aed4da192a6e2d00c5d4a/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/76c396198d6aed4da192a6e2d00c5d4a/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/76c396198d6aed4da192a6e2d00c5d4a/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/76c396198d6aed4da192a6e2d00c5d4a/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/76c396198d6aed4da192a6e2d00c5d4a/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/76c396198d6aed4da192a6e2d00c5d4a/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/76c396198d6aed4da192a6e2d00c5d4a/8.jpg\" width=\"1024\" height=\"19\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/137fcf71f55aae30bf5ca5052a314070/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/137fcf71f55aae30bf5ca5052a314070/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/137fcf71f55aae30bf5ca5052a314070/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/137fcf71f55aae30bf5ca5052a314070/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/137fcf71f55aae30bf5ca5052a314070/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/137fcf71f55aae30bf5ca5052a314070/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/137fcf71f55aae30bf5ca5052a314070/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/137fcf71f55aae30bf5ca5052a314070/7.jpg\" width=\"1024\" height=\"19\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/abcd452c5f4cfa1609704b5837c6a2dc/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/abcd452c5f4cfa1609704b5837c6a2dc/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/abcd452c5f4cfa1609704b5837c6a2dc/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/abcd452c5f4cfa1609704b5837c6a2dc/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/abcd452c5f4cfa1609704b5837c6a2dc/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/abcd452c5f4cfa1609704b5837c6a2dc/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/abcd452c5f4cfa1609704b5837c6a2dc/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/abcd452c5f4cfa1609704b5837c6a2dc/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/abcd452c5f4cfa1609704b5837c6a2dc/8.jpg\" width=\"1024\" height=\"73\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/2c134ab9f2f0f5f7ad397f1d8fefc6ed/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/2c134ab9f2f0f5f7ad397f1d8fefc6ed/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/2c134ab9f2f0f5f7ad397f1d8fefc6ed/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/2c134ab9f2f0f5f7ad397f1d8fefc6ed/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/2c134ab9f2f0f5f7ad397f1d8fefc6ed/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/206/2c134ab9f2f0f5f7ad397f1d8fefc6ed/5.jpg\" width=\"1024\" height=\"91\" /></a>\r\n	</div>\r\n</div>','images/201407/thumb_img/28_thumb_G_1406722470340.jpg','images/201407/goods_img/28_G_1406722470234.jpg','images/201407/source_img/28_G_1406722470075.jpg',1,'',1,1,0,3,1406722470,100,0,0,1,0,1,0,1406722579,0,'',-1,-1,0,NULL),(29,17,'ECS000029','[唯萨] 花开富贵豪华宫廷不锈钢三开门蚊帐(1.5米床用）','+',28,4,'',1000,0.000,177.60,148.00,0.00,0,0,1,'','','<div style=\"margin:0px;color:#666666;vertical-align:baseline;\">\r\n	<a href=\"http://www.meilele.com/special/201407-662.html#thg=gaca&adg=gaco&adn=%E3%80%90%E5%BA%8A%E4%B8%8A%E7%94%A8%E5%93%81%E3%80%91%E8%AF%A6%E6%83%85%E9%A1%B5%E5%86%85%E9%A1%B5%E5%B9%BF%E5%91%8A&ado=1&adc=0\" target=\"_blank\"><img alt=\"美国进口床垫\" src=\"http://image.meilele.com/images/201407/1406656861863463409.jpg\" width=\"980\" height=\"170\" /></a>\r\n</div>\r\n<div style=\"margin:0px;color:#666666;vertical-align:baseline;\" class=\"img_list\">\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/8.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/090eccd752ba7d79dbb22abd77544ffc/9.jpg\" width=\"1024\" height=\"46\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b7066f264b60b342b16bc6541de945f0/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b7066f264b60b342b16bc6541de945f0/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b7066f264b60b342b16bc6541de945f0/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b7066f264b60b342b16bc6541de945f0/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b7066f264b60b342b16bc6541de945f0/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b7066f264b60b342b16bc6541de945f0/5.jpg\" width=\"1024\" height=\"53\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/8.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/35052daa91f1f78ab6fe8e093ef7bc5b/9.jpg\" width=\"1024\" height=\"96\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/8.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/17585f31258cd639fa9793eb17fe4db1/9.jpg\" width=\"1024\" height=\"20\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/8.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/4e196c5ab8aee392503ac75accaf8ce6/9.jpg\" width=\"1024\" height=\"22\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/8.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/11ece0e255460f6ed25282fab40d87c3/9.jpg\" width=\"1024\" height=\"31\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b8b26172a3b48916e9d99c67de1acd93/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b8b26172a3b48916e9d99c67de1acd93/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b8b26172a3b48916e9d99c67de1acd93/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b8b26172a3b48916e9d99c67de1acd93/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b8b26172a3b48916e9d99c67de1acd93/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b8b26172a3b48916e9d99c67de1acd93/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b8b26172a3b48916e9d99c67de1acd93/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b8b26172a3b48916e9d99c67de1acd93/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/499/b8b26172a3b48916e9d99c67de1acd93/8.jpg\" width=\"1024\" height=\"47\" /></a>\r\n	</div>\r\n</div>','images/201407/thumb_img/29_thumb_G_1406722713936.jpg','images/201407/goods_img/29_G_1406722713168.jpg','images/201407/source_img/29_G_1406722713934.jpg',1,'',1,1,0,1,1406722713,100,0,0,1,0,0,0,1406723128,0,'',-1,-1,0,NULL),(30,19,'ECS000030','[悦邻家居]	 欧式奢华提花高档定制客厅卧室半遮光窗帘 素雅灰','+',43,4,'',1000,0.000,213.60,178.00,0.00,0,0,1,'','[包快递]定高2.7米买宽 ，本产品单价包含（一米布，一米纱，帘头花边，纱帘珠子，富贵绳，挂钩等各种辅料）包邮','<div style=\"margin:0px;color:#666666;vertical-align:baseline;\">\r\n	<a href=\"http://www.meilele.com/special/201407-662.html#thg=gaca&adg=gaco&adn=%E3%80%90%E5%B8%83%E8%89%BA%E7%BB%87%E7%89%A9%E3%80%91%E8%AF%A6%E6%83%85%E9%A1%B5%E5%86%85%E9%A1%B5%E5%B9%BF%E5%91%8A&ado=1&adc=0\" target=\"_blank\"><img alt=\"美国进口床垫\" src=\"http://image.meilele.com/images/201407/1406656832723356741.jpg\" width=\"980\" height=\"170\" /></a>\r\n</div>\r\n<div style=\"margin:0px;color:#666666;vertical-align:baseline;\" class=\"img_list\">\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7f684e0cac3be71175a1bcacb7a737fa/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7f684e0cac3be71175a1bcacb7a737fa/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7f684e0cac3be71175a1bcacb7a737fa/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7f684e0cac3be71175a1bcacb7a737fa/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7f684e0cac3be71175a1bcacb7a737fa/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7f684e0cac3be71175a1bcacb7a737fa/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7f684e0cac3be71175a1bcacb7a737fa/6.jpg\" width=\"1024\" height=\"78\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/bbef19e4f9c69b0c97baf99df4ad7454/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/bbef19e4f9c69b0c97baf99df4ad7454/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/bbef19e4f9c69b0c97baf99df4ad7454/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/bbef19e4f9c69b0c97baf99df4ad7454/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/bbef19e4f9c69b0c97baf99df4ad7454/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/bbef19e4f9c69b0c97baf99df4ad7454/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/bbef19e4f9c69b0c97baf99df4ad7454/6.jpg\" width=\"1024\" height=\"83\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/3c32cb1d5a22b20ce2e87bb9bdbaab9a/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/3c32cb1d5a22b20ce2e87bb9bdbaab9a/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/3c32cb1d5a22b20ce2e87bb9bdbaab9a/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/3c32cb1d5a22b20ce2e87bb9bdbaab9a/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/3c32cb1d5a22b20ce2e87bb9bdbaab9a/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/3c32cb1d5a22b20ce2e87bb9bdbaab9a/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/3c32cb1d5a22b20ce2e87bb9bdbaab9a/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/3c32cb1d5a22b20ce2e87bb9bdbaab9a/7.jpg\" width=\"1024\" height=\"7\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/14a78d492ba92beee508b5784d8615ef/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/14a78d492ba92beee508b5784d8615ef/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/14a78d492ba92beee508b5784d8615ef/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/14a78d492ba92beee508b5784d8615ef/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/14a78d492ba92beee508b5784d8615ef/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/14a78d492ba92beee508b5784d8615ef/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/14a78d492ba92beee508b5784d8615ef/6.jpg\" width=\"1024\" height=\"19\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/f00e4af1ba4d2ef33278be631e2e31bb/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/f00e4af1ba4d2ef33278be631e2e31bb/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/f00e4af1ba4d2ef33278be631e2e31bb/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/f00e4af1ba4d2ef33278be631e2e31bb/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/f00e4af1ba4d2ef33278be631e2e31bb/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/f00e4af1ba4d2ef33278be631e2e31bb/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/f00e4af1ba4d2ef33278be631e2e31bb/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/f00e4af1ba4d2ef33278be631e2e31bb/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/f00e4af1ba4d2ef33278be631e2e31bb/8.jpg\" width=\"1024\" height=\"56\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ebd20fc4b447779fa679b68274995c58/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ebd20fc4b447779fa679b68274995c58/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ebd20fc4b447779fa679b68274995c58/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ebd20fc4b447779fa679b68274995c58/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ebd20fc4b447779fa679b68274995c58/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ebd20fc4b447779fa679b68274995c58/5.jpg\" width=\"1024\" height=\"18\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7cd05324dad78ab29d49b8bcbc6c8a8b/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7cd05324dad78ab29d49b8bcbc6c8a8b/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7cd05324dad78ab29d49b8bcbc6c8a8b/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7cd05324dad78ab29d49b8bcbc6c8a8b/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/7cd05324dad78ab29d49b8bcbc6c8a8b/4.jpg\" width=\"1024\" height=\"3\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ee80d4e055e781f47ed042bda1ba6eed/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ee80d4e055e781f47ed042bda1ba6eed/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ee80d4e055e781f47ed042bda1ba6eed/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ee80d4e055e781f47ed042bda1ba6eed/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/ee80d4e055e781f47ed042bda1ba6eed/4.jpg\" width=\"1024\" height=\"54\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/8.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/1031ed079ecc9229bb48aaefc25f8967/9.jpg\" width=\"1024\" height=\"68\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/6bb5a9fc2ecbf05ef810152bc7631c44/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/6bb5a9fc2ecbf05ef810152bc7631c44/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/6bb5a9fc2ecbf05ef810152bc7631c44/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/6bb5a9fc2ecbf05ef810152bc7631c44/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/6bb5a9fc2ecbf05ef810152bc7631c44/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/6bb5a9fc2ecbf05ef810152bc7631c44/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/6bb5a9fc2ecbf05ef810152bc7631c44/6.jpg\" width=\"1024\" height=\"63\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/9f4b6d4bebbde320ba465aa71c3df9cd/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/9f4b6d4bebbde320ba465aa71c3df9cd/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/9f4b6d4bebbde320ba465aa71c3df9cd/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/9f4b6d4bebbde320ba465aa71c3df9cd/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/9f4b6d4bebbde320ba465aa71c3df9cd/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/9f4b6d4bebbde320ba465aa71c3df9cd/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/569/9f4b6d4bebbde320ba465aa71c3df9cd/6.jpg\" width=\"1024\" height=\"99\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/582/15319fd3594efbb250e4d917a8293099/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/582/15319fd3594efbb250e4d917a8293099/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/582/15319fd3594efbb250e4d917a8293099/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/582/15319fd3594efbb250e4d917a8293099/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/582/15319fd3594efbb250e4d917a8293099/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/582/15319fd3594efbb250e4d917a8293099/5.jpg\" width=\"1024\" height=\"57\" /></a>\r\n	</div>\r\n</div>','images/201407/thumb_img/30_thumb_G_1406722990658.jpg','images/201407/goods_img/30_G_1406722990817.jpg','images/201407/source_img/30_G_1406722990645.jpg',1,'',1,1,0,1,1406722990,100,0,0,1,0,0,0,1406724096,0,'',-1,-1,0,NULL),(31,19,'ECS000031','[小日子]	 高档半遮光窗帘定制 速写英伦','+',44,4,'',1000,0.000,100.80,84.00,0.00,0,0,1,'','','<div style=\"margin:0px;color:#666666;vertical-align:baseline;\">\r\n	<a href=\"http://www.meilele.com/special/201407-662.html#thg=gaca&amp;adg=gaco&amp;adn=%E3%80%90%E5%B8%83%E8%89%BA%E7%BB%87%E7%89%A9%E3%80%91%E8%AF%A6%E6%83%85%E9%A1%B5%E5%86%85%E9%A1%B5%E5%B9%BF%E5%91%8A&amp;ado=1&amp;adc=0\" target=\"_blank\"><img alt=\"美国进口床垫\" src=\"http://image.meilele.com/images/201407/1406656832723356741.jpg\" width=\"980\" height=\"170\" /></a>\r\n</div>\r\n<div style=\"margin:0px;color:#666666;vertical-align:baseline;\" class=\"img_list\">\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/ae0a4db530158a1e2b1b9fcca3412bb0/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/ae0a4db530158a1e2b1b9fcca3412bb0/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/ae0a4db530158a1e2b1b9fcca3412bb0/2.jpg\" width=\"970\" height=\"6\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/b33e176d6ddc9341e3051c03ed81d0bc/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/b33e176d6ddc9341e3051c03ed81d0bc/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/b33e176d6ddc9341e3051c03ed81d0bc/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/b33e176d6ddc9341e3051c03ed81d0bc/3.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/b33e176d6ddc9341e3051c03ed81d0bc/4.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/b33e176d6ddc9341e3051c03ed81d0bc/5.jpg\" width=\"970\" height=\"84\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/3.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/4.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/5.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/6.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/7.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/8.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/9.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/10.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/11.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/12.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/7bbe0e5cec3fc953bd37e0031c6595b0/13.jpg\" width=\"970\" height=\"11\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/4de61207c9562665a54836ed8613c21a/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/4de61207c9562665a54836ed8613c21a/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/4de61207c9562665a54836ed8613c21a/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/4de61207c9562665a54836ed8613c21a/3.jpg\" width=\"970\" height=\"99\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/e31566a24e323b7b9d6e863a6836e177/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/e31566a24e323b7b9d6e863a6836e177/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/e31566a24e323b7b9d6e863a6836e177/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/e31566a24e323b7b9d6e863a6836e177/3.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/e31566a24e323b7b9d6e863a6836e177/4.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/e31566a24e323b7b9d6e863a6836e177/5.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/e31566a24e323b7b9d6e863a6836e177/6.jpg\" width=\"970\" height=\"96\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/d15992984ae9a3d6e7aa7a7ed2bf36df/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/d15992984ae9a3d6e7aa7a7ed2bf36df/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/d15992984ae9a3d6e7aa7a7ed2bf36df/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/d15992984ae9a3d6e7aa7a7ed2bf36df/3.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/d15992984ae9a3d6e7aa7a7ed2bf36df/4.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/d15992984ae9a3d6e7aa7a7ed2bf36df/5.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/d15992984ae9a3d6e7aa7a7ed2bf36df/6.jpg\" width=\"970\" height=\"86\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/3.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/4.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/5.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/6.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/7.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/8.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/9.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/10.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/11.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/12.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/13.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/14.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/15.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/16.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/17.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/de954dde094b36205e2792f42e8c1dcc/18.jpg\" width=\"970\" height=\"59\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/3.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/4.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/5.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/6.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/7.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/8.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/9.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/10.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/11.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/61446eb18db893fd9f82381cc899ad21/12.jpg\" width=\"970\" height=\"73\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/3.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/4.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/5.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/6.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/7.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/8.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/9.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/10.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/11.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/12.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/13.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/14.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/15.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/16.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/79008a6fee61c917f75c2be8f3c847f8/17.jpg\" width=\"970\" height=\"58\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/3.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/4.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/5.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/6.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/7.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/8.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/9.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/10.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/11.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/344/fda56959ba3e9266b845a8a5614ffe07/12.jpg\" width=\"970\" height=\"43\" /></a>\r\n	</div>\r\n	<div style=\"text-align:center !important;margin:10px 0px 0px -22px;font-size:12px;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n		<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/0.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/1.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/2.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/3.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/4.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/5.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/6.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/7.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/8.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/9.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/10.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/11.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/12.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/13.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/14.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/15.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/16.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/17.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/18.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/19.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/20.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/21.jpg\" width=\"970\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/357/2b974be2460918b41da87508d4743c57/22.jpg\" width=\"970\" height=\"20\" /></a>\r\n	</div>\r\n</div>','images/201407/thumb_img/31_thumb_G_1406723378420.jpg','images/201407/goods_img/31_G_1406723378115.jpg','images/201407/source_img/31_G_1406723378902.jpg',1,'',1,1,0,0,1406723378,100,0,0,1,0,0,0,1406724095,0,'',-1,-1,0,NULL),(32,18,'ECS000032','[SFMOBUL安君美]	 百变吊带可穿浴巾 140*70cm 粉红','+',89,4,'',997,0.000,33.60,28.00,0.00,0,0,1,'','[包快递]特价中，柔软舒适，穿着很舒服，很好看，穿着简单方便。','<div style=\"text-align:center !important;margin:10px 0px 0px -22px;color:#666666;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n	<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/aaa3c58584d196b7a93bb2b774ff4f7e/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/aaa3c58584d196b7a93bb2b774ff4f7e/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/aaa3c58584d196b7a93bb2b774ff4f7e/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/aaa3c58584d196b7a93bb2b774ff4f7e/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/aaa3c58584d196b7a93bb2b774ff4f7e/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/aaa3c58584d196b7a93bb2b774ff4f7e/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/aaa3c58584d196b7a93bb2b774ff4f7e/6.jpg\" width=\"1024\" height=\"78\" /></a>\r\n</div>\r\n<div style=\"text-align:center !important;margin:10px 0px 0px -22px;color:#666666;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n	<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/8.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/9.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/10.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/11.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/12.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/13.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/14.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/b36226a26daed644ca8ec3b015c08dbc/15.jpg\" width=\"1024\" height=\"36\" /></a>\r\n</div>\r\n<div style=\"text-align:center !important;margin:10px 0px 0px -22px;color:#666666;vertical-align:baseline;\" class=\"mt10 img_box c\">\r\n	<a href=\"javascript:;\"><img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/0.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/1.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/2.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/3.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/4.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/5.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/6.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/7.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/8.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/9.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/10.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/11.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/12.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/13.jpg\" width=\"1024\" height=\"100\" /><br />\r\n<img alt=\"\" src=\"http://image.meilele.com/images/169aacc76bd1124adcb36aa11cf55713/219/90b5d2c3cf9909fa0ceba6a242279cea/14.jpg\" width=\"1024\" height=\"18\" /></a>\r\n</div>','images/201407/thumb_img/32_thumb_G_1406724021887.jpg','images/201407/goods_img/32_G_1406724021106.jpg','images/201407/source_img/32_G_1406724021247.jpg',1,'',1,1,0,0,1406724021,100,0,0,1,0,0,0,1408698760,0,'',100,-1,0,NULL);
/*!40000 ALTER TABLE `ecs_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_goods_activity`
--

DROP TABLE IF EXISTS `ecs_goods_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_title` text NOT NULL,
  `group_img` varchar(50) NOT NULL,
  `isg_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isg_rs` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_rs` int(11) NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_goods_activity`
--

LOCK TABLES `ecs_goods_activity` WRITE;
/*!40000 ALTER TABLE `ecs_goods_activity` DISABLE KEYS */;
INSERT INTO `ecs_goods_activity` VALUES (1,'美式古典	双面描金雕花排骨架床','',1,1,'美式古典	双面描金雕花排骨架床',1385654400,1480694400,0,'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:100;s:5:\"price\";d:1600;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:100;}',0,'美式古典	双面描金雕花排骨架床','data/group_img/1407561488895556522.png',1,1,306),(2,'欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','',1,2,'欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床',1385654400,1480694400,0,'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:100;s:5:\"price\";d:2000;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:10;}',0,'[鸥达] 橡木爵士白雕刻卫浴柜','data/group_img/1385741056654974675.jpg',1,1,383),(3,'欧式田园	粉红玫瑰立体雕花排骨架床','',1,3,'欧式田园	粉红玫瑰立体雕花排骨架床',1385568000,1480694400,0,'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:100;s:5:\"price\";d:2000;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:0;}',0,'[鸥达] 落地式实木浴室柜 欧','data/group_img/1385741063307061988.jpg',0,0,460),(4,'地中海风格 美国进口白杨木双人床','',1,5,'地中海风格 美国进口白杨木双人床',1385481600,1480694400,0,'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:50;s:5:\"price\";d:1800;}}s:15:\"restrict_amount\";i:0;s:13:\"gift_integral\";i:0;s:7:\"deposit\";d:10;}',0,'[赛朵] 磨砂玻璃灯罩 吸顶灯','data/group_img/1385741071103455054.jpg',0,0,218),(5,'客厅-功能沙发客厅5件套（1+2+3+1茶几+1电视柜）','超值礼包活动描述',4,0,'',1385972820,1483432020,0,'a:1:{s:13:\"package_price\";s:5:\"10000\";}',0,'','',0,0,0),(6,'餐厅-6件套（1桌+4椅+1吊灯）','',4,0,'',1385976480,1388741280,0,'a:1:{s:13:\"package_price\";s:4:\"9800\";}',0,'','',0,0,0),(7,'卧房-3套装（1.5米床+1床头柜+1吸顶灯）','',4,0,'',1385976960,1388741760,0,'a:1:{s:13:\"package_price\";s:4:\"8800\";}',0,'','',0,0,0),(8,'客厅-3套装（1转角沙发+1吸顶灯+1茶几）','',4,0,'',1385977260,1388742060,0,'a:1:{s:13:\"package_price\";s:4:\"8000\";}',0,'','',0,0,0),(9,'客厅-时尚经典 带储物功能真皮转角沙发(1+3+左贵妃)','',4,0,'',1385979780,1483438980,0,'a:1:{s:13:\"package_price\";s:5:\"10000\";}',0,'','',0,0,0),(10,'书房-家具3件套装-835','',4,0,'',1386000660,1451837460,0,'a:1:{s:13:\"package_price\";s:4:\"8000\";}',0,'','',0,0,0),(11,'书房-家具3套装','',4,0,'',1386000780,1483459980,0,'a:1:{s:13:\"package_price\";s:4:\"8800\";}',0,'','',0,0,0),(12,'餐厅测试测试','餐厅测试测试测试测试测试测试测试测试测试测试',4,0,'',1402645380,1405237380,0,'a:1:{s:13:\"package_price\";s:4:\"5000\";}',0,'','',0,0,0),(13,'其才网络美乐乐源码第二版拍卖测试','其才网络美乐乐源码第二版拍卖测试',2,17,'LED护眼吸顶灯 高抗冲亚克力 客厅吸顶灯',1407168000,1441900800,0,'a:5:{s:7:\"deposit\";d:50;s:11:\"start_price\";d:20;s:9:\"end_price\";d:500;s:9:\"amplitude\";d:5;s:6:\"no_top\";i:0;}',0,'','',0,0,0),(14,'222222222222','2222222222222222222',2,24,'双人多功能按摩浴缸 亚克力浴缸 双裙边（左裙）浴缸',1407168000,1443024000,0,'a:5:{s:7:\"deposit\";d:22;s:11:\"start_price\";d:22;s:9:\"end_price\";d:33;s:9:\"amplitude\";d:2;s:6:\"no_top\";i:0;}',0,'','',0,0,0);
/*!40000 ALTER TABLE `ecs_goods_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_goods_article`
--

DROP TABLE IF EXISTS `ecs_goods_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_goods_article`
--

LOCK TABLES `ecs_goods_article` WRITE;
/*!40000 ALTER TABLE `ecs_goods_article` DISABLE KEYS */;
INSERT INTO `ecs_goods_article` VALUES (1,33,0),(1,46,0),(2,33,0),(2,46,0),(3,33,0),(3,46,0),(4,33,0),(4,46,0),(5,33,0),(5,46,0),(6,33,0),(6,46,0);
/*!40000 ALTER TABLE `ecs_goods_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_goods_attr`
--

DROP TABLE IF EXISTS `ecs_goods_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_goods_attr`
--

LOCK TABLES `ecs_goods_attr` WRITE;
/*!40000 ALTER TABLE `ecs_goods_attr` DISABLE KEYS */;
INSERT INTO `ecs_goods_attr` VALUES (1,1,1,'田园','0'),(2,1,2,'实木','0'),(3,1,3,'实木床','0'),(4,1,4,'地中海1.5米床','10'),(5,1,4,'地中海1.8米床','20'),(6,1,4,'地中海1.2米床','30'),(8,1,5,'1.815*2.01米',''),(9,1,5,'1.515*2.01米',''),(10,2,4,'地中海1.5米床',''),(11,2,4,'地中海1.2米床',''),(16,26,4,'地中海1.8米床','800'),(15,26,4,'地中海1.5米床','500'),(17,26,7,'黑色','500'),(18,26,7,'紫色','200'),(19,26,7,'白色','100');
/*!40000 ALTER TABLE `ecs_goods_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_goods_cat`
--

DROP TABLE IF EXISTS `ecs_goods_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_goods_cat`
--

LOCK TABLES `ecs_goods_cat` WRITE;
/*!40000 ALTER TABLE `ecs_goods_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_goods_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_goods_gallery`
--

DROP TABLE IF EXISTS `ecs_goods_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_goods_gallery`
--

LOCK TABLES `ecs_goods_gallery` WRITE;
/*!40000 ALTER TABLE `ecs_goods_gallery` DISABLE KEYS */;
INSERT INTO `ecs_goods_gallery` VALUES (11,7,'images/201312/goods_img/7_P_1386083114061.jpg','','images/201312/thumb_img/7_thumb_P_1386083114958.jpg','images/201312/source_img/7_P_1386083114514.jpg'),(2,2,'images/201311/goods_img/2_P_1385536310108.jpg','','images/201311/thumb_img/2_thumb_P_1385536310776.jpg','images/201311/source_img/2_P_1385536310561.jpg'),(3,3,'images/201311/goods_img/3_P_1385536398120.jpg','','images/201311/thumb_img/3_thumb_P_1385536398166.jpg','images/201311/source_img/3_P_1385536398939.jpg'),(4,4,'images/201311/goods_img/4_P_1385536464031.jpg','','images/201311/thumb_img/4_thumb_P_1385536464671.jpg','images/201311/source_img/4_P_1385536464311.jpg'),(5,5,'images/201311/goods_img/5_P_1385536549811.jpg','','images/201311/thumb_img/5_thumb_P_1385536550181.jpg','images/201311/source_img/5_P_1385536549341.jpg'),(6,6,'images/201311/goods_img/6_P_1385536616227.jpg','','images/201311/thumb_img/6_thumb_P_1385536616587.jpg','images/201311/source_img/6_P_1385536616397.jpg'),(7,1,'images/201312/goods_img/1_P_1386074915744.png','','images/201312/thumb_img/1_thumb_P_1386074915701.jpg','images/201312/source_img/1_P_1386074915916.png'),(8,1,'images/201312/goods_img/1_P_1386074916591.png','','images/201312/thumb_img/1_thumb_P_1386074916718.jpg','images/201312/source_img/1_P_1386074916473.png'),(9,1,'images/201312/goods_img/1_P_1386074916410.png','','images/201312/thumb_img/1_thumb_P_1386074916120.jpg','images/201312/source_img/1_P_1386074916388.png'),(10,1,'images/201312/goods_img/1_P_1386074916734.png','','images/201312/thumb_img/1_thumb_P_1386074916751.jpg','images/201312/source_img/1_P_1386074916081.png'),(12,8,'images/201312/goods_img/8_P_1386083156535.jpg','','images/201312/thumb_img/8_thumb_P_1386083156858.jpg','images/201312/source_img/8_P_1386083156253.jpg'),(13,9,'images/201312/goods_img/9_P_1386083216829.jpg','','images/201312/thumb_img/9_thumb_P_1386083216226.jpg','images/201312/source_img/9_P_1386083216682.jpg'),(14,10,'images/201312/goods_img/10_P_1386083286231.jpg','','images/201312/thumb_img/10_thumb_P_1386083286098.jpg','images/201312/source_img/10_P_1386083286414.jpg'),(15,11,'images/201312/goods_img/11_P_1386083439022.jpg','','images/201312/thumb_img/11_thumb_P_1386083439829.jpg','images/201312/source_img/11_P_1386083439985.jpg'),(16,12,'images/201312/goods_img/12_P_1386083510001.jpg','','images/201312/thumb_img/12_thumb_P_1386083510770.jpg','images/201312/source_img/12_P_1386083510161.jpg'),(17,13,'images/201312/goods_img/13_P_1386083574979.jpg','','images/201312/thumb_img/13_thumb_P_1386083574619.jpg','images/201312/source_img/13_P_1386083574365.jpg'),(18,14,'images/201312/goods_img/14_P_1386083649196.jpg','','images/201312/thumb_img/14_thumb_P_1386083649813.jpg','images/201312/source_img/14_P_1386083649917.jpg'),(19,15,'images/201312/goods_img/15_P_1386157438044.jpg','','images/201312/thumb_img/15_thumb_P_1386157438602.jpg','images/201312/source_img/15_P_1386157438335.jpg'),(20,16,'images/201312/goods_img/16_P_1386157479147.jpg','','images/201312/thumb_img/16_thumb_P_1386157479790.jpg','images/201312/source_img/16_P_1386157479264.jpg'),(21,17,'images/201312/goods_img/17_P_1386157520459.jpg','','images/201312/thumb_img/17_thumb_P_1386157520503.jpg','images/201312/source_img/17_P_1386157520243.jpg'),(22,18,'images/201312/goods_img/18_P_1386157585390.jpg','','images/201312/thumb_img/18_thumb_P_1386157585936.jpg','images/201312/source_img/18_P_1386157585122.jpg'),(23,19,'images/201312/goods_img/19_P_1386157690491.jpg','','images/201312/thumb_img/19_thumb_P_1386157690680.jpg','images/201312/source_img/19_P_1386157690148.jpg'),(24,20,'images/201312/goods_img/20_P_1386157724916.jpg','','images/201312/thumb_img/20_thumb_P_1386157724506.jpg','images/201312/source_img/20_P_1386157724494.jpg'),(25,21,'images/201312/goods_img/21_P_1386157760718.jpg','','images/201312/thumb_img/21_thumb_P_1386157760223.jpg','images/201312/source_img/21_P_1386157760691.jpg'),(26,22,'images/201312/goods_img/22_P_1386157797299.jpg','','images/201312/thumb_img/22_thumb_P_1386157797078.jpg','images/201312/source_img/22_P_1386157797016.jpg'),(27,23,'images/201312/goods_img/23_P_1386157899392.jpg','','images/201312/thumb_img/23_thumb_P_1386157899465.jpg','images/201312/source_img/23_P_1386157899851.jpg'),(28,24,'images/201312/goods_img/24_P_1386157931368.jpg','','images/201312/thumb_img/24_thumb_P_1386157931098.jpg','images/201312/source_img/24_P_1386157931360.jpg'),(29,25,'images/201312/goods_img/25_P_1386157973035.jpg','','images/201312/thumb_img/25_thumb_P_1386157973314.jpg','images/201312/source_img/25_P_1386157973066.jpg'),(44,28,'images/201407/goods_img/28_P_1406722470115.jpg','','images/201407/thumb_img/28_thumb_P_1406722470401.jpg','images/201407/source_img/28_P_1406722470732.jpg'),(31,1,'images/201312/goods_img/1_P_1388063098774.png','','images/201312/thumb_img/1_thumb_P_1388063098907.jpg','images/201312/source_img/1_P_1388063098436.png'),(32,1,'images/201312/goods_img/1_P_1388063099566.png','','images/201312/thumb_img/1_thumb_P_1388063099128.jpg','images/201312/source_img/1_P_1388063099006.png'),(33,1,'images/201312/goods_img/1_P_1388063099539.png','','images/201312/thumb_img/1_thumb_P_1388063099632.jpg','images/201312/source_img/1_P_1388063099855.png'),(34,13,'images/201407/goods_img/13_P_1406368892181.jpg','','images/201407/thumb_img/13_thumb_P_1406368892420.jpg','images/201407/source_img/13_P_1406368892696.jpg'),(35,13,'images/201407/goods_img/13_P_1406368892354.jpg','','images/201407/thumb_img/13_thumb_P_1406368892851.jpg','images/201407/source_img/13_P_1406368892043.jpg'),(36,13,'images/201407/goods_img/13_P_1406369941780.jpg','','images/201407/thumb_img/13_thumb_P_1406369941934.jpg','images/201407/source_img/13_P_1406369941892.jpg'),(37,13,'images/201407/goods_img/13_P_1406369941311.jpg','','images/201407/thumb_img/13_thumb_P_1406369941355.jpg','images/201407/source_img/13_P_1406369941620.jpg'),(38,13,'images/201407/goods_img/13_P_1406369941230.jpg','','images/201407/thumb_img/13_thumb_P_1406369941036.jpg','images/201407/source_img/13_P_1406369941104.jpg'),(45,29,'images/201407/goods_img/29_P_1406722713727.jpg','','images/201407/thumb_img/29_thumb_P_1406722713793.jpg','images/201407/source_img/29_P_1406722713322.jpg'),(46,30,'images/201407/goods_img/30_P_1406722990002.jpg','','images/201407/thumb_img/30_thumb_P_1406722990748.jpg','images/201407/source_img/30_P_1406722990243.jpg'),(42,27,'images/201407/goods_img/27_P_1406698120624.jpg','','images/201407/thumb_img/27_thumb_P_1406698120165.jpg','images/201407/source_img/27_P_1406698120808.jpg'),(43,26,'images/201407/goods_img/26_P_1406698568073.jpg','','images/201407/thumb_img/26_thumb_P_1406698568640.jpg','images/201407/source_img/26_P_1406698568453.jpg'),(47,31,'images/201407/goods_img/31_P_1406723378275.jpg','','images/201407/thumb_img/31_thumb_P_1406723378297.jpg','images/201407/source_img/31_P_1406723378686.jpg'),(48,32,'images/201407/goods_img/32_P_1406724021813.jpg','','images/201407/thumb_img/32_thumb_P_1406724021883.jpg','images/201407/source_img/32_P_1406724021314.jpg');
/*!40000 ALTER TABLE `ecs_goods_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_goods_type`
--

DROP TABLE IF EXISTS `ecs_goods_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_goods_type`
--

LOCK TABLES `ecs_goods_type` WRITE;
/*!40000 ALTER TABLE `ecs_goods_type` DISABLE KEYS */;
INSERT INTO `ecs_goods_type` VALUES (1,'床',1,'');
/*!40000 ALTER TABLE `ecs_goods_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_group_goods`
--

DROP TABLE IF EXISTS `ecs_group_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_group_goods`
--

LOCK TABLES `ecs_group_goods` WRITE;
/*!40000 ALTER TABLE `ecs_group_goods` DISABLE KEYS */;
INSERT INTO `ecs_group_goods` VALUES (1,3,3580.00,1),(1,5,1426.00,1),(1,4,3599.00,1),(1,2,3580.00,1),(14,11,4800.00,1),(14,12,4699.00,1),(2,1,4999.00,1);
/*!40000 ALTER TABLE `ecs_group_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_keywords`
--

DROP TABLE IF EXISTS `ecs_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_keywords`
--

LOCK TABLES `ecs_keywords` WRITE;
/*!40000 ALTER TABLE `ecs_keywords` DISABLE KEYS */;
INSERT INTO `ecs_keywords` VALUES ('2013-12-03','ecshop','布艺沙发',6),('2013-12-03','ecshop','风格',27),('2013-12-03','ecshop','多功能床',1),('2013-12-03','ecshop','吸顶灯',1),('2013-12-04','ecshop','布艺沙发',1),('2013-12-05','ecshop','布艺沙发',1),('2013-12-11','ecshop','布艺沙发',2),('2013-12-18','ecshop','布艺沙发',1),('2013-12-29','ecshop','1',3),('2014-02-22','ecshop','1',1),('2014-06-14','ecshop','吸顶灯',1),('2014-06-14','ecshop','家用书桌',1),('2014-06-15','ecshop','ECS000026',1),('2014-06-15','ecshop','ECS000002',1),('2014-06-16','BAIDU','http://mll.i7c.com.cn/xspace.php',1),('2014-06-18','BAIDU','http://mll.i7c.com.cn',2),('2014-06-18','ecshop','吸顶灯',3),('2014-06-18','ecshop','家用书桌',1),('2014-06-18','ecshop','餐桌椅',1),('2014-06-19','BAIDU','mll.i7c.com',1),('2014-06-19','ecshop','布艺沙发',1),('2014-06-20','BAIDU','mll.i7c.com',1),('2014-06-22','BAIDU','http://mll.i7c.com.cn',1),('2014-06-23','ecshop','吸顶灯',1),('2014-06-23','ecshop','儿童床',1),('2014-06-23','ecshop','餐桌椅',1),('2014-06-23','ecshop','床',9),('2014-06-23','ecshop','布艺沙发',1),('2014-06-24','ecshop','餐桌椅',1),('2014-06-24','ecshop','1',1),('2014-06-27','ecshop','家用书桌',1),('2014-06-27','ecshop','多功能床',1),('2014-06-28','ecshop','吸顶灯',1),('2014-06-30','ecshop','布艺沙发',1),('2014-07-01','ecshop','餐桌椅',1),('2014-07-01','ecshop','家用书桌',1),('2014-07-02','ecshop','吸顶灯',1),('2014-07-03','ecshop','家用书桌',1),('2014-07-03','ecshop','餐桌椅',1),('2014-07-04','ecshop','吸顶灯',1),('2014-07-05','ecshop','美乐乐/SKG6周年狂欢购',1),('2014-07-05','ecshop','美乐乐/SKG6',1),('2014-07-05','ecshop','紫色水纹毛巾被',1),('2014-07-05','ecshop','事实',1),('2014-07-05','ecshop','儿童床',1),('2014-07-06','ecshop','布艺沙发',1),('2014-07-06','ecshop','多功能床',1),('2014-07-06','ecshop','儿童床',1),('2014-07-06','ecshop','餐桌椅',1),('2014-07-07','BAIDU','缇庝箰涔愭簮鐮',1),('2014-07-08','BAIDU','http://mll.i7c.com.cn',2),('2014-07-08','ecshop','项链',1),('2014-07-08','ecshop','床',1),('2014-07-08','ecshop','水',1),('2014-07-08','ecshop','???',1),('2014-07-08','ecshop','布艺沙发',4),('2014-07-08','ecshop','',1),('2014-07-08','ecshop','餐桌椅',4),('2014-07-08','BAIDU','鍝佺墝闄愭椂鎶㈣喘缃戞簮鐮',1),('2014-07-09','ecshop','吸顶灯',1),('2014-07-09','BAIDU','缇庝箰涔愭簮鐮',1),('2014-07-09','BAIDU','http://mll.i7c.com.cn',1),('2014-07-10','BAIDU','鍏舵墠缃戠粶',1),('2014-07-10','ecshop','家用书桌',1),('2014-07-10','BAIDU','缇庝箰涔',2),('2014-07-11','BAIDU','美乐乐源码',1),('2014-07-11','ecshop','吸顶灯',1),('2014-07-11','BAIDU','美乐乐2014源码',1),('2014-07-12','BAIDU','http://mll.i7c.com.cn/',1),('2014-07-13','BAIDU','ttp://mll.i7c.com.cn/',1),('2014-07-14','BAIDU','缇庝箰涔',1),('2014-07-14','BAIDU','ecshop 缇庝箰涔',2),('2014-07-14','ecshop','布艺沙发',1),('2014-07-15','BAIDU','美乐乐',1),('2014-07-15','BAIDU','ecshop 缇庝箰涔',2),('2014-07-15','BAIDU','缇庝箰涔愮綉绔欐ā鏉',1),('2014-07-15','BAIDU','ecshop 缇庝箰涔愭ā鏉',1),('2014-07-16','ecshop','多功能床',1),('2014-07-16','BAIDU','美乐乐网站模板',1),('2014-07-16','ecshop','布艺沙发',2),('2014-07-16','BAIDU','ecshop缇庝箰涔愭ā鏉',1),('2014-07-17','ecshop','吸顶灯',2),('2014-07-17','BAIDU','其才网络',1),('2014-07-17','BAIDU','缇庝箰涔愮綉绔欐簮鐮',1),('2014-07-17','BAIDU','ecshop缇庝箰涔',1),('2014-07-17','BAIDU','缇庝箰涔',1),('2014-07-18','BAIDU','mll.i7c.com.cn',1),('2014-07-18','BAIDU','ecshop 缇庝箰涔愭ā鏉',2),('2014-07-18','ecshop','衣柜',1),('2014-07-18','BAIDU','缇庝箰鎷嶆簮鐮',1),('2014-07-18','BAIDU','缇庝箰涔愭ā鏉',1),('2014-07-18','BAIDU','ecshop美乐乐',1),('2014-07-19','ecshop','吸顶灯',1),('2014-07-19','BAIDU','ecshop缇庝箰涔',1),('2014-07-19','ecshop','儿童床',1),('2014-07-19','BAIDU','ecshop',1),('2014-07-19','ecshop','隐形床',5),('2014-07-20','BAIDU','2014美乐乐源码',1),('2014-07-20','BAIDU','ecshop美乐乐',1),('2014-07-20','BAIDU','缇庝箰涔',1),('2014-07-20','BAIDU','缇庝箰涔愪唬鐮',1),('2014-07-20','BAIDU','缇庝箰涔愭帹骞跨殑婧愮爜',1),('2014-07-21','ecshop','吸顶灯',1),('2014-07-21','BAIDU','缇庝箰涔愭簮鐮',1),('2014-07-21','BAIDU','美乐乐推广的源码',1),('2014-07-22','BAIDU','美乐乐源码',1),('2014-07-23','BAIDU','2014免费ecshop仿美乐乐家具家居建材商城网站源码',1),('2014-07-24','BAIDU','mll.i7c.com.cn',1),('2014-07-24','ecshop','多功能床',1),('2014-07-25','BAIDU','mll.i7c.com.cn',1),('2014-07-25','ecshop','布艺沙发',1),('2014-07-25','BAIDU','缇庝箰涔愭簮鐮',1),('2014-07-26','ecshop','ECSHOP',1),('2014-07-26','BAIDU','缇庝箰涔愭簮鐮',1),('2014-07-26','BAIDU','缇庝箰涔愬晢鍩庢簮鐮佷笅杞',1),('2014-07-27','BAIDU','美乐乐源码',1),('2014-07-27','ecshop','儿童床',1),('2014-07-27','ecshop','餐桌椅',1),('2014-07-27','ecshop','吸顶灯',1),('2014-07-27','ecshop','布艺沙发',1),('2014-07-27','ecshop','家用书桌',1),('2014-07-27','ecshop','多功能床',1),('2014-07-27','BAIDU','缇庝箰涔',1),('2014-07-27','BAIDU','美乐乐商城源码下载',1),('2014-07-28','ecshop','布艺沙发',1),('2014-07-28','BAIDU','缇庝箰涔愭簮鐮',2),('2014-07-28','BAIDU','ecshop缇庝箰涔',2),('2014-07-29','BAIDU','ecshop缇庝箰涔',1),('2014-07-31','ecshop','吸顶灯',1),('2014-07-31','ecshop','儿童床',1),('2014-07-31','ecshop','布艺沙发',1),('2014-07-31','ecshop','多功能床',1),('2014-08-01','ecshop','灯',8),('2014-08-02','BAIDU','m2.i7c.com.cn',1),('2014-08-02','ecshop','布艺沙发',2),('2014-08-05','ecshop','布艺沙发',3),('2014-08-05','ecshop','???',1),('2014-08-05','ecshop','???��?o?2????',1),('2014-08-05','ecshop','美乐乐',1),('2014-08-05','ecshop','第二版',1),('2014-08-06','ecshop','多功能床',4),('2014-08-08','BAIDU','m2.i7c.com.cn',1),('2014-08-08','BAIDU','鍏舵墠缃戠粶',1),('2014-08-08','BAIDU','其才网络',1),('2014-08-08','ecshop','儿童床',1),('2014-08-08','ecshop','吸顶灯',1),('2014-08-08','ecshop','家用书桌',1),('2014-08-08','ecshop','多功能床',1),('2014-08-08','ecshop','布艺沙发',1),('2014-08-08','ecshop','餐桌椅',1),('2014-08-09','ecshop','吸顶灯',2),('2014-08-09','ecshop','餐桌椅',1),('2014-08-09','ecshop','儿童床',1),('2014-08-11','ecshop','儿童床',1),('2014-08-11','ecshop','吸顶灯',2),('2014-08-11','ecshop','多功能床',2),('2014-08-11','ecshop','家用书桌',2),('2014-08-11','ecshop','布艺沙发',2),('2014-08-11','ecshop','餐桌椅',1),('2014-08-13','ecshop','餐桌椅',1),('2014-08-13','ecshop','布艺沙发',1),('2014-08-13','ecshop','家用书桌',1),('2014-08-13','BAIDU','m2.i7c.com.cn',10),('2014-08-14','BAIDU','m2.i7c.com.cn',10),('2014-08-14','ecshop','删掉',1),('2014-08-15','BAIDU','m2.i7c.com.cn',10),('2014-08-15','ecshop','吸顶灯',1),('2014-08-15','ecshop','儿童床',1),('2014-08-15','ecshop','多功能床',1),('2014-08-16','BAIDU','m2.i7c.com.cn',1),('2014-08-17','BAIDU','m2.i7c.com.cn',1),('2014-08-17','BAIDU','http://mll.web82.wpsss.cn',1),('2014-08-17','BAIDU','鍏舵墠缇庝箰涔愭ā鏉',1),('2014-08-17','ecshop','布艺沙发',1),('2014-08-17','ecshop','餐桌椅',1),('2014-08-17','ecshop','家用书桌',1),('2014-08-18','BAIDU','m2.i7c.com.cn',1),('2014-08-18','ecshop','儿童床',1),('2014-08-18','ecshop','多功能床',1),('2014-08-18','ecshop','家用书桌',1),('2014-08-18','ecshop','布艺沙发',1),('2014-08-18','ecshop','餐桌椅',1),('2014-08-18','ecshop','吸顶灯',1),('2014-08-19','ecshop','实木',1),('2014-08-20','ecshop','办公',1),('2014-08-20','ecshop','方形',1),('2014-08-20','BAIDU','缇庝箰涔',1),('2014-08-21','BAIDU','m2.i7c.com.cn',2),('2014-08-22','BAIDU','m2.i7c.com.cn',3),('2014-08-22','ecshop','吸顶灯',1),('2014-08-23','BAIDU','m2.i7c.com.cn',4),('2014-08-23','SOGOU','缇庝箰涔',1),('2014-08-23','ecshop','家具',1),('2014-08-24','BAIDU','m2.i7c.com.cn',4),('2014-08-24','ecshop','儿童床',1),('2014-08-24','ecshop','多功能床',1),('2014-08-24','BAIDU','缇庝箰涔',1),('2014-08-25','BAIDU','缇庝箰涔愭渶鏂版簮鐮',1),('2014-08-25','ecshop','布艺沙发',3),('2014-08-26','BAIDU','m2.i7c.com.cn',1),('2014-08-27','ecshop','家用书桌',1),('2014-08-28','ecshop','家用书桌',1),('2014-08-28','ecshop','布艺沙发',1),('2014-08-29','ecshop','家具',1),('2014-08-29','ecshop','古典',1),('2014-08-29','ecshop','方形',1),('2014-08-30','BAIDU','m2.i7c.com.cn',3),('2014-08-31','BAIDU','m2.i7c.com.cn',7),('2014-08-31','ecshop','儿童床',1),('2014-08-31','BAIDU','绗',1),('2014-09-01','BAIDU','m2.i7c.com.cn',3),('2014-09-02','BAIDU','第二版高端大气美乐乐',1);
/*!40000 ALTER TABLE `ecs_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_link_goods`
--

DROP TABLE IF EXISTS `ecs_link_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_link_goods`
--

LOCK TABLES `ecs_link_goods` WRITE;
/*!40000 ALTER TABLE `ecs_link_goods` DISABLE KEYS */;
INSERT INTO `ecs_link_goods` VALUES (1,2,0,1),(1,3,0,1),(1,4,0,1),(1,5,0,1),(1,6,0,1);
/*!40000 ALTER TABLE `ecs_link_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_mail_templates`
--

DROP TABLE IF EXISTS `ecs_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_mail_templates`
--

LOCK TABLES `ecs_mail_templates` WRITE;
/*!40000 ALTER TABLE `ecs_mail_templates` DISABLE KEYS */;
INSERT INTO `ecs_mail_templates` VALUES (1,'send_password',1,'密码找回','{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}',1194824789,0,'template'),(2,'order_confirm',0,'订单确认通知','亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n',1158226370,0,'template'),(3,'deliver_notice',1,'发货通知','亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}',1194823291,0,'template'),(4,'order_cancel',0,'订单取消','亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}',1156491130,0,'template'),(5,'order_invalid',0,'订单无效','亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}',1156491164,0,'template'),(6,'send_bonus',0,'发红包','亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n',1156491184,0,'template'),(7,'group_buy',1,'团购商品','亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}',1194824668,0,'template'),(8,'register_validate',1,'邮件验证','{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}',1162201031,0,'template'),(9,'virtual_card',0,'虚拟卡片','亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}',1162201031,0,'template'),(10,'attention_list',0,'关注商品','亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}',1183851073,0,'template'),(11,'remind_of_new_order',0,'新订单通知','亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}',1196239170,0,'template'),(12,'goods_booking',1,'缺货回复','亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}',0,0,'template'),(13,'user_message',1,'留言回复','亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}',0,0,'template'),(14,'recomment',1,'用户评论回复','亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}',0,0,'template');
/*!40000 ALTER TABLE `ecs_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_member_price`
--

DROP TABLE IF EXISTS `ecs_member_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_member_price`
--

LOCK TABLES `ecs_member_price` WRITE;
/*!40000 ALTER TABLE `ecs_member_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_member_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_nav`
--

DROP TABLE IF EXISTS `ecs_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_nav`
--

LOCK TABLES `ecs_nav` WRITE;
/*!40000 ALTER TABLE `ecs_nav` DISABLE KEYS */;
INSERT INTO `ecs_nav` VALUES (1,'',0,'商家入驻',1,1,0,'#','bottom'),(2,'',0,'家居图片',1,2,0,'#','bottom'),(3,'',0,'家居资讯',1,3,0,'#','bottom'),(4,'',0,'品牌大全',1,4,0,'#','bottom'),(5,'',0,'装修图片 ',1,5,0,'#','bottom'),(6,'',0,'装修材料',1,6,0,'#','bottom'),(7,'',0,'家私导购',1,7,0,'#','bottom'),(8,'',0,'品牌展厅',1,8,0,'#','bottom'),(9,'',0,'客服中心',1,9,0,'#','bottom'),(10,'',0,'网站地图 ',1,10,0,'#','bottom'),(11,'',0,'购买流程',1,1,0,'#','top'),(12,'',0,'在线帮助',1,2,0,'#','top'),(13,'c',1,'家具城',1,1,0,'category-1-b0.html','middle'),(14,'',0,'品牌中心',1,3,0,'brand.html','middle'),(16,'',0,'团购',1,4,0,'group_buy.html','middle'),(17,'a',11,'家居资讯',1,8,0,'article_cat-11.html','middle'),(18,'',0,'体验馆',0,6,0,'#','middle'),(19,'',0,'促销',1,7,0,'topic.php?topic_id=1','middle'),(20,'c',2,'建材城',1,2,0,'category-2-b0.html','middle'),(21,'',0,'源码购买',1,9,1,'http://item.taobao.com/item.htm?spm=2013.1.0.0.CA0lKp&id=40386589169','middle');
/*!40000 ALTER TABLE `ecs_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_order_action`
--

DROP TABLE IF EXISTS `ecs_order_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_order_action`
--

LOCK TABLES `ecs_order_action` WRITE;
/*!40000 ALTER TABLE `ecs_order_action` DISABLE KEYS */;
INSERT INTO `ecs_order_action` VALUES (1,19,'admin',1,0,0,0,'1111',1388397058),(2,19,'admin',1,0,2,0,'111111',1388397064),(3,19,'admin',1,3,2,0,'111',1388397070),(4,19,'admin',5,5,2,0,'111111',1388397082),(5,19,'admin',1,1,2,1,'1111',1388397103),(6,19,'admin',5,2,2,0,'11111',1388397126),(7,20,'admin',1,0,0,0,'',1388468662),(8,20,'admin',1,0,2,0,'111111111',1388468672),(9,20,'admin',1,3,2,0,'11111',1388468677),(10,20,'admin',5,5,2,0,'1111',1388468688),(11,20,'admin',1,1,2,1,'111111',1388468702),(12,20,'admin',5,2,2,0,'111111',1388468714),(13,17,'admin',1,0,2,0,'11111',1388474902),(14,17,'admin',1,3,2,0,'1111111',1388474912),(15,17,'admin',5,5,2,0,'1111',1388474921),(16,17,'admin',1,1,2,1,'111111',1388474932),(17,17,'买家',5,2,2,0,'',1388475145),(18,18,'admin',1,0,2,0,'1111',1388479330),(19,18,'admin',1,3,2,0,'',1388479335),(20,18,'admin',5,5,2,0,'11',1388479341),(21,18,'admin',1,1,2,1,'',1388479351),(22,18,'admin',5,2,2,0,'11111',1388479364),(23,16,'admin',1,0,2,0,'222',1388479375),(24,16,'admin',5,5,2,0,'222',1388479382),(25,16,'admin',1,1,2,1,'',1388479393),(26,16,'admin',5,2,2,0,'121',1388479409),(27,15,'admin',1,0,2,0,'32111',1388479418),(28,15,'admin',1,3,2,0,'3333333332',1388479428),(29,15,'admin',5,5,2,0,'3333',1388479434),(30,15,'admin',1,1,2,1,'',1388479445),(31,15,'admin',5,2,2,0,'3222222',1388479458),(32,10,'admin',1,0,0,0,'33333333',1388479472),(33,10,'admin',1,0,2,0,'33333',1388479475),(34,10,'admin',5,5,2,0,'33333333',1388479482),(35,10,'admin',1,1,2,1,'2344444444',1388479495),(36,10,'admin',5,2,2,0,'3333333',1388479523),(37,3,'admin',1,0,2,0,'eeeee',1388481820),(38,3,'admin',5,5,2,0,'eeee',1388481830),(39,3,'admin',1,1,2,1,'',1388481843),(40,3,'admin',5,2,2,0,'eeeeee',1388481861),(41,48,'admin',1,0,2,0,'...',1408698805),(42,48,'admin',1,3,2,0,'',1408698809),(43,48,'admin',5,5,2,0,'',1408698815),(44,48,'admin',1,1,2,1,'',1408698822),(45,48,'买家',5,2,2,0,'',1408698841);
/*!40000 ALTER TABLE `ecs_order_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_order_goods`
--

DROP TABLE IF EXISTS `ecs_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_order_goods`
--

LOCK TABLES `ecs_order_goods` WRITE;
/*!40000 ALTER TABLE `ecs_order_goods` DISABLE KEYS */;
INSERT INTO `ecs_order_goods` VALUES (1,1,1,'美式古典	双面描金雕花排骨架床','ECS000000',0,1,6008.80,4009.00,'类&emsp;型:地中海1.5米床[10] \n内&emsp;径:1.515*2.01米 \n',0,1,'',0,0,'4,9'),(2,2,2,'欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','ECS000002',0,1,4296.00,3580.00,'',0,1,'',0,0,''),(3,3,9,'客厅-时尚经典 带储物功能真皮转角沙发(1+3+左贵妃)','',0,2,10294.80,10000.00,'',2,1,'package_buy',0,0,''),(4,3,5,'客厅-功能沙发客厅5件套（1+2+3+1茶几+1电视柜）','',0,1,23068.80,10000.00,'',1,1,'package_buy',0,0,''),(5,3,19,'不锈钢双水槽 洗菜盆水槽套装76*40CM','ECS000019',0,2,336.00,280.00,'',2,1,'',0,0,''),(6,3,3,'欧式田园	粉红玫瑰立体雕花排骨架床','ECS000003',0,1,4296.00,3580.00,'',1,1,'',0,0,''),(7,3,5,'地中海风格 美国进口白杨木双人床','ECS000005',0,1,1711.20,1000.00,'',2,1,'',0,0,''),(8,4,2,'欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','ECS000002',0,1,4296.00,3580.00,'',0,1,'',0,0,''),(9,5,3,'欧式田园	粉红玫瑰立体雕花排骨架床','ECS000003',0,1,4296.00,2000.00,'',0,1,'',0,0,''),(10,6,18,'分段式吸顶灯 磨砂白玉玻璃 客厅餐厅','ECS000018',0,1,1140.00,950.00,'',0,1,'',0,0,''),(11,8,1,'美式古典	双面描金雕花排骨架床','ECS000000',0,1,6008.80,4009.00,'类&emsp;型:地中海1.5米床[10] \n内&emsp;径:1.515*2.01米 \n',0,1,'',0,0,'4,9'),(12,9,25,'	虹吸式坐厕 连体双档座便器 节水马桶','ECS000025',0,1,1195.20,896.00,'',0,1,'',0,0,''),(13,10,2,'欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','ECS000002',0,1,4296.00,3580.00,'',1,1,'',0,0,''),(14,11,1,'美式古典	双面描金雕花排骨架床','ECS000000',0,1,6008.80,4009.00,'类&emsp;型:地中海1.5米床[10] \n内&emsp;径:1.815*2.01米 \n',0,1,'',0,0,'4,8'),(15,12,1,'美式古典	双面描金雕花排骨架床','ECS000000',0,1,6008.80,4009.00,'类&emsp;型:地中海1.5米床[10] \n内&emsp;径:1.815*2.01米 \n',0,1,'',0,0,'4,8'),(16,13,4,'法式风格	1.8米皮拉扣床 PU发泡雕花床','ECS000004',0,1,4318.80,2800.00,'',0,1,'',0,0,''),(17,14,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,1,2028.00,1500.00,'',0,1,'',0,0,''),(18,15,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,1,2028.00,1500.00,'',1,1,'',0,0,''),(19,16,21,'全铜可360度旋转厨房水龙头 单把单孔冷热水龙头','ECS000021',0,1,144.00,100.00,'',1,1,'',0,0,''),(20,17,21,'全铜可360度旋转厨房水龙头 单把单孔冷热水龙头','ECS000021',0,1,144.00,100.00,'',1,1,'',0,0,''),(21,18,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,2,2028.00,1500.00,'',2,1,'',0,0,''),(22,19,25,'	虹吸式坐厕 连体双档座便器 节水马桶','ECS000025',0,1,1195.20,996.00,'',1,1,'',0,0,''),(23,20,1,'美式古典	双面描金雕花排骨架床','ECS000000',0,1,6008.80,4009.00,'类&emsp;型:地中海1.5米床[10] \n内&emsp;径:1.815*2.01米 \n',1,1,'',0,0,'4,8'),(24,20,5,'客厅-功能沙发客厅5件套（1+2+3+1茶几+1电视柜）','',0,1,23068.80,10000.00,'',1,1,'package_buy',0,0,''),(25,20,2,'欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','ECS000002',0,1,4296.00,3580.00,'类&emsp;型:地中海1.5米床 \n',1,1,'',0,0,'10'),(26,21,5,'地中海风格 美国进口白杨木双人床','ECS000005',0,1,1711.20,1000.00,'',0,1,'',0,0,''),(27,22,1,'美式古典	双面描金雕花排骨架床','ECS000000',0,1,5998.80,3999.00,'',0,1,'',0,0,''),(28,22,2,'欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','ECS000002',0,1,4296.00,3580.00,'类&emsp;型:地中海1.5米床 \n',0,1,'',0,0,'10'),(29,23,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,1,2028.00,1500.00,'',0,1,'',0,0,''),(30,24,19,'不锈钢双水槽 洗菜盆水槽套装76*40CM','ECS000019',0,1,336.00,280.00,'',0,1,'',0,0,''),(31,25,25,'	虹吸式坐厕 连体双档座便器 节水马桶','ECS000025',0,1,1195.20,996.00,'',0,1,'',0,0,''),(32,26,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,1,2028.00,1500.00,'',0,1,'',0,0,''),(33,27,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,2,2028.00,1500.00,'',0,1,'',0,0,''),(34,27,16,'方形木艺灯罩吸顶灯','ECS000016',0,2,456.00,380.00,'',0,1,'',0,0,''),(35,28,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,1,2628.00,2100.00,'类&emsp;型:地中海1.5米床[500] \n颜色:白色[100] \n',0,1,'',0,0,'19,15'),(36,29,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,1,2628.00,2100.00,'类&emsp;型:地中海1.5米床[500] \n颜色:白色[100] \n',0,1,'',0,0,'19,15'),(37,30,21,'全铜可360度旋转厨房水龙头 单把单孔冷热水龙头','ECS000021',0,1,144.00,100.00,'',0,1,'',0,0,''),(38,31,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,1,2628.00,2100.00,'类&emsp;型:地中海1.5米床[500] \n颜色:白色[100] \n',0,1,'',0,0,'19,15'),(39,32,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,1,2028.00,1500.00,'',0,1,'',0,0,''),(40,33,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,3,2628.00,2100.00,'类&emsp;型:地中海1.5米床[500] \n颜色:白色[100] \n',0,1,'',0,0,'19,15'),(41,34,5,'地中海风格 美国进口白杨木双人床','ECS000005',0,1,1711.20,1000.00,'',0,1,'',0,0,''),(42,35,16,'方形木艺灯罩吸顶灯','ECS000016',0,2,456.00,380.00,'',0,1,'',0,0,''),(43,36,16,'方形木艺灯罩吸顶灯','ECS000016',0,2,456.00,380.00,'',0,1,'',0,0,''),(44,37,14,'美式田园	实木餐厅套装（1桌+4椅）','ECS000014',0,1,3598.79,2999.00,'',0,1,'',0,0,''),(45,38,13,'餐厅5件套装（1.5餐台+4无扶手餐椅）','ECS000013',0,1,8640.00,7200.00,'',0,1,'',0,0,''),(46,39,13,'餐厅5件套装（1.5餐台+4无扶手餐椅）','ECS000013',0,1,8640.00,7200.00,'',0,1,'',0,0,''),(47,40,26,'纯白实木浴室柜 现代方形浴室柜 落地式浴室柜','ECS000026',0,1,2628.00,2100.00,'类&emsp;型:地中海1.5米床[500] \n颜色:白色[100] \n',0,1,'',0,0,'19,15'),(48,41,32,'[SFMOBUL安君美]	 百变吊带可穿浴巾 140*70cm 粉红','ECS000032',0,1,33.60,28.00,'',0,1,'',0,0,''),(49,42,1,'美式古典	双面描金雕花排骨架床','ECS000000',0,1,6008.80,4009.00,'类&emsp;型:地中海1.5米床[10] \n内&emsp;径:1.815*2.01米 \n',0,1,'',0,0,'4,8'),(50,43,20,'SUS304水槽带水龙头套装 带混水龙头双水槽套装72*38CM','ECS000020',0,1,576.00,480.00,'',0,1,'',0,0,''),(51,43,24,'双人多功能按摩浴缸 亚克力浴缸 双裙边（左裙）浴缸','ECS000024',0,1,5998.80,4999.00,'',0,1,'',0,0,''),(52,43,25,'	虹吸式坐厕 连体双档座便器 节水马桶','ECS000025',0,1,1195.20,996.00,'',0,1,'',0,0,''),(53,44,16,'方形木艺灯罩吸顶灯','ECS000016',0,1,456.00,380.00,'',0,1,'',0,0,''),(54,45,31,'[小日子]	 高档半遮光窗帘定制 速写英伦','ECS000031',0,1,100.80,84.00,'',0,1,'',0,0,''),(55,45,2,'欧式田园	1.8米水晶拉扣双人床 水牛头层真皮床','ECS000002',0,1,4296.00,3580.00,'类&emsp;型:地中海1.5米床 \n',0,1,'',0,0,'10'),(56,46,30,'[悦邻家居]	 欧式奢华提花高档定制客厅卧室半遮光窗帘 素雅灰','ECS000030',0,1,213.60,178.00,'',0,1,'',0,0,''),(57,47,16,'方形木艺灯罩吸顶灯','ECS000016',0,1,456.00,380.00,'',0,1,'',0,0,''),(58,48,32,'[SFMOBUL安君美]	 百变吊带可穿浴巾 140*70cm 粉红','ECS000032',0,3,33.60,28.00,'',3,1,'',0,0,''),(59,49,9,'清新雅致 可拆装沙发套装（1+2+3）','ECS000009',0,1,8160.00,0.00,'',0,1,'',0,0,''),(60,50,9,'清新雅致 可拆装沙发套装（1+2+3）','ECS000009',0,1,8160.00,0.00,'',0,1,'',0,0,''),(61,51,31,'[小日子]	 高档半遮光窗帘定制 速写英伦','ECS000031',0,1,100.80,84.00,'',0,1,'',0,0,''),(62,52,24,'双人多功能按摩浴缸 亚克力浴缸 双裙边（左裙）浴缸','ECS000024',0,1,5998.80,4999.00,'',0,1,'',0,0,'');
/*!40000 ALTER TABLE `ecs_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_order_info`
--

DROP TABLE IF EXISTS `ecs_order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_order_info`
--

LOCK TABLES `ecs_order_info` WRITE;
/*!40000 ALTER TABLE `ecs_order_info` DISABLE KEYS */;
INSERT INTO `ecs_order_info` VALUES (1,'2013113006960',0,0,0,0,'超级卖家',1,2,52,500,'长江路15号','','111111111','','76374482@qq.com','','','',1,'顺丰速运',2,'银行汇款/转帐','等待所有商品备齐后再发','','','','','','',4009.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,4024.00,0,'本站',1385803767,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(2,'2013120425778',0,0,0,0,'111111',1,25,321,2703,'11111111','','11111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',3580.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,3595.00,0,'本站',1386168793,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(3,'2013120440283',1,5,2,2,'超级卖家',1,2,52,508,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',35140.00,15.00,0.00,0.00,0.00,0.00,35155.00,0.00,0,0.00,0.00,0.00,0,'本站',1386173345,1388481820,1388481820,1388481843,0,0,0,'e','',0,'','',0,'',0.00,0,0,0.00),(4,'2013120441851',1,0,0,0,'超级卖家',1,8,111,962,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',3580.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,3595.00,0,'本站',1386173506,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(5,'2013120589039',1,0,0,0,'超级卖家',1,8,111,962,'长江路15号','','111111111','','','','','',2,'申通快递',1,'支付宝','等待所有商品备齐后再发','','','','','','',2000.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,2015.00,0,'本站',1386228284,0,0,0,0,0,0,'','group_buy',3,'','',0,'',0.00,0,0,0.00),(6,'2013120500350',1,0,0,0,'超级卖家',1,6,76,693,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',950.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,965.00,0,'本站',1386228708,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(7,'2013120661257',0,3,0,0,'',0,0,0,0,'','','','','','','','',0,'',0,'','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,0.00,0,'管理员添加',1386318747,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(8,'2013122315156',1,0,0,0,'超级卖家',1,6,76,693,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',4009.00,5.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,100.00,3914.00,0,'本站',1387775981,0,0,0,0,0,1,'','',0,'','',0,'',0.00,0,0,0.00),(9,'2013122733017',0,0,0,0,'超级卖家',1,2,52,500,'北京市丰台区小屯西路万科中粮假日风景111号院底商1','','010-67498277','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',896.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,811.00,0,'本站',1388152216,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,100.00),(10,'2013122722923',1,5,2,2,'超级卖家',1,6,76,693,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',3580.00,5.00,0.00,0.00,0.00,0.00,3485.00,0.00,0,0.00,0.00,0.00,0,'本站',1388152546,1388479472,1388479475,1388479495,0,0,0,'32323','',0,'','',0,'',0.00,0,0,100.00),(11,'2013122793991',0,0,0,0,'超级卖家',1,2,52,500,'北京市丰台区小屯西路万科中粮假日风景111号院底商1','','010-67498277','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',4009.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,3924.00,0,'本站',1388155240,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,100.00),(12,'2013122729953',0,0,0,0,'超级卖家',1,2,52,500,'北京市丰台区小屯西路万科中粮假日风景111号院底商1','','010-67498277','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',4009.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,4024.00,0,'本站',1388156000,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(13,'2013122758756',0,0,0,0,'超级卖家',1,2,52,500,'北京市丰台区小屯西路万科中粮假日风景111号院底商1','','010-67498277','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',2800.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,2715.00,0,'本站',1388156243,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,100.00),(14,'2013122749611',0,0,0,0,'超级卖家',1,2,52,500,'北京市丰台区小屯西路万科中粮假日风景111号院底商1','','010-67498277','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',1500.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,1415.00,0,'本站',1388156567,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,100.00),(15,'2013122784673',1,5,2,2,'超级卖家',1,6,76,693,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',1500.00,5.00,0.00,0.00,0.00,0.00,1505.00,0.00,0,0.00,0.00,0.00,0,'本站',1388156700,1388479418,1388479418,1388479445,0,0,0,'322222222','',0,'','',0,'',0.00,0,0,0.00),(16,'2013122775150',1,5,2,2,'超级卖家',1,6,76,693,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',100.00,5.00,0.00,0.00,0.00,0.00,105.00,0.00,0,0.00,0.00,0.00,0,'本站',1388156756,1388479375,1388479375,1388479393,0,0,0,'12221','',0,'','',0,'',0.00,0,0,0.00),(17,'2013122780190',1,5,2,2,'超级卖家',1,6,76,693,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',100.00,5.00,0.00,0.00,0.00,0.00,105.00,0.00,0,0.00,0.00,0.00,0,'本站',1388156839,1388474902,1388474902,1388474932,0,0,0,'11111111111','',0,'','',0,'',0.00,0,0,0.00),(18,'2013122727106',1,5,2,2,'超级卖家',1,6,76,693,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',3000.00,5.00,0.00,0.00,0.00,0.00,3005.00,0.00,0,0.00,0.00,0.00,0,'本站',1388156881,1388479330,1388479330,1388479351,0,0,0,'12222222222','',0,'','',0,'',0.00,0,0,0.00),(19,'2013122731476',1,5,2,2,'超级卖家',1,6,76,693,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',996.00,5.00,0.00,0.00,0.00,0.00,901.00,0.00,0,0.00,0.00,0.00,0,'本站',1388157011,1388397058,1388397064,1388397103,0,0,0,'11111111','',0,'','',0,'',0.00,0,0,100.00),(20,'2013123135238',1,5,2,2,'超级卖家',1,6,76,693,'长江路15号','','111111111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',17589.00,5.00,0.00,0.00,0.00,0.00,17594.00,0.00,0,0.00,0.00,0.00,0,'本站',1388468638,1388468662,1388468671,1388468702,0,0,0,'1111111','',0,'','',0,'',0.00,0,0,0.00),(21,'2014030441201',2,0,0,0,'发挥好',1,6,84,773,'发挥好哈哈哈','','15013475862','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',1000.00,5.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,1005.00,0,'',1393912281,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(22,'2014061320093',0,0,0,0,'带刺的',1,2,52,500,'3123123','','1231321232','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',7579.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,7594.00,4,'本站',1402636435,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(23,'2014061361402',0,0,0,0,'123',1,2,52,500,'12312','','15223097688','','','','','',2,'申通快递',1,'支付宝','等待所有商品备齐后再发','','','','','','',1500.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,1510.00,0,'本站',1402653491,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(24,'2014061571849',5,0,0,0,'Ffcddfggg136',1,13,193,1618,'襄樊 保康县 Ghffggh','','13975788537','','Jssjj@11.com','','','',1,'顺丰速运',1,'支付宝','','','','','','','',280.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,280.00,0,'',1402838167,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(25,'2014061717775',7,0,0,0,'谢家华',1,3,38,417,'成行路2323号','','13543881086','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',996.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,996.00,5,'本站',1402999885,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(26,'2014061875177',9,0,0,0,'渐中顺',1,6,78,712,'另要在枷 进','','18398989218','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',1500.00,5.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,1505.00,0,'本站',1403059735,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(27,'2014061863860',10,0,0,0,'1',1,3,38,418,'巢湖 无为县 1','','13','','asdfasdf@163.com','','','',1,'顺丰速运',1,'支付宝','','','','','','','',3760.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,3760.00,0,'',1403065939,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(28,'2014062864762',0,0,0,0,'vcx',1,17,233,1960,'gfhfhf','','17802562589','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',2100.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,2100.00,14,'本站',1403927459,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(29,'2014070350296',20,0,0,0,'111',1,2,52,500,'11111111111','','11111111111','','','','','',2,'申通快递',1,'支付宝','等待所有商品备齐后再发','','','','','','',2100.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,2115.00,0,'本站',1404359249,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(30,'2014070390523',20,0,0,0,'姓名',1,2,52,500,'地址','','13812312312','','','','','',2,'申通快递',2,'银行汇款/转帐','等待所有商品备齐后再发','','','','','','',100.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,115.00,0,'本站',1404359386,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(31,'2014070619477',22,0,0,0,'顶替村',1,2,52,500,'北京 东城区 要大规模压顶','','13800138123','','2937431186@qq.com','要大规模城','','',2,'申通快递',1,'支付宝','','','','','','','',2100.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,2115.00,0,'',1404617751,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(32,'2014070952573',23,0,0,0,'ASDFASDFASDF',1,3,37,410,'蚌埠 东市区 SDFASDFASDFASDF','','13503214551','','ws323@111.NET','ASDFASDFASD','','',3,'运费到付',1,'支付宝','','','','','','','',1500.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,1500.00,0,'',1404917095,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(33,'2014070988941',0,0,0,0,'ffff',1,4,55,539,'jfyhjfghfgh','','13111111111','','','','','',1,'顺丰速运',2,'银行汇款/转帐','等待所有商品备齐后再发','','','','','','',6300.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,6300.00,0,'本站',1404919061,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(34,'2014071536932',24,0,0,0,'防守打法',1,2,52,500,'佛挡杀佛第三方对是否','','1551613313','','','','','',1,'顺丰速运',2,'银行汇款/转帐','等待所有商品备齐后再发','','','','','','',1000.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,1015.00,0,'本站',1405412517,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(35,'2014071921069',28,0,0,0,'好人',1,2,52,500,'北京 东城区 uxyi','','17431005','','wuxingpeng@qq.com','','','',2,'申通快递',1,'支付宝','','','','','','','',760.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,775.00,0,'',1405754470,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(36,'2014071953030',29,0,0,0,'dsfa',1,2,52,501,'北京 西城区 biei','','12345678911','','xiaomi@qq.com','','','',2,'申通快递',1,'支付宝','','','','','','','',760.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,775.00,0,'',1405755436,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(37,'2014072666543',0,0,0,0,'111',1,2,52,500,'111111111111','','222','','','','','',3,'运费到付',2,'银行汇款/转帐','等待所有商品备齐后再发','','','','','','',2999.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,2999.00,0,'本站',1406363572,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(38,'2014072790786',34,0,0,0,'111',1,2,52,500,'1111111111','','11111111','','','','','11111111111',2,'申通快递',1,'支付宝','等待所有商品备齐后再发','','','','','','',7200.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,7215.00,0,'本站',1406430625,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(39,'2014072764727',34,0,0,0,'111',1,2,52,500,'1111111111','','11111111','','','','','1111111111111111111111111111111',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',7200.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,7215.00,0,'本站',1406430662,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(40,'2014072744088',0,0,0,0,'321',1,2,52,500,'65656565','','12312312312','','','','','1111111111111111',3,'运费到付',1,'支付宝','等待所有商品备齐后再发','','','','','','',2100.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,2100.00,0,'本站',1406471863,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(41,'2014080117575',0,0,0,0,'',1,2,52,500,'111111','','13240501351','','','','','1111',3,'运费到付',1,'支付宝','等待所有商品备齐后再发','','','','','','',28.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,28.00,0,'本站',1406880259,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(42,'2014080184521',0,0,0,0,'111',1,2,52,501,'1111','','111','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',4009.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,4024.00,0,'本站',1406895564,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(43,'2014080499170',0,0,0,0,'111',1,3,40,426,'11111111111111111111111','','111111111111','','','','','111111111111111',3,'运费到付',2,'银行汇款/转帐','等待所有商品备齐后再发','','','','11111111111111','','',6475.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,6475.00,0,'本站',1407141419,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(44,'2014080599729',0,0,0,0,'请问',1,17,233,1958,'我企鹅我去额','','企鹅额企鹅去','','','','','',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',380.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,380.00,1,'本站',1407260293,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(45,'2014080983060',40,0,0,0,'SGS',1,3,36,398,'阿萨德发生大丰收的发的是发的是','','15641216496','','','','','撒的发是飞洒粉色',3,'运费到付',1,'支付宝','等待所有商品备齐后再发','','','','','','',3664.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,3664.00,1,'本站',1407553897,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(46,'2014081098082',0,0,0,0,'全球',1,17,234,1970,'11111111111111111111111','','1111111111','','','','','111111',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',178.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,178.00,0,'本站',1407683715,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(47,'2014081972575',0,0,0,0,'ddd',1,7,97,854,'民族大道 38','','13578965412','','','','','在',1,'顺丰速运',2,'银行汇款/转帐','等待所有商品备齐后再发','','','','','','',380.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,380.00,0,'本站',1408429472,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(48,'2014082248545',20,5,2,2,'姓名',1,2,52,500,'地址','','13812312312','','','','','',2,'申通快递',1,'支付宝','等待所有商品备齐后再发','','','','','','',84.00,15.00,0.00,0.00,0.00,0.00,99.00,0.00,0,0.00,0.00,0.00,0,'本站',1408698789,1408698805,1408698805,1408698822,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(49,'2014082255742',20,0,0,0,'姓名',1,2,52,500,'亚方花园14号商铺','','13852807707','','','','','',2,'申通快递',1,'支付宝','等待所有商品备齐后再发','','','','','','',0.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,10,0.00,0.00,15.00,0,'本站',1408699296,0,0,0,0,0,0,'','exchange_goods',9,'','',0,'',0.00,0,0,0.00),(50,'2014082212354',20,1,0,2,'姓名',1,2,52,500,'亚方花园14号商铺','','13852807707','','','','','',3,'运费到付',1,'支付宝','等待所有商品备齐后再发','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,10,0.00,0.00,0.00,0,'本站',1408699409,1408699409,1408699409,0,0,0,0,'','exchange_goods',9,'','',0,'',0.00,0,0,0.00),(51,'2014082773732',0,0,0,0,'123',1,2,52,501,'123阿斯达盛大','','123','','','','','123',2,'申通快递',1,'支付宝','等待所有商品备齐后再发','','','','','','',84.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,99.00,0,'本站',1409109727,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00),(52,'2014082773598',0,0,0,0,'11111',1,26,339,2888,'11111111111111111111','','11111111111','','','','','111111111111111',1,'顺丰速运',1,'支付宝','等待所有商品备齐后再发','','','','','','',4999.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,0.00,0.00,4999.00,0,'本站',1409128831,0,0,0,0,0,0,'','',0,'','',0,'',0.00,0,0,0.00);
/*!40000 ALTER TABLE `ecs_order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_pack`
--

DROP TABLE IF EXISTS `ecs_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_pack`
--

LOCK TABLES `ecs_pack` WRITE;
/*!40000 ALTER TABLE `ecs_pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_package_goods`
--

DROP TABLE IF EXISTS `ecs_package_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_package_goods`
--

LOCK TABLES `ecs_package_goods` WRITE;
/*!40000 ALTER TABLE `ecs_package_goods` DISABLE KEYS */;
INSERT INTO `ecs_package_goods` VALUES (6,3,0,1,1),(6,4,0,1,1),(6,5,0,1,1),(6,6,0,1,1),(7,6,0,1,1),(7,5,0,1,1),(8,4,0,1,1),(8,5,0,1,1),(8,3,0,1,1),(9,1,0,1,1),(9,2,0,1,1),(10,7,0,1,1),(10,8,0,1,1),(10,9,0,1,1),(10,10,0,1,1),(11,11,0,1,1),(11,12,0,1,1),(11,13,0,1,1),(11,14,0,1,1),(12,21,0,1,1),(12,22,0,1,1),(12,20,0,1,1);
/*!40000 ALTER TABLE `ecs_package_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_pay_log`
--

DROP TABLE IF EXISTS `ecs_pay_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_pay_log`
--

LOCK TABLES `ecs_pay_log` WRITE;
/*!40000 ALTER TABLE `ecs_pay_log` DISABLE KEYS */;
INSERT INTO `ecs_pay_log` VALUES (1,1,4024.00,0,0),(2,2,3595.00,0,0),(3,3,35155.00,0,0),(4,4,3595.00,0,0),(5,5,2015.00,0,0),(6,6,965.00,0,0),(7,7,0.00,0,0),(8,8,3914.00,0,0),(9,9,811.00,0,0),(10,10,3485.00,0,0),(11,11,3924.00,0,0),(12,12,4024.00,0,0),(13,13,2715.00,0,0),(14,14,1415.00,0,0),(15,15,1505.00,0,0),(16,16,105.00,0,0),(17,17,105.00,0,0),(18,18,3005.00,0,0),(19,19,901.00,0,0),(20,20,17594.00,0,0),(21,21,1005.00,0,0),(22,22,7594.00,0,0),(23,23,1510.00,0,0),(24,24,280.00,0,0),(25,25,996.00,0,0),(26,26,1505.00,0,0),(27,27,3760.00,0,0),(28,28,2100.00,0,0),(29,29,2115.00,0,0),(30,30,115.00,0,0),(31,31,2115.00,0,0),(32,32,1500.00,0,0),(33,33,6300.00,0,0),(34,34,1015.00,0,0),(35,35,775.00,0,0),(36,36,775.00,0,0),(37,37,2999.00,0,0),(38,38,7215.00,0,0),(39,39,7215.00,0,0),(40,40,2100.00,0,0),(41,41,28.00,0,0),(42,42,4024.00,0,0),(43,43,6475.00,0,0),(44,44,380.00,0,0),(45,45,3664.00,0,0),(46,46,178.00,0,0),(47,47,380.00,0,0),(48,48,99.00,0,0),(49,49,15.00,0,0),(50,50,0.00,0,0),(51,51,99.00,0,0),(52,52,4999.00,0,0);
/*!40000 ALTER TABLE `ecs_pay_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_payment`
--

DROP TABLE IF EXISTS `ecs_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_payment`
--

LOCK TABLES `ecs_payment` WRITE;
/*!40000 ALTER TABLE `ecs_payment` DISABLE KEYS */;
INSERT INTO `ecs_payment` VALUES (1,'alipay','支付宝','0','支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，<font color=\"red\"><b>零预付，免年费</b></font>，单笔阶梯费率，无流量限制。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=alipay\" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>',0,'a:4:{i:0;a:3:{s:4:\"name\";s:14:\"alipay_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:3:{s:4:\"name\";s:10:\"alipay_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:3:{s:4:\"name\";s:14:\"alipay_partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:3:{s:4:\"name\";s:17:\"alipay_pay_method\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:1:\"0\";}}',1,0,1),(2,'bank','银行汇款/转帐','0','银行名称\r\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\r\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。',0,'a:0:{}',1,0,0);
/*!40000 ALTER TABLE `ecs_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_plugins`
--

DROP TABLE IF EXISTS `ecs_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_plugins`
--

LOCK TABLES `ecs_plugins` WRITE;
/*!40000 ALTER TABLE `ecs_plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_products`
--

DROP TABLE IF EXISTS `ecs_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_products`
--

LOCK TABLES `ecs_products` WRITE;
/*!40000 ALTER TABLE `ecs_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_reg_extend_info`
--

DROP TABLE IF EXISTS `ecs_reg_extend_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_reg_extend_info`
--

LOCK TABLES `ecs_reg_extend_info` WRITE;
/*!40000 ALTER TABLE `ecs_reg_extend_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_reg_extend_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_reg_fields`
--

DROP TABLE IF EXISTS `ecs_reg_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_reg_fields`
--

LOCK TABLES `ecs_reg_fields` WRITE;
/*!40000 ALTER TABLE `ecs_reg_fields` DISABLE KEYS */;
INSERT INTO `ecs_reg_fields` VALUES (1,'MSN',0,0,1,1),(2,'QQ',0,0,1,1),(3,'办公电话',0,0,1,1),(4,'家庭电话',0,0,1,1),(5,'手机',0,1,1,1),(6,'密码找回问题',0,0,1,1);
/*!40000 ALTER TABLE `ecs_reg_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_region`
--

DROP TABLE IF EXISTS `ecs_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pin_yin` varchar(100) DEFAULT NULL,
  `is_top` smallint(5) DEFAULT '0',
  `is_show` smallint(5) DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_region`
--

LOCK TABLES `ecs_region` WRITE;
/*!40000 ALTER TABLE `ecs_region` DISABLE KEYS */;
INSERT INTO `ecs_region` VALUES (1,0,'中国',0,0,'z',0,0),(2,1,'北京',1,0,'',0,0),(3,1,'安徽',1,0,'',0,0),(4,1,'福建',1,0,'',0,0),(5,1,'甘肃',1,0,'',0,0),(6,1,'广东',1,0,'',0,0),(7,1,'广西',1,0,'',0,0),(8,1,'贵州',1,0,'',0,0),(9,1,'海南',1,0,'',0,0),(10,1,'河北',1,0,'',0,0),(11,1,'河南',1,0,'',0,0),(12,1,'黑龙江',1,0,'',0,0),(13,1,'湖北',1,0,'',0,0),(14,1,'湖南',1,0,'',0,0),(15,1,'吉林',1,0,'',0,0),(16,1,'江苏',1,0,'',0,0),(17,1,'江西',1,0,'',0,0),(18,1,'辽宁',1,0,'',0,0),(19,1,'内蒙古',1,0,'',0,0),(20,1,'宁夏',1,0,'',0,0),(21,1,'青海',1,0,'',0,0),(22,1,'山东',1,0,'',0,0),(23,1,'山西',1,0,'',0,0),(24,1,'陕西',1,0,'',0,0),(25,1,'上海',1,0,'',0,0),(26,1,'四川',1,0,'',0,0),(27,1,'天津',1,0,'',0,0),(28,1,'西藏',1,0,'',0,0),(29,1,'新疆',1,0,'',0,0),(30,1,'云南',1,0,'',0,0),(31,1,'浙江',1,0,'',0,0),(32,1,'重庆',1,0,'',0,0),(33,1,'香港',1,0,'',0,0),(34,1,'澳门',1,0,'',0,0),(35,1,'台湾',1,0,'',0,0),(36,3,'安庆',2,0,'',0,0),(37,3,'蚌埠',2,0,'',0,0),(38,3,'巢湖',2,0,'',0,0),(39,3,'池州',2,0,'',0,0),(40,3,'滁州',2,0,'',0,0),(41,3,'阜阳',2,0,'',0,0),(42,3,'淮北',2,0,'',0,0),(43,3,'淮南',2,0,'',0,0),(44,3,'黄山',2,0,'',0,0),(45,3,'六安',2,0,'',0,0),(46,3,'马鞍山',2,0,'',0,0),(47,3,'宿州',2,0,'',0,0),(48,3,'铜陵',2,0,'',0,0),(49,3,'芜湖',2,0,'',0,0),(50,3,'宣城',2,0,'',0,0),(51,3,'亳州',2,0,'',0,0),(52,2,'北京',2,0,'beijing',1,1),(53,4,'福州',2,0,'',0,0),(54,4,'龙岩',2,0,'',0,0),(55,4,'南平',2,0,'',0,0),(56,4,'宁德',2,0,'',0,0),(57,4,'莆田',2,0,'',0,0),(58,4,'泉州',2,0,'',0,0),(59,4,'三明',2,0,'',0,0),(60,4,'厦门',2,0,'',0,0),(61,4,'漳州',2,0,'',0,0),(62,5,'兰州',2,0,'',0,0),(63,5,'白银',2,0,'',0,0),(64,5,'定西',2,0,'',0,0),(65,5,'甘南',2,0,'',0,0),(66,5,'嘉峪关',2,0,'',0,0),(67,5,'金昌',2,0,'',0,0),(68,5,'酒泉',2,0,'',0,0),(69,5,'临夏',2,0,'',0,0),(70,5,'陇南',2,0,'',0,0),(71,5,'平凉',2,0,'',0,0),(72,5,'庆阳',2,0,'',0,0),(73,5,'天水',2,0,'',0,0),(74,5,'武威',2,0,'',0,0),(75,5,'张掖',2,0,'',0,0),(76,6,'广州',2,0,'guangzhou',1,1),(77,6,'深圳',2,0,'shenzhen',1,1),(78,6,'潮州',2,0,'q',0,1),(79,6,'东莞',2,0,'d',0,1),(80,6,'佛山',2,0,'f',0,1),(81,6,'河源',2,0,'h',0,1),(82,6,'惠州',2,0,'h',0,1),(83,6,'江门',2,0,'j',0,1),(84,6,'揭阳',2,0,'j',0,1),(85,6,'茂名',2,0,'m',0,1),(86,6,'梅州',2,0,'m',0,1),(87,6,'清远',2,0,'q',0,1),(88,6,'汕头',2,0,'s',0,1),(89,6,'汕尾',2,0,'s',0,1),(90,6,'韶关',2,0,'s',0,1),(91,6,'阳江',2,0,'y',0,1),(92,6,'云浮',2,0,'y',0,1),(93,6,'湛江',2,0,'j',0,1),(94,6,'肇庆',2,0,'q',0,1),(95,6,'中山',2,0,'z',0,1),(96,6,'珠海',2,0,'z',0,1),(97,7,'南宁',2,0,'',0,0),(98,7,'桂林',2,0,'',0,0),(99,7,'百色',2,0,'',0,0),(100,7,'北海',2,0,'',0,0),(101,7,'崇左',2,0,'',0,0),(102,7,'防城港',2,0,'',0,0),(103,7,'贵港',2,0,'',0,0),(104,7,'河池',2,0,'',0,0),(105,7,'贺州',2,0,'',0,0),(106,7,'来宾',2,0,'',0,0),(107,7,'柳州',2,0,'',0,0),(108,7,'钦州',2,0,'',0,0),(109,7,'梧州',2,0,'',0,0),(110,7,'玉林',2,0,'',0,0),(111,8,'贵阳',2,0,'',0,0),(112,8,'安顺',2,0,'',0,0),(113,8,'毕节',2,0,'',0,0),(114,8,'六盘水',2,0,'',0,0),(115,8,'黔东南',2,0,'',0,0),(116,8,'黔南',2,0,'',0,0),(117,8,'黔西南',2,0,'',0,0),(118,8,'铜仁',2,0,'',0,0),(119,8,'遵义',2,0,'',0,0),(120,9,'海口',2,0,'',0,0),(121,9,'三亚',2,0,'',0,0),(122,9,'白沙',2,0,'',0,0),(123,9,'保亭',2,0,'',0,0),(124,9,'昌江',2,0,'',0,0),(125,9,'澄迈县',2,0,'',0,0),(126,9,'定安县',2,0,'',0,0),(127,9,'东方',2,0,'',0,0),(128,9,'乐东',2,0,'',0,0),(129,9,'临高县',2,0,'',0,0),(130,9,'陵水',2,0,'',0,0),(131,9,'琼海',2,0,'',0,0),(132,9,'琼中',2,0,'',0,0),(133,9,'屯昌县',2,0,'',0,0),(134,9,'万宁',2,0,'',0,0),(135,9,'文昌',2,0,'',0,0),(136,9,'五指山',2,0,'',0,0),(137,9,'儋州',2,0,'',0,0),(138,10,'石家庄',2,0,'',0,0),(139,10,'保定',2,0,'',0,0),(140,10,'沧州',2,0,'',0,0),(141,10,'承德',2,0,'',0,0),(142,10,'邯郸',2,0,'',0,0),(143,10,'衡水',2,0,'',0,0),(144,10,'廊坊',2,0,'',0,0),(145,10,'秦皇岛',2,0,'',0,0),(146,10,'唐山',2,0,'',0,0),(147,10,'邢台',2,0,'',0,0),(148,10,'张家口',2,0,'',0,0),(149,11,'郑州',2,0,'',0,0),(150,11,'洛阳',2,0,'',0,0),(151,11,'开封',2,0,'',0,0),(152,11,'安阳',2,0,'',0,0),(153,11,'鹤壁',2,0,'',0,0),(154,11,'济源',2,0,'',0,0),(155,11,'焦作',2,0,'',0,0),(156,11,'南阳',2,0,'',0,0),(157,11,'平顶山',2,0,'',0,0),(158,11,'三门峡',2,0,'',0,0),(159,11,'商丘',2,0,'',0,0),(160,11,'新乡',2,0,'',0,0),(161,11,'信阳',2,0,'',0,0),(162,11,'许昌',2,0,'',0,0),(163,11,'周口',2,0,'',0,0),(164,11,'驻马店',2,0,'',0,0),(165,11,'漯河',2,0,'',0,0),(166,11,'濮阳',2,0,'',0,0),(167,12,'哈尔滨',2,0,'',0,0),(168,12,'大庆',2,0,'',0,0),(169,12,'大兴安岭',2,0,'',0,0),(170,12,'鹤岗',2,0,'',0,0),(171,12,'黑河',2,0,'',0,0),(172,12,'鸡西',2,0,'',0,0),(173,12,'佳木斯',2,0,'',0,0),(174,12,'牡丹江',2,0,'',0,0),(175,12,'七台河',2,0,'',0,0),(176,12,'齐齐哈尔',2,0,'',0,0),(177,12,'双鸭山',2,0,'',0,0),(178,12,'绥化',2,0,'',0,0),(179,12,'伊春',2,0,'',0,0),(180,13,'武汉',2,0,'',0,0),(181,13,'仙桃',2,0,'',0,0),(182,13,'鄂州',2,0,'',0,0),(183,13,'黄冈',2,0,'',0,0),(184,13,'黄石',2,0,'',0,0),(185,13,'荆门',2,0,'',0,0),(186,13,'荆州',2,0,'',0,0),(187,13,'潜江',2,0,'',0,0),(188,13,'神农架林区',2,0,'',0,0),(189,13,'十堰',2,0,'',0,0),(190,13,'随州',2,0,'',0,0),(191,13,'天门',2,0,'',0,0),(192,13,'咸宁',2,0,'',0,0),(193,13,'襄樊',2,0,'',0,0),(194,13,'孝感',2,0,'',0,0),(195,13,'宜昌',2,0,'',0,0),(196,13,'恩施',2,0,'',0,0),(197,14,'长沙',2,0,'',0,0),(198,14,'张家界',2,0,'',0,0),(199,14,'常德',2,0,'',0,0),(200,14,'郴州',2,0,'',0,0),(201,14,'衡阳',2,0,'',0,0),(202,14,'怀化',2,0,'',0,0),(203,14,'娄底',2,0,'',0,0),(204,14,'邵阳',2,0,'',0,0),(205,14,'湘潭',2,0,'',0,0),(206,14,'湘西',2,0,'',0,0),(207,14,'益阳',2,0,'',0,0),(208,14,'永州',2,0,'',0,0),(209,14,'岳阳',2,0,'',0,0),(210,14,'株洲',2,0,'',0,0),(211,15,'长春',2,0,'',0,0),(212,15,'吉林',2,0,'',0,0),(213,15,'白城',2,0,'',0,0),(214,15,'白山',2,0,'',0,0),(215,15,'辽源',2,0,'',0,0),(216,15,'四平',2,0,'',0,0),(217,15,'松原',2,0,'',0,0),(218,15,'通化',2,0,'',0,0),(219,15,'延边',2,0,'',0,0),(220,16,'南京',2,0,'',0,0),(221,16,'苏州',2,0,'',0,0),(222,16,'无锡',2,0,'',0,0),(223,16,'常州',2,0,'',0,0),(224,16,'淮安',2,0,'',0,0),(225,16,'连云港',2,0,'',0,0),(226,16,'南通',2,0,'',0,0),(227,16,'宿迁',2,0,'',0,0),(228,16,'泰州',2,0,'',0,0),(229,16,'徐州',2,0,'',0,0),(230,16,'盐城',2,0,'',0,0),(231,16,'扬州',2,0,'',0,0),(232,16,'镇江',2,0,'',0,0),(233,17,'南昌',2,0,'',0,0),(234,17,'抚州',2,0,'',0,0),(235,17,'赣州',2,0,'',0,0),(236,17,'吉安',2,0,'',0,0),(237,17,'景德镇',2,0,'',0,0),(238,17,'九江',2,0,'',0,0),(239,17,'萍乡',2,0,'',0,0),(240,17,'上饶',2,0,'',0,0),(241,17,'新余',2,0,'',0,0),(242,17,'宜春',2,0,'',0,0),(243,17,'鹰潭',2,0,'',0,0),(244,18,'沈阳',2,0,'',0,0),(245,18,'大连',2,0,'',0,0),(246,18,'鞍山',2,0,'',0,0),(247,18,'本溪',2,0,'',0,0),(248,18,'朝阳',2,0,'',0,0),(249,18,'丹东',2,0,'',0,0),(250,18,'抚顺',2,0,'',0,0),(251,18,'阜新',2,0,'',0,0),(252,18,'葫芦岛',2,0,'',0,0),(253,18,'锦州',2,0,'',0,0),(254,18,'辽阳',2,0,'',0,0),(255,18,'盘锦',2,0,'',0,0),(256,18,'铁岭',2,0,'',0,0),(257,18,'营口',2,0,'',0,0),(258,19,'呼和浩特',2,0,'',0,0),(259,19,'阿拉善盟',2,0,'',0,0),(260,19,'巴彦淖尔盟',2,0,'',0,0),(261,19,'包头',2,0,'',0,0),(262,19,'赤峰',2,0,'',0,0),(263,19,'鄂尔多斯',2,0,'',0,0),(264,19,'呼伦贝尔',2,0,'',0,0),(265,19,'通辽',2,0,'',0,0),(266,19,'乌海',2,0,'',0,0),(267,19,'乌兰察布市',2,0,'',0,0),(268,19,'锡林郭勒盟',2,0,'',0,0),(269,19,'兴安盟',2,0,'',0,0),(270,20,'银川',2,0,'',0,0),(271,20,'固原',2,0,'',0,0),(272,20,'石嘴山',2,0,'',0,0),(273,20,'吴忠',2,0,'',0,0),(274,20,'中卫',2,0,'',0,0),(275,21,'西宁',2,0,'',0,0),(276,21,'果洛',2,0,'',0,0),(277,21,'海北',2,0,'',0,0),(278,21,'海东',2,0,'',0,0),(279,21,'海南',2,0,'',0,0),(280,21,'海西',2,0,'',0,0),(281,21,'黄南',2,0,'',0,0),(282,21,'玉树',2,0,'',0,0),(283,22,'济南',2,0,'',0,0),(284,22,'青岛',2,0,'',0,0),(285,22,'滨州',2,0,'',0,0),(286,22,'德州',2,0,'',0,0),(287,22,'东营',2,0,'',0,0),(288,22,'菏泽',2,0,'',0,0),(289,22,'济宁',2,0,'',0,0),(290,22,'莱芜',2,0,'',0,0),(291,22,'聊城',2,0,'',0,0),(292,22,'临沂',2,0,'',0,0),(293,22,'日照',2,0,'',0,0),(294,22,'泰安',2,0,'',0,0),(295,22,'威海',2,0,'',0,0),(296,22,'潍坊',2,0,'',0,0),(297,22,'烟台',2,0,'',0,0),(298,22,'枣庄',2,0,'',0,0),(299,22,'淄博',2,0,'',0,0),(300,23,'太原',2,0,'',0,0),(301,23,'长治',2,0,'',0,0),(302,23,'大同',2,0,'',0,0),(303,23,'晋城',2,0,'',0,0),(304,23,'晋中',2,0,'',0,0),(305,23,'临汾',2,0,'',0,0),(306,23,'吕梁',2,0,'',0,0),(307,23,'朔州',2,0,'',0,0),(308,23,'忻州',2,0,'',0,0),(309,23,'阳泉',2,0,'',0,0),(310,23,'运城',2,0,'',0,0),(311,24,'西安',2,0,'',0,0),(312,24,'安康',2,0,'',0,0),(313,24,'宝鸡',2,0,'',0,0),(314,24,'汉中',2,0,'',0,0),(315,24,'商洛',2,0,'',0,0),(316,24,'铜川',2,0,'',0,0),(317,24,'渭南',2,0,'',0,0),(318,24,'咸阳',2,0,'',0,0),(319,24,'延安',2,0,'',0,0),(320,24,'榆林',2,0,'',0,0),(321,25,'上海',2,0,'',0,0),(322,26,'成都',2,0,'',0,0),(323,26,'绵阳',2,0,'',0,0),(324,26,'阿坝',2,0,'',0,0),(325,26,'巴中',2,0,'',0,0),(326,26,'达州',2,0,'',0,0),(327,26,'德阳',2,0,'',0,0),(328,26,'甘孜',2,0,'',0,0),(329,26,'广安',2,0,'',0,0),(330,26,'广元',2,0,'',0,0),(331,26,'乐山',2,0,'',0,0),(332,26,'凉山',2,0,'',0,0),(333,26,'眉山',2,0,'',0,0),(334,26,'南充',2,0,'',0,0),(335,26,'内江',2,0,'',0,0),(336,26,'攀枝花',2,0,'',0,0),(337,26,'遂宁',2,0,'',0,0),(338,26,'雅安',2,0,'',0,0),(339,26,'宜宾',2,0,'',0,0),(340,26,'资阳',2,0,'',0,0),(341,26,'自贡',2,0,'',0,0),(342,26,'泸州',2,0,'',0,0),(343,27,'天津',2,0,'',0,0),(344,28,'拉萨',2,0,'',0,0),(345,28,'阿里',2,0,'',0,0),(346,28,'昌都',2,0,'',0,0),(347,28,'林芝',2,0,'',0,0),(348,28,'那曲',2,0,'',0,0),(349,28,'日喀则',2,0,'',0,0),(350,28,'山南',2,0,'',0,0),(351,29,'乌鲁木齐',2,0,'',0,0),(352,29,'阿克苏',2,0,'',0,0),(353,29,'阿拉尔',2,0,'',0,0),(354,29,'巴音郭楞',2,0,'',0,0),(355,29,'博尔塔拉',2,0,'',0,0),(356,29,'昌吉',2,0,'',0,0),(357,29,'哈密',2,0,'',0,0),(358,29,'和田',2,0,'',0,0),(359,29,'喀什',2,0,'',0,0),(360,29,'克拉玛依',2,0,'',0,0),(361,29,'克孜勒苏',2,0,'',0,0),(362,29,'石河子',2,0,'',0,0),(363,29,'图木舒克',2,0,'',0,0),(364,29,'吐鲁番',2,0,'',0,0),(365,29,'五家渠',2,0,'',0,0),(366,29,'伊犁',2,0,'',0,0),(367,30,'昆明',2,0,'',0,0),(368,30,'怒江',2,0,'',0,0),(369,30,'普洱',2,0,'',0,0),(370,30,'丽江',2,0,'',0,0),(371,30,'保山',2,0,'',0,0),(372,30,'楚雄',2,0,'',0,0),(373,30,'大理',2,0,'',0,0),(374,30,'德宏',2,0,'',0,0),(375,30,'迪庆',2,0,'',0,0),(376,30,'红河',2,0,'',0,0),(377,30,'临沧',2,0,'',0,0),(378,30,'曲靖',2,0,'',0,0),(379,30,'文山',2,0,'',0,0),(380,30,'西双版纳',2,0,'',0,0),(381,30,'玉溪',2,0,'',0,0),(382,30,'昭通',2,0,'',0,0),(383,31,'杭州',2,0,'',0,0),(384,31,'湖州',2,0,'',0,0),(385,31,'嘉兴',2,0,'',0,0),(386,31,'金华',2,0,'',0,0),(387,31,'丽水',2,0,'',0,0),(388,31,'宁波',2,0,'',0,0),(389,31,'绍兴',2,0,'',0,0),(390,31,'台州',2,0,'',0,0),(391,31,'温州',2,0,'',0,0),(392,31,'舟山',2,0,'',0,0),(393,31,'衢州',2,0,'',0,0),(394,32,'重庆',2,0,'',0,0),(395,33,'香港',2,0,'',0,0),(396,34,'澳门',2,0,'',0,0),(397,35,'台湾',2,0,'',0,0),(398,36,'迎江区',3,0,'',0,0),(399,36,'大观区',3,0,'',0,0),(400,36,'宜秀区',3,0,'',0,0),(401,36,'桐城市',3,0,'',0,0),(402,36,'怀宁县',3,0,'',0,0),(403,36,'枞阳县',3,0,'',0,0),(404,36,'潜山县',3,0,'',0,0),(405,36,'太湖县',3,0,'',0,0),(406,36,'宿松县',3,0,'',0,0),(407,36,'望江县',3,0,'',0,0),(408,36,'岳西县',3,0,'',0,0),(409,37,'中市区',3,0,'',0,0),(410,37,'东市区',3,0,'',0,0),(411,37,'西市区',3,0,'',0,0),(412,37,'郊区',3,0,'',0,0),(413,37,'怀远县',3,0,'',0,0),(414,37,'五河县',3,0,'',0,0),(415,37,'固镇县',3,0,'',0,0),(416,38,'居巢区',3,0,'',0,0),(417,38,'庐江县',3,0,'',0,0),(418,38,'无为县',3,0,'',0,0),(419,38,'含山县',3,0,'',0,0),(420,38,'和县',3,0,'',0,0),(421,39,'贵池区',3,0,'',0,0),(422,39,'东至县',3,0,'',0,0),(423,39,'石台县',3,0,'',0,0),(424,39,'青阳县',3,0,'',0,0),(425,40,'琅琊区',3,0,'',0,0),(426,40,'南谯区',3,0,'',0,0),(427,40,'天长市',3,0,'',0,0),(428,40,'明光市',3,0,'',0,0),(429,40,'来安县',3,0,'',0,0),(430,40,'全椒县',3,0,'',0,0),(431,40,'定远县',3,0,'',0,0),(432,40,'凤阳县',3,0,'',0,0),(433,41,'蚌山区',3,0,'',0,0),(434,41,'龙子湖区',3,0,'',0,0),(435,41,'禹会区',3,0,'',0,0),(436,41,'淮上区',3,0,'',0,0),(437,41,'颍州区',3,0,'',0,0),(438,41,'颍东区',3,0,'',0,0),(439,41,'颍泉区',3,0,'',0,0),(440,41,'界首市',3,0,'',0,0),(441,41,'临泉县',3,0,'',0,0),(442,41,'太和县',3,0,'',0,0),(443,41,'阜南县',3,0,'',0,0),(444,41,'颖上县',3,0,'',0,0),(445,42,'相山区',3,0,'',0,0),(446,42,'杜集区',3,0,'',0,0),(447,42,'烈山区',3,0,'',0,0),(448,42,'濉溪县',3,0,'',0,0),(449,43,'田家庵区',3,0,'',0,0),(450,43,'大通区',3,0,'',0,0),(451,43,'谢家集区',3,0,'',0,0),(452,43,'八公山区',3,0,'',0,0),(453,43,'潘集区',3,0,'',0,0),(454,43,'凤台县',3,0,'',0,0),(455,44,'屯溪区',3,0,'',0,0),(456,44,'黄山区',3,0,'',0,0),(457,44,'徽州区',3,0,'',0,0),(458,44,'歙县',3,0,'',0,0),(459,44,'休宁县',3,0,'',0,0),(460,44,'黟县',3,0,'',0,0),(461,44,'祁门县',3,0,'',0,0),(462,45,'金安区',3,0,'',0,0),(463,45,'裕安区',3,0,'',0,0),(464,45,'寿县',3,0,'',0,0),(465,45,'霍邱县',3,0,'',0,0),(466,45,'舒城县',3,0,'',0,0),(467,45,'金寨县',3,0,'',0,0),(468,45,'霍山县',3,0,'',0,0),(469,46,'雨山区',3,0,'',0,0),(470,46,'花山区',3,0,'',0,0),(471,46,'金家庄区',3,0,'',0,0),(472,46,'当涂县',3,0,'',0,0),(473,47,'埇桥区',3,0,'',0,0),(474,47,'砀山县',3,0,'',0,0),(475,47,'萧县',3,0,'',0,0),(476,47,'灵璧县',3,0,'',0,0),(477,47,'泗县',3,0,'',0,0),(478,48,'铜官山区',3,0,'',0,0),(479,48,'狮子山区',3,0,'',0,0),(480,48,'郊区',3,0,'',0,0),(481,48,'铜陵县',3,0,'',0,0),(482,49,'镜湖区',3,0,'',0,0),(483,49,'弋江区',3,0,'',0,0),(484,49,'鸠江区',3,0,'',0,0),(485,49,'三山区',3,0,'',0,0),(486,49,'芜湖县',3,0,'',0,0),(487,49,'繁昌县',3,0,'',0,0),(488,49,'南陵县',3,0,'',0,0),(489,50,'宣州区',3,0,'',0,0),(490,50,'宁国市',3,0,'',0,0),(491,50,'郎溪县',3,0,'',0,0),(492,50,'广德县',3,0,'',0,0),(493,50,'泾县',3,0,'',0,0),(494,50,'绩溪县',3,0,'',0,0),(495,50,'旌德县',3,0,'',0,0),(496,51,'涡阳县',3,0,'',0,0),(497,51,'蒙城县',3,0,'',0,0),(498,51,'利辛县',3,0,'',0,0),(499,51,'谯城区',3,0,'',0,0),(500,52,'东城区',3,0,'',0,0),(501,52,'西城区',3,0,'',0,0),(502,52,'海淀区',3,0,'',0,0),(503,52,'朝阳区',3,0,'',0,0),(504,52,'崇文区',3,0,'',0,0),(505,52,'宣武区',3,0,'',0,0),(506,52,'丰台区',3,0,'',0,0),(507,52,'石景山区',3,0,'',0,0),(508,52,'房山区',3,0,'',0,0),(509,52,'门头沟区',3,0,'',0,0),(510,52,'通州区',3,0,'',0,0),(511,52,'顺义区',3,0,'',0,0),(512,52,'昌平区',3,0,'',0,0),(513,52,'怀柔区',3,0,'',0,0),(514,52,'平谷区',3,0,'',0,0),(515,52,'大兴区',3,0,'',0,0),(516,52,'密云县',3,0,'',0,0),(517,52,'延庆县',3,0,'',0,0),(518,53,'鼓楼区',3,0,'',0,0),(519,53,'台江区',3,0,'',0,0),(520,53,'仓山区',3,0,'',0,0),(521,53,'马尾区',3,0,'',0,0),(522,53,'晋安区',3,0,'',0,0),(523,53,'福清市',3,0,'',0,0),(524,53,'长乐市',3,0,'',0,0),(525,53,'闽侯县',3,0,'',0,0),(526,53,'连江县',3,0,'',0,0),(527,53,'罗源县',3,0,'',0,0),(528,53,'闽清县',3,0,'',0,0),(529,53,'永泰县',3,0,'',0,0),(530,53,'平潭县',3,0,'',0,0),(531,54,'新罗区',3,0,'',0,0),(532,54,'漳平市',3,0,'',0,0),(533,54,'长汀县',3,0,'',0,0),(534,54,'永定县',3,0,'',0,0),(535,54,'上杭县',3,0,'',0,0),(536,54,'武平县',3,0,'',0,0),(537,54,'连城县',3,0,'',0,0),(538,55,'延平区',3,0,'',0,0),(539,55,'邵武市',3,0,'',0,0),(540,55,'武夷山市',3,0,'',0,0),(541,55,'建瓯市',3,0,'',0,0),(542,55,'建阳市',3,0,'',0,0),(543,55,'顺昌县',3,0,'',0,0),(544,55,'浦城县',3,0,'',0,0),(545,55,'光泽县',3,0,'',0,0),(546,55,'松溪县',3,0,'',0,0),(547,55,'政和县',3,0,'',0,0),(548,56,'蕉城区',3,0,'',0,0),(549,56,'福安市',3,0,'',0,0),(550,56,'福鼎市',3,0,'',0,0),(551,56,'霞浦县',3,0,'',0,0),(552,56,'古田县',3,0,'',0,0),(553,56,'屏南县',3,0,'',0,0),(554,56,'寿宁县',3,0,'',0,0),(555,56,'周宁县',3,0,'',0,0),(556,56,'柘荣县',3,0,'',0,0),(557,57,'城厢区',3,0,'',0,0),(558,57,'涵江区',3,0,'',0,0),(559,57,'荔城区',3,0,'',0,0),(560,57,'秀屿区',3,0,'',0,0),(561,57,'仙游县',3,0,'',0,0),(562,58,'鲤城区',3,0,'',0,0),(563,58,'丰泽区',3,0,'',0,0),(564,58,'洛江区',3,0,'',0,0),(565,58,'清濛开发区',3,0,'',0,0),(566,58,'泉港区',3,0,'',0,0),(567,58,'石狮市',3,0,'',0,0),(568,58,'晋江市',3,0,'',0,0),(569,58,'南安市',3,0,'',0,0),(570,58,'惠安县',3,0,'',0,0),(571,58,'安溪县',3,0,'',0,0),(572,58,'永春县',3,0,'',0,0),(573,58,'德化县',3,0,'',0,0),(574,58,'金门县',3,0,'',0,0),(575,59,'梅列区',3,0,'',0,0),(576,59,'三元区',3,0,'',0,0),(577,59,'永安市',3,0,'',0,0),(578,59,'明溪县',3,0,'',0,0),(579,59,'清流县',3,0,'',0,0),(580,59,'宁化县',3,0,'',0,0),(581,59,'大田县',3,0,'',0,0),(582,59,'尤溪县',3,0,'',0,0),(583,59,'沙县',3,0,'',0,0),(584,59,'将乐县',3,0,'',0,0),(585,59,'泰宁县',3,0,'',0,0),(586,59,'建宁县',3,0,'',0,0),(587,60,'思明区',3,0,'',0,0),(588,60,'海沧区',3,0,'',0,0),(589,60,'湖里区',3,0,'',0,0),(590,60,'集美区',3,0,'',0,0),(591,60,'同安区',3,0,'',0,0),(592,60,'翔安区',3,0,'',0,0),(593,61,'芗城区',3,0,'',0,0),(594,61,'龙文区',3,0,'',0,0),(595,61,'龙海市',3,0,'',0,0),(596,61,'云霄县',3,0,'',0,0),(597,61,'漳浦县',3,0,'',0,0),(598,61,'诏安县',3,0,'',0,0),(599,61,'长泰县',3,0,'',0,0),(600,61,'东山县',3,0,'',0,0),(601,61,'南靖县',3,0,'',0,0),(602,61,'平和县',3,0,'',0,0),(603,61,'华安县',3,0,'',0,0),(604,62,'皋兰县',3,0,'',0,0),(605,62,'城关区',3,0,'',0,0),(606,62,'七里河区',3,0,'',0,0),(607,62,'西固区',3,0,'',0,0),(608,62,'安宁区',3,0,'',0,0),(609,62,'红古区',3,0,'',0,0),(610,62,'永登县',3,0,'',0,0),(611,62,'榆中县',3,0,'',0,0),(612,63,'白银区',3,0,'',0,0),(613,63,'平川区',3,0,'',0,0),(614,63,'会宁县',3,0,'',0,0),(615,63,'景泰县',3,0,'',0,0),(616,63,'靖远县',3,0,'',0,0),(617,64,'临洮县',3,0,'',0,0),(618,64,'陇西县',3,0,'',0,0),(619,64,'通渭县',3,0,'',0,0),(620,64,'渭源县',3,0,'',0,0),(621,64,'漳县',3,0,'',0,0),(622,64,'岷县',3,0,'',0,0),(623,64,'安定区',3,0,'',0,0),(624,64,'安定区',3,0,'',0,0),(625,65,'合作市',3,0,'',0,0),(626,65,'临潭县',3,0,'',0,0),(627,65,'卓尼县',3,0,'',0,0),(628,65,'舟曲县',3,0,'',0,0),(629,65,'迭部县',3,0,'',0,0),(630,65,'玛曲县',3,0,'',0,0),(631,65,'碌曲县',3,0,'',0,0),(632,65,'夏河县',3,0,'',0,0),(633,66,'嘉峪关市',3,0,'',0,0),(634,67,'金川区',3,0,'',0,0),(635,67,'永昌县',3,0,'',0,0),(636,68,'肃州区',3,0,'',0,0),(637,68,'玉门市',3,0,'',0,0),(638,68,'敦煌市',3,0,'',0,0),(639,68,'金塔县',3,0,'',0,0),(640,68,'瓜州县',3,0,'',0,0),(641,68,'肃北',3,0,'',0,0),(642,68,'阿克塞',3,0,'',0,0),(643,69,'临夏市',3,0,'',0,0),(644,69,'临夏县',3,0,'',0,0),(645,69,'康乐县',3,0,'',0,0),(646,69,'永靖县',3,0,'',0,0),(647,69,'广河县',3,0,'',0,0),(648,69,'和政县',3,0,'',0,0),(649,69,'东乡族自治县',3,0,'',0,0),(650,69,'积石山',3,0,'',0,0),(651,70,'成县',3,0,'',0,0),(652,70,'徽县',3,0,'',0,0),(653,70,'康县',3,0,'',0,0),(654,70,'礼县',3,0,'',0,0),(655,70,'两当县',3,0,'',0,0),(656,70,'文县',3,0,'',0,0),(657,70,'西和县',3,0,'',0,0),(658,70,'宕昌县',3,0,'',0,0),(659,70,'武都区',3,0,'',0,0),(660,71,'崇信县',3,0,'',0,0),(661,71,'华亭县',3,0,'',0,0),(662,71,'静宁县',3,0,'',0,0),(663,71,'灵台县',3,0,'',0,0),(664,71,'崆峒区',3,0,'',0,0),(665,71,'庄浪县',3,0,'',0,0),(666,71,'泾川县',3,0,'',0,0),(667,72,'合水县',3,0,'',0,0),(668,72,'华池县',3,0,'',0,0),(669,72,'环县',3,0,'',0,0),(670,72,'宁县',3,0,'',0,0),(671,72,'庆城县',3,0,'',0,0),(672,72,'西峰区',3,0,'',0,0),(673,72,'镇原县',3,0,'',0,0),(674,72,'正宁县',3,0,'',0,0),(675,73,'甘谷县',3,0,'',0,0),(676,73,'秦安县',3,0,'',0,0),(677,73,'清水县',3,0,'',0,0),(678,73,'秦州区',3,0,'',0,0),(679,73,'麦积区',3,0,'',0,0),(680,73,'武山县',3,0,'',0,0),(681,73,'张家川',3,0,'',0,0),(682,74,'古浪县',3,0,'',0,0),(683,74,'民勤县',3,0,'',0,0),(684,74,'天祝',3,0,'',0,0),(685,74,'凉州区',3,0,'',0,0),(686,75,'高台县',3,0,'',0,0),(687,75,'临泽县',3,0,'',0,0),(688,75,'民乐县',3,0,'',0,0),(689,75,'山丹县',3,0,'',0,0),(690,75,'肃南',3,0,'',0,0),(691,75,'甘州区',3,0,'',0,0),(692,76,'从化市',3,0,'',0,0),(693,76,'天河区',3,0,'',0,0),(694,76,'东山区',3,0,'',0,0),(695,76,'白云区',3,0,'',0,0),(696,76,'海珠区',3,0,'',0,0),(697,76,'荔湾区',3,0,'',0,0),(698,76,'越秀区',3,0,'',0,0),(699,76,'黄埔区',3,0,'',0,0),(700,76,'番禺区',3,0,'',0,0),(701,76,'花都区',3,0,'',0,0),(702,76,'增城区',3,0,'',0,0),(703,76,'从化区',3,0,'',0,0),(704,76,'市郊',3,0,'',0,0),(705,77,'福田区',3,0,'',0,0),(706,77,'罗湖区',3,0,'',0,0),(707,77,'南山区',3,0,'',0,0),(708,77,'宝安区',3,0,'',0,0),(709,77,'龙岗区',3,0,'',0,0),(710,77,'盐田区',3,0,'',0,0),(711,78,'湘桥区',3,0,'',0,0),(712,78,'潮安县',3,0,'',0,0),(713,78,'饶平县',3,0,'',0,0),(714,79,'南城区',3,0,'',0,0),(715,79,'东城区',3,0,'',0,0),(716,79,'万江区',3,0,'',0,0),(717,79,'莞城区',3,0,'',0,0),(718,79,'石龙镇',3,0,'',0,0),(719,79,'虎门镇',3,0,'',0,0),(720,79,'麻涌镇',3,0,'',0,0),(721,79,'道滘镇',3,0,'',0,0),(722,79,'石碣镇',3,0,'',0,0),(723,79,'沙田镇',3,0,'',0,0),(724,79,'望牛墩镇',3,0,'',0,0),(725,79,'洪梅镇',3,0,'',0,0),(726,79,'茶山镇',3,0,'',0,0),(727,79,'寮步镇',3,0,'',0,0),(728,79,'大岭山镇',3,0,'',0,0),(729,79,'大朗镇',3,0,'',0,0),(730,79,'黄江镇',3,0,'',0,0),(731,79,'樟木头',3,0,'',0,0),(732,79,'凤岗镇',3,0,'',0,0),(733,79,'塘厦镇',3,0,'',0,0),(734,79,'谢岗镇',3,0,'',0,0),(735,79,'厚街镇',3,0,'',0,0),(736,79,'清溪镇',3,0,'',0,0),(737,79,'常平镇',3,0,'',0,0),(738,79,'桥头镇',3,0,'',0,0),(739,79,'横沥镇',3,0,'',0,0),(740,79,'东坑镇',3,0,'',0,0),(741,79,'企石镇',3,0,'',0,0),(742,79,'石排镇',3,0,'',0,0),(743,79,'长安镇',3,0,'',0,0),(744,79,'中堂镇',3,0,'',0,0),(745,79,'高埗镇',3,0,'',0,0),(746,80,'禅城区',3,0,'',0,0),(747,80,'南海区',3,0,'',0,0),(748,80,'顺德区',3,0,'',0,0),(749,80,'三水区',3,0,'',0,0),(750,80,'高明区',3,0,'',0,0),(751,81,'东源县',3,0,'',0,0),(752,81,'和平县',3,0,'',0,0),(753,81,'源城区',3,0,'',0,0),(754,81,'连平县',3,0,'',0,0),(755,81,'龙川县',3,0,'',0,0),(756,81,'紫金县',3,0,'',0,0),(757,82,'惠阳区',3,0,'',0,0),(758,82,'惠城区',3,0,'',0,0),(759,82,'大亚湾',3,0,'',0,0),(760,82,'博罗县',3,0,'',0,0),(761,82,'惠东县',3,0,'',0,0),(762,82,'龙门县',3,0,'',0,0),(763,83,'江海区',3,0,'',0,0),(764,83,'蓬江区',3,0,'',0,0),(765,83,'新会区',3,0,'',0,0),(766,83,'台山市',3,0,'',0,0),(767,83,'开平市',3,0,'',0,0),(768,83,'鹤山市',3,0,'',0,0),(769,83,'恩平市',3,0,'',0,0),(770,84,'榕城区',3,0,'',0,0),(771,84,'普宁市',3,0,'',0,0),(772,84,'揭东县',3,0,'',0,0),(773,84,'揭西县',3,0,'',0,0),(774,84,'惠来县',3,0,'',0,0),(775,85,'茂南区',3,0,'',0,0),(776,85,'茂港区',3,0,'',0,0),(777,85,'高州市',3,0,'',0,0),(778,85,'化州市',3,0,'',0,0),(779,85,'信宜市',3,0,'',0,0),(780,85,'电白县',3,0,'',0,0),(781,86,'梅县',3,0,'',0,0),(782,86,'梅江区',3,0,'',0,0),(783,86,'兴宁市',3,0,'',0,0),(784,86,'大埔县',3,0,'',0,0),(785,86,'丰顺县',3,0,'',0,0),(786,86,'五华县',3,0,'',0,0),(787,86,'平远县',3,0,'',0,0),(788,86,'蕉岭县',3,0,'',0,0),(789,87,'清城区',3,0,'',0,0),(790,87,'英德市',3,0,'',0,0),(791,87,'连州市',3,0,'',0,0),(792,87,'佛冈县',3,0,'',0,0),(793,87,'阳山县',3,0,'',0,0),(794,87,'清新县',3,0,'',0,0),(795,87,'连山',3,0,'',0,0),(796,87,'连南',3,0,'',0,0),(797,88,'南澳县',3,0,'',0,0),(798,88,'潮阳区',3,0,'',0,0),(799,88,'澄海区',3,0,'',0,0),(800,88,'龙湖区',3,0,'',0,0),(801,88,'金平区',3,0,'',0,0),(802,88,'濠江区',3,0,'',0,0),(803,88,'潮南区',3,0,'',0,0),(804,89,'城区',3,0,'',0,0),(805,89,'陆丰市',3,0,'',0,0),(806,89,'海丰县',3,0,'',0,0),(807,89,'陆河县',3,0,'',0,0),(808,90,'曲江县',3,0,'',0,0),(809,90,'浈江区',3,0,'',0,0),(810,90,'武江区',3,0,'',0,0),(811,90,'曲江区',3,0,'',0,0),(812,90,'乐昌市',3,0,'',0,0),(813,90,'南雄市',3,0,'',0,0),(814,90,'始兴县',3,0,'',0,0),(815,90,'仁化县',3,0,'',0,0),(816,90,'翁源县',3,0,'',0,0),(817,90,'新丰县',3,0,'',0,0),(818,90,'乳源',3,0,'',0,0),(819,91,'江城区',3,0,'',0,0),(820,91,'阳春市',3,0,'',0,0),(821,91,'阳西县',3,0,'',0,0),(822,91,'阳东县',3,0,'',0,0),(823,92,'云城区',3,0,'',0,0),(824,92,'罗定市',3,0,'',0,0),(825,92,'新兴县',3,0,'',0,0),(826,92,'郁南县',3,0,'',0,0),(827,92,'云安县',3,0,'',0,0),(828,93,'赤坎区',3,0,'',0,0),(829,93,'霞山区',3,0,'',0,0),(830,93,'坡头区',3,0,'',0,0),(831,93,'麻章区',3,0,'',0,0),(832,93,'廉江市',3,0,'',0,0),(833,93,'雷州市',3,0,'',0,0),(834,93,'吴川市',3,0,'',0,0),(835,93,'遂溪县',3,0,'',0,0),(836,93,'徐闻县',3,0,'',0,0),(837,94,'肇庆市',3,0,'',0,0),(838,94,'高要市',3,0,'',0,0),(839,94,'四会市',3,0,'',0,0),(840,94,'广宁县',3,0,'',0,0),(841,94,'怀集县',3,0,'',0,0),(842,94,'封开县',3,0,'',0,0),(843,94,'德庆县',3,0,'',0,0),(844,95,'石岐街道',3,0,'',0,0),(845,95,'东区街道',3,0,'',0,0),(846,95,'西区街道',3,0,'',0,0),(847,95,'环城街道',3,0,'',0,0),(848,95,'中山港街道',3,0,'',0,0),(849,95,'五桂山街道',3,0,'',0,0),(850,96,'香洲区',3,0,'',0,0),(851,96,'斗门区',3,0,'',0,0),(852,96,'金湾区',3,0,'',0,0),(853,97,'邕宁区',3,0,'',0,0),(854,97,'青秀区',3,0,'',0,0),(855,97,'兴宁区',3,0,'',0,0),(856,97,'良庆区',3,0,'',0,0),(857,97,'西乡塘区',3,0,'',0,0),(858,97,'江南区',3,0,'',0,0),(859,97,'武鸣县',3,0,'',0,0),(860,97,'隆安县',3,0,'',0,0),(861,97,'马山县',3,0,'',0,0),(862,97,'上林县',3,0,'',0,0),(863,97,'宾阳县',3,0,'',0,0),(864,97,'横县',3,0,'',0,0),(865,98,'秀峰区',3,0,'',0,0),(866,98,'叠彩区',3,0,'',0,0),(867,98,'象山区',3,0,'',0,0),(868,98,'七星区',3,0,'',0,0),(869,98,'雁山区',3,0,'',0,0),(870,98,'阳朔县',3,0,'',0,0),(871,98,'临桂县',3,0,'',0,0),(872,98,'灵川县',3,0,'',0,0),(873,98,'全州县',3,0,'',0,0),(874,98,'平乐县',3,0,'',0,0),(875,98,'兴安县',3,0,'',0,0),(876,98,'灌阳县',3,0,'',0,0),(877,98,'荔浦县',3,0,'',0,0),(878,98,'资源县',3,0,'',0,0),(879,98,'永福县',3,0,'',0,0),(880,98,'龙胜',3,0,'',0,0),(881,98,'恭城',3,0,'',0,0),(882,99,'右江区',3,0,'',0,0),(883,99,'凌云县',3,0,'',0,0),(884,99,'平果县',3,0,'',0,0),(885,99,'西林县',3,0,'',0,0),(886,99,'乐业县',3,0,'',0,0),(887,99,'德保县',3,0,'',0,0),(888,99,'田林县',3,0,'',0,0),(889,99,'田阳县',3,0,'',0,0),(890,99,'靖西县',3,0,'',0,0),(891,99,'田东县',3,0,'',0,0),(892,99,'那坡县',3,0,'',0,0),(893,99,'隆林',3,0,'',0,0),(894,100,'海城区',3,0,'',0,0),(895,100,'银海区',3,0,'',0,0),(896,100,'铁山港区',3,0,'',0,0),(897,100,'合浦县',3,0,'',0,0),(898,101,'江州区',3,0,'',0,0),(899,101,'凭祥市',3,0,'',0,0),(900,101,'宁明县',3,0,'',0,0),(901,101,'扶绥县',3,0,'',0,0),(902,101,'龙州县',3,0,'',0,0),(903,101,'大新县',3,0,'',0,0),(904,101,'天等县',3,0,'',0,0),(905,102,'港口区',3,0,'',0,0),(906,102,'防城区',3,0,'',0,0),(907,102,'东兴市',3,0,'',0,0),(908,102,'上思县',3,0,'',0,0),(909,103,'港北区',3,0,'',0,0),(910,103,'港南区',3,0,'',0,0),(911,103,'覃塘区',3,0,'',0,0),(912,103,'桂平市',3,0,'',0,0),(913,103,'平南县',3,0,'',0,0),(914,104,'金城江区',3,0,'',0,0),(915,104,'宜州市',3,0,'',0,0),(916,104,'天峨县',3,0,'',0,0),(917,104,'凤山县',3,0,'',0,0),(918,104,'南丹县',3,0,'',0,0),(919,104,'东兰县',3,0,'',0,0),(920,104,'都安',3,0,'',0,0),(921,104,'罗城',3,0,'',0,0),(922,104,'巴马',3,0,'',0,0),(923,104,'环江',3,0,'',0,0),(924,104,'大化',3,0,'',0,0),(925,105,'八步区',3,0,'',0,0),(926,105,'钟山县',3,0,'',0,0),(927,105,'昭平县',3,0,'',0,0),(928,105,'富川',3,0,'',0,0),(929,106,'兴宾区',3,0,'',0,0),(930,106,'合山市',3,0,'',0,0),(931,106,'象州县',3,0,'',0,0),(932,106,'武宣县',3,0,'',0,0),(933,106,'忻城县',3,0,'',0,0),(934,106,'金秀',3,0,'',0,0),(935,107,'城中区',3,0,'',0,0),(936,107,'鱼峰区',3,0,'',0,0),(937,107,'柳北区',3,0,'',0,0),(938,107,'柳南区',3,0,'',0,0),(939,107,'柳江县',3,0,'',0,0),(940,107,'柳城县',3,0,'',0,0),(941,107,'鹿寨县',3,0,'',0,0),(942,107,'融安县',3,0,'',0,0),(943,107,'融水',3,0,'',0,0),(944,107,'三江',3,0,'',0,0),(945,108,'钦南区',3,0,'',0,0),(946,108,'钦北区',3,0,'',0,0),(947,108,'灵山县',3,0,'',0,0),(948,108,'浦北县',3,0,'',0,0),(949,109,'万秀区',3,0,'',0,0),(950,109,'蝶山区',3,0,'',0,0),(951,109,'长洲区',3,0,'',0,0),(952,109,'岑溪市',3,0,'',0,0),(953,109,'苍梧县',3,0,'',0,0),(954,109,'藤县',3,0,'',0,0),(955,109,'蒙山县',3,0,'',0,0),(956,110,'玉州区',3,0,'',0,0),(957,110,'北流市',3,0,'',0,0),(958,110,'容县',3,0,'',0,0),(959,110,'陆川县',3,0,'',0,0),(960,110,'博白县',3,0,'',0,0),(961,110,'兴业县',3,0,'',0,0),(962,111,'南明区',3,0,'',0,0),(963,111,'云岩区',3,0,'',0,0),(964,111,'花溪区',3,0,'',0,0),(965,111,'乌当区',3,0,'',0,0),(966,111,'白云区',3,0,'',0,0),(967,111,'小河区',3,0,'',0,0),(968,111,'金阳新区',3,0,'',0,0),(969,111,'新天园区',3,0,'',0,0),(970,111,'清镇市',3,0,'',0,0),(971,111,'开阳县',3,0,'',0,0),(972,111,'修文县',3,0,'',0,0),(973,111,'息烽县',3,0,'',0,0),(974,112,'西秀区',3,0,'',0,0),(975,112,'关岭',3,0,'',0,0),(976,112,'镇宁',3,0,'',0,0),(977,112,'紫云',3,0,'',0,0),(978,112,'平坝县',3,0,'',0,0),(979,112,'普定县',3,0,'',0,0),(980,113,'毕节市',3,0,'',0,0),(981,113,'大方县',3,0,'',0,0),(982,113,'黔西县',3,0,'',0,0),(983,113,'金沙县',3,0,'',0,0),(984,113,'织金县',3,0,'',0,0),(985,113,'纳雍县',3,0,'',0,0),(986,113,'赫章县',3,0,'',0,0),(987,113,'威宁',3,0,'',0,0),(988,114,'钟山区',3,0,'',0,0),(989,114,'六枝特区',3,0,'',0,0),(990,114,'水城县',3,0,'',0,0),(991,114,'盘县',3,0,'',0,0),(992,115,'凯里市',3,0,'',0,0),(993,115,'黄平县',3,0,'',0,0),(994,115,'施秉县',3,0,'',0,0),(995,115,'三穗县',3,0,'',0,0),(996,115,'镇远县',3,0,'',0,0),(997,115,'岑巩县',3,0,'',0,0),(998,115,'天柱县',3,0,'',0,0),(999,115,'锦屏县',3,0,'',0,0),(1000,115,'剑河县',3,0,'',0,0),(1001,115,'台江县',3,0,'',0,0),(1002,115,'黎平县',3,0,'',0,0),(1003,115,'榕江县',3,0,'',0,0),(1004,115,'从江县',3,0,'',0,0),(1005,115,'雷山县',3,0,'',0,0),(1006,115,'麻江县',3,0,'',0,0),(1007,115,'丹寨县',3,0,'',0,0),(1008,116,'都匀市',3,0,'',0,0),(1009,116,'福泉市',3,0,'',0,0),(1010,116,'荔波县',3,0,'',0,0),(1011,116,'贵定县',3,0,'',0,0),(1012,116,'瓮安县',3,0,'',0,0),(1013,116,'独山县',3,0,'',0,0),(1014,116,'平塘县',3,0,'',0,0),(1015,116,'罗甸县',3,0,'',0,0),(1016,116,'长顺县',3,0,'',0,0),(1017,116,'龙里县',3,0,'',0,0),(1018,116,'惠水县',3,0,'',0,0),(1019,116,'三都',3,0,'',0,0),(1020,117,'兴义市',3,0,'',0,0),(1021,117,'兴仁县',3,0,'',0,0),(1022,117,'普安县',3,0,'',0,0),(1023,117,'晴隆县',3,0,'',0,0),(1024,117,'贞丰县',3,0,'',0,0),(1025,117,'望谟县',3,0,'',0,0),(1026,117,'册亨县',3,0,'',0,0),(1027,117,'安龙县',3,0,'',0,0),(1028,118,'铜仁市',3,0,'',0,0),(1029,118,'江口县',3,0,'',0,0),(1030,118,'石阡县',3,0,'',0,0),(1031,118,'思南县',3,0,'',0,0),(1032,118,'德江县',3,0,'',0,0),(1033,118,'玉屏',3,0,'',0,0),(1034,118,'印江',3,0,'',0,0),(1035,118,'沿河',3,0,'',0,0),(1036,118,'松桃',3,0,'',0,0),(1037,118,'万山特区',3,0,'',0,0),(1038,119,'红花岗区',3,0,'',0,0),(1039,119,'务川县',3,0,'',0,0),(1040,119,'道真县',3,0,'',0,0),(1041,119,'汇川区',3,0,'',0,0),(1042,119,'赤水市',3,0,'',0,0),(1043,119,'仁怀市',3,0,'',0,0),(1044,119,'遵义县',3,0,'',0,0),(1045,119,'桐梓县',3,0,'',0,0),(1046,119,'绥阳县',3,0,'',0,0),(1047,119,'正安县',3,0,'',0,0),(1048,119,'凤冈县',3,0,'',0,0),(1049,119,'湄潭县',3,0,'',0,0),(1050,119,'余庆县',3,0,'',0,0),(1051,119,'习水县',3,0,'',0,0),(1052,119,'道真',3,0,'',0,0),(1053,119,'务川',3,0,'',0,0),(1054,120,'秀英区',3,0,'',0,0),(1055,120,'龙华区',3,0,'',0,0),(1056,120,'琼山区',3,0,'',0,0),(1057,120,'美兰区',3,0,'',0,0),(1058,137,'市区',3,0,'',0,0),(1059,137,'洋浦开发区',3,0,'',0,0),(1060,137,'那大镇',3,0,'',0,0),(1061,137,'王五镇',3,0,'',0,0),(1062,137,'雅星镇',3,0,'',0,0),(1063,137,'大成镇',3,0,'',0,0),(1064,137,'中和镇',3,0,'',0,0),(1065,137,'峨蔓镇',3,0,'',0,0),(1066,137,'南丰镇',3,0,'',0,0),(1067,137,'白马井镇',3,0,'',0,0),(1068,137,'兰洋镇',3,0,'',0,0),(1069,137,'和庆镇',3,0,'',0,0),(1070,137,'海头镇',3,0,'',0,0),(1071,137,'排浦镇',3,0,'',0,0),(1072,137,'东成镇',3,0,'',0,0),(1073,137,'光村镇',3,0,'',0,0),(1074,137,'木棠镇',3,0,'',0,0),(1075,137,'新州镇',3,0,'',0,0),(1076,137,'三都镇',3,0,'',0,0),(1077,137,'其他',3,0,'',0,0),(1078,138,'长安区',3,0,'',0,0),(1079,138,'桥东区',3,0,'',0,0),(1080,138,'桥西区',3,0,'',0,0),(1081,138,'新华区',3,0,'',0,0),(1082,138,'裕华区',3,0,'',0,0),(1083,138,'井陉矿区',3,0,'',0,0),(1084,138,'高新区',3,0,'',0,0),(1085,138,'辛集市',3,0,'',0,0),(1086,138,'藁城市',3,0,'',0,0),(1087,138,'晋州市',3,0,'',0,0),(1088,138,'新乐市',3,0,'',0,0),(1089,138,'鹿泉市',3,0,'',0,0),(1090,138,'井陉县',3,0,'',0,0),(1091,138,'正定县',3,0,'',0,0),(1092,138,'栾城县',3,0,'',0,0),(1093,138,'行唐县',3,0,'',0,0),(1094,138,'灵寿县',3,0,'',0,0),(1095,138,'高邑县',3,0,'',0,0),(1096,138,'深泽县',3,0,'',0,0),(1097,138,'赞皇县',3,0,'',0,0),(1098,138,'无极县',3,0,'',0,0),(1099,138,'平山县',3,0,'',0,0),(1100,138,'元氏县',3,0,'',0,0),(1101,138,'赵县',3,0,'',0,0),(1102,139,'新市区',3,0,'',0,0),(1103,139,'南市区',3,0,'',0,0),(1104,139,'北市区',3,0,'',0,0),(1105,139,'涿州市',3,0,'',0,0),(1106,139,'定州市',3,0,'',0,0),(1107,139,'安国市',3,0,'',0,0),(1108,139,'高碑店市',3,0,'',0,0),(1109,139,'满城县',3,0,'',0,0),(1110,139,'清苑县',3,0,'',0,0),(1111,139,'涞水县',3,0,'',0,0),(1112,139,'阜平县',3,0,'',0,0),(1113,139,'徐水县',3,0,'',0,0),(1114,139,'定兴县',3,0,'',0,0),(1115,139,'唐县',3,0,'',0,0),(1116,139,'高阳县',3,0,'',0,0),(1117,139,'容城县',3,0,'',0,0),(1118,139,'涞源县',3,0,'',0,0),(1119,139,'望都县',3,0,'',0,0),(1120,139,'安新县',3,0,'',0,0),(1121,139,'易县',3,0,'',0,0),(1122,139,'曲阳县',3,0,'',0,0),(1123,139,'蠡县',3,0,'',0,0),(1124,139,'顺平县',3,0,'',0,0),(1125,139,'博野县',3,0,'',0,0),(1126,139,'雄县',3,0,'',0,0),(1127,140,'运河区',3,0,'',0,0),(1128,140,'新华区',3,0,'',0,0),(1129,140,'泊头市',3,0,'',0,0),(1130,140,'任丘市',3,0,'',0,0),(1131,140,'黄骅市',3,0,'',0,0),(1132,140,'河间市',3,0,'',0,0),(1133,140,'沧县',3,0,'',0,0),(1134,140,'青县',3,0,'',0,0),(1135,140,'东光县',3,0,'',0,0),(1136,140,'海兴县',3,0,'',0,0),(1137,140,'盐山县',3,0,'',0,0),(1138,140,'肃宁县',3,0,'',0,0),(1139,140,'南皮县',3,0,'',0,0),(1140,140,'吴桥县',3,0,'',0,0),(1141,140,'献县',3,0,'',0,0),(1142,140,'孟村',3,0,'',0,0),(1143,141,'双桥区',3,0,'',0,0),(1144,141,'双滦区',3,0,'',0,0),(1145,141,'鹰手营子矿区',3,0,'',0,0),(1146,141,'承德县',3,0,'',0,0),(1147,141,'兴隆县',3,0,'',0,0),(1148,141,'平泉县',3,0,'',0,0),(1149,141,'滦平县',3,0,'',0,0),(1150,141,'隆化县',3,0,'',0,0),(1151,141,'丰宁',3,0,'',0,0),(1152,141,'宽城',3,0,'',0,0),(1153,141,'围场',3,0,'',0,0),(1154,142,'从台区',3,0,'',0,0),(1155,142,'复兴区',3,0,'',0,0),(1156,142,'邯山区',3,0,'',0,0),(1157,142,'峰峰矿区',3,0,'',0,0),(1158,142,'武安市',3,0,'',0,0),(1159,142,'邯郸县',3,0,'',0,0),(1160,142,'临漳县',3,0,'',0,0),(1161,142,'成安县',3,0,'',0,0),(1162,142,'大名县',3,0,'',0,0),(1163,142,'涉县',3,0,'',0,0),(1164,142,'磁县',3,0,'',0,0),(1165,142,'肥乡县',3,0,'',0,0),(1166,142,'永年县',3,0,'',0,0),(1167,142,'邱县',3,0,'',0,0),(1168,142,'鸡泽县',3,0,'',0,0),(1169,142,'广平县',3,0,'',0,0),(1170,142,'馆陶县',3,0,'',0,0),(1171,142,'魏县',3,0,'',0,0),(1172,142,'曲周县',3,0,'',0,0),(1173,143,'桃城区',3,0,'',0,0),(1174,143,'冀州市',3,0,'',0,0),(1175,143,'深州市',3,0,'',0,0),(1176,143,'枣强县',3,0,'',0,0),(1177,143,'武邑县',3,0,'',0,0),(1178,143,'武强县',3,0,'',0,0),(1179,143,'饶阳县',3,0,'',0,0),(1180,143,'安平县',3,0,'',0,0),(1181,143,'故城县',3,0,'',0,0),(1182,143,'景县',3,0,'',0,0),(1183,143,'阜城县',3,0,'',0,0),(1184,144,'安次区',3,0,'',0,0),(1185,144,'广阳区',3,0,'',0,0),(1186,144,'霸州市',3,0,'',0,0),(1187,144,'三河市',3,0,'',0,0),(1188,144,'固安县',3,0,'',0,0),(1189,144,'永清县',3,0,'',0,0),(1190,144,'香河县',3,0,'',0,0),(1191,144,'大城县',3,0,'',0,0),(1192,144,'文安县',3,0,'',0,0),(1193,144,'大厂',3,0,'',0,0),(1194,145,'海港区',3,0,'',0,0),(1195,145,'山海关区',3,0,'',0,0),(1196,145,'北戴河区',3,0,'',0,0),(1197,145,'昌黎县',3,0,'',0,0),(1198,145,'抚宁县',3,0,'',0,0),(1199,145,'卢龙县',3,0,'',0,0),(1200,145,'青龙',3,0,'',0,0),(1201,146,'路北区',3,0,'',0,0),(1202,146,'路南区',3,0,'',0,0),(1203,146,'古冶区',3,0,'',0,0),(1204,146,'开平区',3,0,'',0,0),(1205,146,'丰南区',3,0,'',0,0),(1206,146,'丰润区',3,0,'',0,0),(1207,146,'遵化市',3,0,'',0,0),(1208,146,'迁安市',3,0,'',0,0),(1209,146,'滦县',3,0,'',0,0),(1210,146,'滦南县',3,0,'',0,0),(1211,146,'乐亭县',3,0,'',0,0),(1212,146,'迁西县',3,0,'',0,0),(1213,146,'玉田县',3,0,'',0,0),(1214,146,'唐海县',3,0,'',0,0),(1215,147,'桥东区',3,0,'',0,0),(1216,147,'桥西区',3,0,'',0,0),(1217,147,'南宫市',3,0,'',0,0),(1218,147,'沙河市',3,0,'',0,0),(1219,147,'邢台县',3,0,'',0,0),(1220,147,'临城县',3,0,'',0,0),(1221,147,'内丘县',3,0,'',0,0),(1222,147,'柏乡县',3,0,'',0,0),(1223,147,'隆尧县',3,0,'',0,0),(1224,147,'任县',3,0,'',0,0),(1225,147,'南和县',3,0,'',0,0),(1226,147,'宁晋县',3,0,'',0,0),(1227,147,'巨鹿县',3,0,'',0,0),(1228,147,'新河县',3,0,'',0,0),(1229,147,'广宗县',3,0,'',0,0),(1230,147,'平乡县',3,0,'',0,0),(1231,147,'威县',3,0,'',0,0),(1232,147,'清河县',3,0,'',0,0),(1233,147,'临西县',3,0,'',0,0),(1234,148,'桥西区',3,0,'',0,0),(1235,148,'桥东区',3,0,'',0,0),(1236,148,'宣化区',3,0,'',0,0),(1237,148,'下花园区',3,0,'',0,0),(1238,148,'宣化县',3,0,'',0,0),(1239,148,'张北县',3,0,'',0,0),(1240,148,'康保县',3,0,'',0,0),(1241,148,'沽源县',3,0,'',0,0),(1242,148,'尚义县',3,0,'',0,0),(1243,148,'蔚县',3,0,'',0,0),(1244,148,'阳原县',3,0,'',0,0),(1245,148,'怀安县',3,0,'',0,0),(1246,148,'万全县',3,0,'',0,0),(1247,148,'怀来县',3,0,'',0,0),(1248,148,'涿鹿县',3,0,'',0,0),(1249,148,'赤城县',3,0,'',0,0),(1250,148,'崇礼县',3,0,'',0,0),(1251,149,'金水区',3,0,'',0,0),(1252,149,'邙山区',3,0,'',0,0),(1253,149,'二七区',3,0,'',0,0),(1254,149,'管城区',3,0,'',0,0),(1255,149,'中原区',3,0,'',0,0),(1256,149,'上街区',3,0,'',0,0),(1257,149,'惠济区',3,0,'',0,0),(1258,149,'郑东新区',3,0,'',0,0),(1259,149,'经济技术开发区',3,0,'',0,0),(1260,149,'高新开发区',3,0,'',0,0),(1261,149,'出口加工区',3,0,'',0,0),(1262,149,'巩义市',3,0,'',0,0),(1263,149,'荥阳市',3,0,'',0,0),(1264,149,'新密市',3,0,'',0,0),(1265,149,'新郑市',3,0,'',0,0),(1266,149,'登封市',3,0,'',0,0),(1267,149,'中牟县',3,0,'',0,0),(1268,150,'西工区',3,0,'',0,0),(1269,150,'老城区',3,0,'',0,0),(1270,150,'涧西区',3,0,'',0,0),(1271,150,'瀍河回族区',3,0,'',0,0),(1272,150,'洛龙区',3,0,'',0,0),(1273,150,'吉利区',3,0,'',0,0),(1274,150,'偃师市',3,0,'',0,0),(1275,150,'孟津县',3,0,'',0,0),(1276,150,'新安县',3,0,'',0,0),(1277,150,'栾川县',3,0,'',0,0),(1278,150,'嵩县',3,0,'',0,0),(1279,150,'汝阳县',3,0,'',0,0),(1280,150,'宜阳县',3,0,'',0,0),(1281,150,'洛宁县',3,0,'',0,0),(1282,150,'伊川县',3,0,'',0,0),(1283,151,'鼓楼区',3,0,'',0,0),(1284,151,'龙亭区',3,0,'',0,0),(1285,151,'顺河回族区',3,0,'',0,0),(1286,151,'金明区',3,0,'',0,0),(1287,151,'禹王台区',3,0,'',0,0),(1288,151,'杞县',3,0,'',0,0),(1289,151,'通许县',3,0,'',0,0),(1290,151,'尉氏县',3,0,'',0,0),(1291,151,'开封县',3,0,'',0,0),(1292,151,'兰考县',3,0,'',0,0),(1293,152,'北关区',3,0,'',0,0),(1294,152,'文峰区',3,0,'',0,0),(1295,152,'殷都区',3,0,'',0,0),(1296,152,'龙安区',3,0,'',0,0),(1297,152,'林州市',3,0,'',0,0),(1298,152,'安阳县',3,0,'',0,0),(1299,152,'汤阴县',3,0,'',0,0),(1300,152,'滑县',3,0,'',0,0),(1301,152,'内黄县',3,0,'',0,0),(1302,153,'淇滨区',3,0,'',0,0),(1303,153,'山城区',3,0,'',0,0),(1304,153,'鹤山区',3,0,'',0,0),(1305,153,'浚县',3,0,'',0,0),(1306,153,'淇县',3,0,'',0,0),(1307,154,'济源市',3,0,'',0,0),(1308,155,'解放区',3,0,'',0,0),(1309,155,'中站区',3,0,'',0,0),(1310,155,'马村区',3,0,'',0,0),(1311,155,'山阳区',3,0,'',0,0),(1312,155,'沁阳市',3,0,'',0,0),(1313,155,'孟州市',3,0,'',0,0),(1314,155,'修武县',3,0,'',0,0),(1315,155,'博爱县',3,0,'',0,0),(1316,155,'武陟县',3,0,'',0,0),(1317,155,'温县',3,0,'',0,0),(1318,156,'卧龙区',3,0,'',0,0),(1319,156,'宛城区',3,0,'',0,0),(1320,156,'邓州市',3,0,'',0,0),(1321,156,'南召县',3,0,'',0,0),(1322,156,'方城县',3,0,'',0,0),(1323,156,'西峡县',3,0,'',0,0),(1324,156,'镇平县',3,0,'',0,0),(1325,156,'内乡县',3,0,'',0,0),(1326,156,'淅川县',3,0,'',0,0),(1327,156,'社旗县',3,0,'',0,0),(1328,156,'唐河县',3,0,'',0,0),(1329,156,'新野县',3,0,'',0,0),(1330,156,'桐柏县',3,0,'',0,0),(1331,157,'新华区',3,0,'',0,0),(1332,157,'卫东区',3,0,'',0,0),(1333,157,'湛河区',3,0,'',0,0),(1334,157,'石龙区',3,0,'',0,0),(1335,157,'舞钢市',3,0,'',0,0),(1336,157,'汝州市',3,0,'',0,0),(1337,157,'宝丰县',3,0,'',0,0),(1338,157,'叶县',3,0,'',0,0),(1339,157,'鲁山县',3,0,'',0,0),(1340,157,'郏县',3,0,'',0,0),(1341,158,'湖滨区',3,0,'',0,0),(1342,158,'义马市',3,0,'',0,0),(1343,158,'灵宝市',3,0,'',0,0),(1344,158,'渑池县',3,0,'',0,0),(1345,158,'陕县',3,0,'',0,0),(1346,158,'卢氏县',3,0,'',0,0),(1347,159,'梁园区',3,0,'',0,0),(1348,159,'睢阳区',3,0,'',0,0),(1349,159,'永城市',3,0,'',0,0),(1350,159,'民权县',3,0,'',0,0),(1351,159,'睢县',3,0,'',0,0),(1352,159,'宁陵县',3,0,'',0,0),(1353,159,'虞城县',3,0,'',0,0),(1354,159,'柘城县',3,0,'',0,0),(1355,159,'夏邑县',3,0,'',0,0),(1356,160,'卫滨区',3,0,'',0,0),(1357,160,'红旗区',3,0,'',0,0),(1358,160,'凤泉区',3,0,'',0,0),(1359,160,'牧野区',3,0,'',0,0),(1360,160,'卫辉市',3,0,'',0,0),(1361,160,'辉县市',3,0,'',0,0),(1362,160,'新乡县',3,0,'',0,0),(1363,160,'获嘉县',3,0,'',0,0),(1364,160,'原阳县',3,0,'',0,0),(1365,160,'延津县',3,0,'',0,0),(1366,160,'封丘县',3,0,'',0,0),(1367,160,'长垣县',3,0,'',0,0),(1368,161,'浉河区',3,0,'',0,0),(1369,161,'平桥区',3,0,'',0,0),(1370,161,'罗山县',3,0,'',0,0),(1371,161,'光山县',3,0,'',0,0),(1372,161,'新县',3,0,'',0,0),(1373,161,'商城县',3,0,'',0,0),(1374,161,'固始县',3,0,'',0,0),(1375,161,'潢川县',3,0,'',0,0),(1376,161,'淮滨县',3,0,'',0,0),(1377,161,'息县',3,0,'',0,0),(1378,162,'魏都区',3,0,'',0,0),(1379,162,'禹州市',3,0,'',0,0),(1380,162,'长葛市',3,0,'',0,0),(1381,162,'许昌县',3,0,'',0,0),(1382,162,'鄢陵县',3,0,'',0,0),(1383,162,'襄城县',3,0,'',0,0),(1384,163,'川汇区',3,0,'',0,0),(1385,163,'项城市',3,0,'',0,0),(1386,163,'扶沟县',3,0,'',0,0),(1387,163,'西华县',3,0,'',0,0),(1388,163,'商水县',3,0,'',0,0),(1389,163,'沈丘县',3,0,'',0,0),(1390,163,'郸城县',3,0,'',0,0),(1391,163,'淮阳县',3,0,'',0,0),(1392,163,'太康县',3,0,'',0,0),(1393,163,'鹿邑县',3,0,'',0,0),(1394,164,'驿城区',3,0,'',0,0),(1395,164,'西平县',3,0,'',0,0),(1396,164,'上蔡县',3,0,'',0,0),(1397,164,'平舆县',3,0,'',0,0),(1398,164,'正阳县',3,0,'',0,0),(1399,164,'确山县',3,0,'',0,0),(1400,164,'泌阳县',3,0,'',0,0),(1401,164,'汝南县',3,0,'',0,0),(1402,164,'遂平县',3,0,'',0,0),(1403,164,'新蔡县',3,0,'',0,0),(1404,165,'郾城区',3,0,'',0,0),(1405,165,'源汇区',3,0,'',0,0),(1406,165,'召陵区',3,0,'',0,0),(1407,165,'舞阳县',3,0,'',0,0),(1408,165,'临颍县',3,0,'',0,0),(1409,166,'华龙区',3,0,'',0,0),(1410,166,'清丰县',3,0,'',0,0),(1411,166,'南乐县',3,0,'',0,0),(1412,166,'范县',3,0,'',0,0),(1413,166,'台前县',3,0,'',0,0),(1414,166,'濮阳县',3,0,'',0,0),(1415,167,'道里区',3,0,'',0,0),(1416,167,'南岗区',3,0,'',0,0),(1417,167,'动力区',3,0,'',0,0),(1418,167,'平房区',3,0,'',0,0),(1419,167,'香坊区',3,0,'',0,0),(1420,167,'太平区',3,0,'',0,0),(1421,167,'道外区',3,0,'',0,0),(1422,167,'阿城区',3,0,'',0,0),(1423,167,'呼兰区',3,0,'',0,0),(1424,167,'松北区',3,0,'',0,0),(1425,167,'尚志市',3,0,'',0,0),(1426,167,'双城市',3,0,'',0,0),(1427,167,'五常市',3,0,'',0,0),(1428,167,'方正县',3,0,'',0,0),(1429,167,'宾县',3,0,'',0,0),(1430,167,'依兰县',3,0,'',0,0),(1431,167,'巴彦县',3,0,'',0,0),(1432,167,'通河县',3,0,'',0,0),(1433,167,'木兰县',3,0,'',0,0),(1434,167,'延寿县',3,0,'',0,0),(1435,168,'萨尔图区',3,0,'',0,0),(1436,168,'红岗区',3,0,'',0,0),(1437,168,'龙凤区',3,0,'',0,0),(1438,168,'让胡路区',3,0,'',0,0),(1439,168,'大同区',3,0,'',0,0),(1440,168,'肇州县',3,0,'',0,0),(1441,168,'肇源县',3,0,'',0,0),(1442,168,'林甸县',3,0,'',0,0),(1443,168,'杜尔伯特',3,0,'',0,0),(1444,169,'呼玛县',3,0,'',0,0),(1445,169,'漠河县',3,0,'',0,0),(1446,169,'塔河县',3,0,'',0,0),(1447,170,'兴山区',3,0,'',0,0),(1448,170,'工农区',3,0,'',0,0),(1449,170,'南山区',3,0,'',0,0),(1450,170,'兴安区',3,0,'',0,0),(1451,170,'向阳区',3,0,'',0,0),(1452,170,'东山区',3,0,'',0,0),(1453,170,'萝北县',3,0,'',0,0),(1454,170,'绥滨县',3,0,'',0,0),(1455,171,'爱辉区',3,0,'',0,0),(1456,171,'五大连池市',3,0,'',0,0),(1457,171,'北安市',3,0,'',0,0),(1458,171,'嫩江县',3,0,'',0,0),(1459,171,'逊克县',3,0,'',0,0),(1460,171,'孙吴县',3,0,'',0,0),(1461,172,'鸡冠区',3,0,'',0,0),(1462,172,'恒山区',3,0,'',0,0),(1463,172,'城子河区',3,0,'',0,0),(1464,172,'滴道区',3,0,'',0,0),(1465,172,'梨树区',3,0,'',0,0),(1466,172,'虎林市',3,0,'',0,0),(1467,172,'密山市',3,0,'',0,0),(1468,172,'鸡东县',3,0,'',0,0),(1469,173,'前进区',3,0,'',0,0),(1470,173,'郊区',3,0,'',0,0),(1471,173,'向阳区',3,0,'',0,0),(1472,173,'东风区',3,0,'',0,0),(1473,173,'同江市',3,0,'',0,0),(1474,173,'富锦市',3,0,'',0,0),(1475,173,'桦南县',3,0,'',0,0),(1476,173,'桦川县',3,0,'',0,0),(1477,173,'汤原县',3,0,'',0,0),(1478,173,'抚远县',3,0,'',0,0),(1479,174,'爱民区',3,0,'',0,0),(1480,174,'东安区',3,0,'',0,0),(1481,174,'阳明区',3,0,'',0,0),(1482,174,'西安区',3,0,'',0,0),(1483,174,'绥芬河市',3,0,'',0,0),(1484,174,'海林市',3,0,'',0,0),(1485,174,'宁安市',3,0,'',0,0),(1486,174,'穆棱市',3,0,'',0,0),(1487,174,'东宁县',3,0,'',0,0),(1488,174,'林口县',3,0,'',0,0),(1489,175,'桃山区',3,0,'',0,0),(1490,175,'新兴区',3,0,'',0,0),(1491,175,'茄子河区',3,0,'',0,0),(1492,175,'勃利县',3,0,'',0,0),(1493,176,'龙沙区',3,0,'',0,0),(1494,176,'昂昂溪区',3,0,'',0,0),(1495,176,'铁峰区',3,0,'',0,0),(1496,176,'建华区',3,0,'',0,0),(1497,176,'富拉尔基区',3,0,'',0,0),(1498,176,'碾子山区',3,0,'',0,0),(1499,176,'梅里斯达斡尔区',3,0,'',0,0),(1500,176,'讷河市',3,0,'',0,0),(1501,176,'龙江县',3,0,'',0,0),(1502,176,'依安县',3,0,'',0,0),(1503,176,'泰来县',3,0,'',0,0),(1504,176,'甘南县',3,0,'',0,0),(1505,176,'富裕县',3,0,'',0,0),(1506,176,'克山县',3,0,'',0,0),(1507,176,'克东县',3,0,'',0,0),(1508,176,'拜泉县',3,0,'',0,0),(1509,177,'尖山区',3,0,'',0,0),(1510,177,'岭东区',3,0,'',0,0),(1511,177,'四方台区',3,0,'',0,0),(1512,177,'宝山区',3,0,'',0,0),(1513,177,'集贤县',3,0,'',0,0),(1514,177,'友谊县',3,0,'',0,0),(1515,177,'宝清县',3,0,'',0,0),(1516,177,'饶河县',3,0,'',0,0),(1517,178,'北林区',3,0,'',0,0),(1518,178,'安达市',3,0,'',0,0),(1519,178,'肇东市',3,0,'',0,0),(1520,178,'海伦市',3,0,'',0,0),(1521,178,'望奎县',3,0,'',0,0),(1522,178,'兰西县',3,0,'',0,0),(1523,178,'青冈县',3,0,'',0,0),(1524,178,'庆安县',3,0,'',0,0),(1525,178,'明水县',3,0,'',0,0),(1526,178,'绥棱县',3,0,'',0,0),(1527,179,'伊春区',3,0,'',0,0),(1528,179,'带岭区',3,0,'',0,0),(1529,179,'南岔区',3,0,'',0,0),(1530,179,'金山屯区',3,0,'',0,0),(1531,179,'西林区',3,0,'',0,0),(1532,179,'美溪区',3,0,'',0,0),(1533,179,'乌马河区',3,0,'',0,0),(1534,179,'翠峦区',3,0,'',0,0),(1535,179,'友好区',3,0,'',0,0),(1536,179,'上甘岭区',3,0,'',0,0),(1537,179,'五营区',3,0,'',0,0),(1538,179,'红星区',3,0,'',0,0),(1539,179,'新青区',3,0,'',0,0),(1540,179,'汤旺河区',3,0,'',0,0),(1541,179,'乌伊岭区',3,0,'',0,0),(1542,179,'铁力市',3,0,'',0,0),(1543,179,'嘉荫县',3,0,'',0,0),(1544,180,'江岸区',3,0,'',0,0),(1545,180,'武昌区',3,0,'',0,0),(1546,180,'江汉区',3,0,'',0,0),(1547,180,'硚口区',3,0,'',0,0),(1548,180,'汉阳区',3,0,'',0,0),(1549,180,'青山区',3,0,'',0,0),(1550,180,'洪山区',3,0,'',0,0),(1551,180,'东西湖区',3,0,'',0,0),(1552,180,'汉南区',3,0,'',0,0),(1553,180,'蔡甸区',3,0,'',0,0),(1554,180,'江夏区',3,0,'',0,0),(1555,180,'黄陂区',3,0,'',0,0),(1556,180,'新洲区',3,0,'',0,0),(1557,180,'经济开发区',3,0,'',0,0),(1558,181,'仙桃市',3,0,'',0,0),(1559,182,'鄂城区',3,0,'',0,0),(1560,182,'华容区',3,0,'',0,0),(1561,182,'梁子湖区',3,0,'',0,0),(1562,183,'黄州区',3,0,'',0,0),(1563,183,'麻城市',3,0,'',0,0),(1564,183,'武穴市',3,0,'',0,0),(1565,183,'团风县',3,0,'',0,0),(1566,183,'红安县',3,0,'',0,0),(1567,183,'罗田县',3,0,'',0,0),(1568,183,'英山县',3,0,'',0,0),(1569,183,'浠水县',3,0,'',0,0),(1570,183,'蕲春县',3,0,'',0,0),(1571,183,'黄梅县',3,0,'',0,0),(1572,184,'黄石港区',3,0,'',0,0),(1573,184,'西塞山区',3,0,'',0,0),(1574,184,'下陆区',3,0,'',0,0),(1575,184,'铁山区',3,0,'',0,0),(1576,184,'大冶市',3,0,'',0,0),(1577,184,'阳新县',3,0,'',0,0),(1578,185,'东宝区',3,0,'',0,0),(1579,185,'掇刀区',3,0,'',0,0),(1580,185,'钟祥市',3,0,'',0,0),(1581,185,'京山县',3,0,'',0,0),(1582,185,'沙洋县',3,0,'',0,0),(1583,186,'沙市区',3,0,'',0,0),(1584,186,'荆州区',3,0,'',0,0),(1585,186,'石首市',3,0,'',0,0),(1586,186,'洪湖市',3,0,'',0,0),(1587,186,'松滋市',3,0,'',0,0),(1588,186,'公安县',3,0,'',0,0),(1589,186,'监利县',3,0,'',0,0),(1590,186,'江陵县',3,0,'',0,0),(1591,187,'潜江市',3,0,'',0,0),(1592,188,'神农架林区',3,0,'',0,0),(1593,189,'张湾区',3,0,'',0,0),(1594,189,'茅箭区',3,0,'',0,0),(1595,189,'丹江口市',3,0,'',0,0),(1596,189,'郧县',3,0,'',0,0),(1597,189,'郧西县',3,0,'',0,0),(1598,189,'竹山县',3,0,'',0,0),(1599,189,'竹溪县',3,0,'',0,0),(1600,189,'房县',3,0,'',0,0),(1601,190,'曾都区',3,0,'',0,0),(1602,190,'广水市',3,0,'',0,0),(1603,191,'天门市',3,0,'',0,0),(1604,192,'咸安区',3,0,'',0,0),(1605,192,'赤壁市',3,0,'',0,0),(1606,192,'嘉鱼县',3,0,'',0,0),(1607,192,'通城县',3,0,'',0,0),(1608,192,'崇阳县',3,0,'',0,0),(1609,192,'通山县',3,0,'',0,0),(1610,193,'襄城区',3,0,'',0,0),(1611,193,'樊城区',3,0,'',0,0),(1612,193,'襄阳区',3,0,'',0,0),(1613,193,'老河口市',3,0,'',0,0),(1614,193,'枣阳市',3,0,'',0,0),(1615,193,'宜城市',3,0,'',0,0),(1616,193,'南漳县',3,0,'',0,0),(1617,193,'谷城县',3,0,'',0,0),(1618,193,'保康县',3,0,'',0,0),(1619,194,'孝南区',3,0,'',0,0),(1620,194,'应城市',3,0,'',0,0),(1621,194,'安陆市',3,0,'',0,0),(1622,194,'汉川市',3,0,'',0,0),(1623,194,'孝昌县',3,0,'',0,0),(1624,194,'大悟县',3,0,'',0,0),(1625,194,'云梦县',3,0,'',0,0),(1626,195,'长阳',3,0,'',0,0),(1627,195,'五峰',3,0,'',0,0),(1628,195,'西陵区',3,0,'',0,0),(1629,195,'伍家岗区',3,0,'',0,0),(1630,195,'点军区',3,0,'',0,0),(1631,195,'猇亭区',3,0,'',0,0),(1632,195,'夷陵区',3,0,'',0,0),(1633,195,'宜都市',3,0,'',0,0),(1634,195,'当阳市',3,0,'',0,0),(1635,195,'枝江市',3,0,'',0,0),(1636,195,'远安县',3,0,'',0,0),(1637,195,'兴山县',3,0,'',0,0),(1638,195,'秭归县',3,0,'',0,0),(1639,196,'恩施市',3,0,'',0,0),(1640,196,'利川市',3,0,'',0,0),(1641,196,'建始县',3,0,'',0,0),(1642,196,'巴东县',3,0,'',0,0),(1643,196,'宣恩县',3,0,'',0,0),(1644,196,'咸丰县',3,0,'',0,0),(1645,196,'来凤县',3,0,'',0,0),(1646,196,'鹤峰县',3,0,'',0,0),(1647,197,'岳麓区',3,0,'',0,0),(1648,197,'芙蓉区',3,0,'',0,0),(1649,197,'天心区',3,0,'',0,0),(1650,197,'开福区',3,0,'',0,0),(1651,197,'雨花区',3,0,'',0,0),(1652,197,'开发区',3,0,'',0,0),(1653,197,'浏阳市',3,0,'',0,0),(1654,197,'长沙县',3,0,'',0,0),(1655,197,'望城县',3,0,'',0,0),(1656,197,'宁乡县',3,0,'',0,0),(1657,198,'永定区',3,0,'',0,0),(1658,198,'武陵源区',3,0,'',0,0),(1659,198,'慈利县',3,0,'',0,0),(1660,198,'桑植县',3,0,'',0,0),(1661,199,'武陵区',3,0,'',0,0),(1662,199,'鼎城区',3,0,'',0,0),(1663,199,'津市市',3,0,'',0,0),(1664,199,'安乡县',3,0,'',0,0),(1665,199,'汉寿县',3,0,'',0,0),(1666,199,'澧县',3,0,'',0,0),(1667,199,'临澧县',3,0,'',0,0),(1668,199,'桃源县',3,0,'',0,0),(1669,199,'石门县',3,0,'',0,0),(1670,200,'北湖区',3,0,'',0,0),(1671,200,'苏仙区',3,0,'',0,0),(1672,200,'资兴市',3,0,'',0,0),(1673,200,'桂阳县',3,0,'',0,0),(1674,200,'宜章县',3,0,'',0,0),(1675,200,'永兴县',3,0,'',0,0),(1676,200,'嘉禾县',3,0,'',0,0),(1677,200,'临武县',3,0,'',0,0),(1678,200,'汝城县',3,0,'',0,0),(1679,200,'桂东县',3,0,'',0,0),(1680,200,'安仁县',3,0,'',0,0),(1681,201,'雁峰区',3,0,'',0,0),(1682,201,'珠晖区',3,0,'',0,0),(1683,201,'石鼓区',3,0,'',0,0),(1684,201,'蒸湘区',3,0,'',0,0),(1685,201,'南岳区',3,0,'',0,0),(1686,201,'耒阳市',3,0,'',0,0),(1687,201,'常宁市',3,0,'',0,0),(1688,201,'衡阳县',3,0,'',0,0),(1689,201,'衡南县',3,0,'',0,0),(1690,201,'衡山县',3,0,'',0,0),(1691,201,'衡东县',3,0,'',0,0),(1692,201,'祁东县',3,0,'',0,0),(1693,202,'鹤城区',3,0,'',0,0),(1694,202,'靖州',3,0,'',0,0),(1695,202,'麻阳',3,0,'',0,0),(1696,202,'通道',3,0,'',0,0),(1697,202,'新晃',3,0,'',0,0),(1698,202,'芷江',3,0,'',0,0),(1699,202,'沅陵县',3,0,'',0,0),(1700,202,'辰溪县',3,0,'',0,0),(1701,202,'溆浦县',3,0,'',0,0),(1702,202,'中方县',3,0,'',0,0),(1703,202,'会同县',3,0,'',0,0),(1704,202,'洪江市',3,0,'',0,0),(1705,203,'娄星区',3,0,'',0,0),(1706,203,'冷水江市',3,0,'',0,0),(1707,203,'涟源市',3,0,'',0,0),(1708,203,'双峰县',3,0,'',0,0),(1709,203,'新化县',3,0,'',0,0),(1710,204,'城步',3,0,'',0,0),(1711,204,'双清区',3,0,'',0,0),(1712,204,'大祥区',3,0,'',0,0),(1713,204,'北塔区',3,0,'',0,0),(1714,204,'武冈市',3,0,'',0,0),(1715,204,'邵东县',3,0,'',0,0),(1716,204,'新邵县',3,0,'',0,0),(1717,204,'邵阳县',3,0,'',0,0),(1718,204,'隆回县',3,0,'',0,0),(1719,204,'洞口县',3,0,'',0,0),(1720,204,'绥宁县',3,0,'',0,0),(1721,204,'新宁县',3,0,'',0,0),(1722,205,'岳塘区',3,0,'',0,0),(1723,205,'雨湖区',3,0,'',0,0),(1724,205,'湘乡市',3,0,'',0,0),(1725,205,'韶山市',3,0,'',0,0),(1726,205,'湘潭县',3,0,'',0,0),(1727,206,'吉首市',3,0,'',0,0),(1728,206,'泸溪县',3,0,'',0,0),(1729,206,'凤凰县',3,0,'',0,0),(1730,206,'花垣县',3,0,'',0,0),(1731,206,'保靖县',3,0,'',0,0),(1732,206,'古丈县',3,0,'',0,0),(1733,206,'永顺县',3,0,'',0,0),(1734,206,'龙山县',3,0,'',0,0),(1735,207,'赫山区',3,0,'',0,0),(1736,207,'资阳区',3,0,'',0,0),(1737,207,'沅江市',3,0,'',0,0),(1738,207,'南县',3,0,'',0,0),(1739,207,'桃江县',3,0,'',0,0),(1740,207,'安化县',3,0,'',0,0),(1741,208,'江华',3,0,'',0,0),(1742,208,'冷水滩区',3,0,'',0,0),(1743,208,'零陵区',3,0,'',0,0),(1744,208,'祁阳县',3,0,'',0,0),(1745,208,'东安县',3,0,'',0,0),(1746,208,'双牌县',3,0,'',0,0),(1747,208,'道县',3,0,'',0,0),(1748,208,'江永县',3,0,'',0,0),(1749,208,'宁远县',3,0,'',0,0),(1750,208,'蓝山县',3,0,'',0,0),(1751,208,'新田县',3,0,'',0,0),(1752,209,'岳阳楼区',3,0,'',0,0),(1753,209,'君山区',3,0,'',0,0),(1754,209,'云溪区',3,0,'',0,0),(1755,209,'汨罗市',3,0,'',0,0),(1756,209,'临湘市',3,0,'',0,0),(1757,209,'岳阳县',3,0,'',0,0),(1758,209,'华容县',3,0,'',0,0),(1759,209,'湘阴县',3,0,'',0,0),(1760,209,'平江县',3,0,'',0,0),(1761,210,'天元区',3,0,'',0,0),(1762,210,'荷塘区',3,0,'',0,0),(1763,210,'芦淞区',3,0,'',0,0),(1764,210,'石峰区',3,0,'',0,0),(1765,210,'醴陵市',3,0,'',0,0),(1766,210,'株洲县',3,0,'',0,0),(1767,210,'攸县',3,0,'',0,0),(1768,210,'茶陵县',3,0,'',0,0),(1769,210,'炎陵县',3,0,'',0,0),(1770,211,'朝阳区',3,0,'',0,0),(1771,211,'宽城区',3,0,'',0,0),(1772,211,'二道区',3,0,'',0,0),(1773,211,'南关区',3,0,'',0,0),(1774,211,'绿园区',3,0,'',0,0),(1775,211,'双阳区',3,0,'',0,0),(1776,211,'净月潭开发区',3,0,'',0,0),(1777,211,'高新技术开发区',3,0,'',0,0),(1778,211,'经济技术开发区',3,0,'',0,0),(1779,211,'汽车产业开发区',3,0,'',0,0),(1780,211,'德惠市',3,0,'',0,0),(1781,211,'九台市',3,0,'',0,0),(1782,211,'榆树市',3,0,'',0,0),(1783,211,'农安县',3,0,'',0,0),(1784,212,'船营区',3,0,'',0,0),(1785,212,'昌邑区',3,0,'',0,0),(1786,212,'龙潭区',3,0,'',0,0),(1787,212,'丰满区',3,0,'',0,0),(1788,212,'蛟河市',3,0,'',0,0),(1789,212,'桦甸市',3,0,'',0,0),(1790,212,'舒兰市',3,0,'',0,0),(1791,212,'磐石市',3,0,'',0,0),(1792,212,'永吉县',3,0,'',0,0),(1793,213,'洮北区',3,0,'',0,0),(1794,213,'洮南市',3,0,'',0,0),(1795,213,'大安市',3,0,'',0,0),(1796,213,'镇赉县',3,0,'',0,0),(1797,213,'通榆县',3,0,'',0,0),(1798,214,'江源区',3,0,'',0,0),(1799,214,'八道江区',3,0,'',0,0),(1800,214,'长白',3,0,'',0,0),(1801,214,'临江市',3,0,'',0,0),(1802,214,'抚松县',3,0,'',0,0),(1803,214,'靖宇县',3,0,'',0,0),(1804,215,'龙山区',3,0,'',0,0),(1805,215,'西安区',3,0,'',0,0),(1806,215,'东丰县',3,0,'',0,0),(1807,215,'东辽县',3,0,'',0,0),(1808,216,'铁西区',3,0,'',0,0),(1809,216,'铁东区',3,0,'',0,0),(1810,216,'伊通',3,0,'',0,0),(1811,216,'公主岭市',3,0,'',0,0),(1812,216,'双辽市',3,0,'',0,0),(1813,216,'梨树县',3,0,'',0,0),(1814,217,'前郭尔罗斯',3,0,'',0,0),(1815,217,'宁江区',3,0,'',0,0),(1816,217,'长岭县',3,0,'',0,0),(1817,217,'乾安县',3,0,'',0,0),(1818,217,'扶余县',3,0,'',0,0),(1819,218,'东昌区',3,0,'',0,0),(1820,218,'二道江区',3,0,'',0,0),(1821,218,'梅河口市',3,0,'',0,0),(1822,218,'集安市',3,0,'',0,0),(1823,218,'通化县',3,0,'',0,0),(1824,218,'辉南县',3,0,'',0,0),(1825,218,'柳河县',3,0,'',0,0),(1826,219,'延吉市',3,0,'',0,0),(1827,219,'图们市',3,0,'',0,0),(1828,219,'敦化市',3,0,'',0,0),(1829,219,'珲春市',3,0,'',0,0),(1830,219,'龙井市',3,0,'',0,0),(1831,219,'和龙市',3,0,'',0,0),(1832,219,'安图县',3,0,'',0,0),(1833,219,'汪清县',3,0,'',0,0),(1834,220,'玄武区',3,0,'',0,0),(1835,220,'鼓楼区',3,0,'',0,0),(1836,220,'白下区',3,0,'',0,0),(1837,220,'建邺区',3,0,'',0,0),(1838,220,'秦淮区',3,0,'',0,0),(1839,220,'雨花台区',3,0,'',0,0),(1840,220,'下关区',3,0,'',0,0),(1841,220,'栖霞区',3,0,'',0,0),(1842,220,'浦口区',3,0,'',0,0),(1843,220,'江宁区',3,0,'',0,0),(1844,220,'六合区',3,0,'',0,0),(1845,220,'溧水县',3,0,'',0,0),(1846,220,'高淳县',3,0,'',0,0),(1847,221,'沧浪区',3,0,'',0,0),(1848,221,'金阊区',3,0,'',0,0),(1849,221,'平江区',3,0,'',0,0),(1850,221,'虎丘区',3,0,'',0,0),(1851,221,'吴中区',3,0,'',0,0),(1852,221,'相城区',3,0,'',0,0),(1853,221,'园区',3,0,'',0,0),(1854,221,'新区',3,0,'',0,0),(1855,221,'常熟市',3,0,'',0,0),(1856,221,'张家港市',3,0,'',0,0),(1857,221,'玉山镇',3,0,'',0,0),(1858,221,'巴城镇',3,0,'',0,0),(1859,221,'周市镇',3,0,'',0,0),(1860,221,'陆家镇',3,0,'',0,0),(1861,221,'花桥镇',3,0,'',0,0),(1862,221,'淀山湖镇',3,0,'',0,0),(1863,221,'张浦镇',3,0,'',0,0),(1864,221,'周庄镇',3,0,'',0,0),(1865,221,'千灯镇',3,0,'',0,0),(1866,221,'锦溪镇',3,0,'',0,0),(1867,221,'开发区',3,0,'',0,0),(1868,221,'吴江市',3,0,'',0,0),(1869,221,'太仓市',3,0,'',0,0),(1870,222,'崇安区',3,0,'',0,0),(1871,222,'北塘区',3,0,'',0,0),(1872,222,'南长区',3,0,'',0,0),(1873,222,'锡山区',3,0,'',0,0),(1874,222,'惠山区',3,0,'',0,0),(1875,222,'滨湖区',3,0,'',0,0),(1876,222,'新区',3,0,'',0,0),(1877,222,'江阴市',3,0,'',0,0),(1878,222,'宜兴市',3,0,'',0,0),(1879,223,'天宁区',3,0,'',0,0),(1880,223,'钟楼区',3,0,'',0,0),(1881,223,'戚墅堰区',3,0,'',0,0),(1882,223,'郊区',3,0,'',0,0),(1883,223,'新北区',3,0,'',0,0),(1884,223,'武进区',3,0,'',0,0),(1885,223,'溧阳市',3,0,'',0,0),(1886,223,'金坛市',3,0,'',0,0),(1887,224,'清河区',3,0,'',0,0),(1888,224,'清浦区',3,0,'',0,0),(1889,224,'楚州区',3,0,'',0,0),(1890,224,'淮阴区',3,0,'',0,0),(1891,224,'涟水县',3,0,'',0,0),(1892,224,'洪泽县',3,0,'',0,0),(1893,224,'盱眙县',3,0,'',0,0),(1894,224,'金湖县',3,0,'',0,0),(1895,225,'新浦区',3,0,'',0,0),(1896,225,'连云区',3,0,'',0,0),(1897,225,'海州区',3,0,'',0,0),(1898,225,'赣榆县',3,0,'',0,0),(1899,225,'东海县',3,0,'',0,0),(1900,225,'灌云县',3,0,'',0,0),(1901,225,'灌南县',3,0,'',0,0),(1902,226,'崇川区',3,0,'',0,0),(1903,226,'港闸区',3,0,'',0,0),(1904,226,'经济开发区',3,0,'',0,0),(1905,226,'启东市',3,0,'',0,0),(1906,226,'如皋市',3,0,'',0,0),(1907,226,'通州市',3,0,'',0,0),(1908,226,'海门市',3,0,'',0,0),(1909,226,'海安县',3,0,'',0,0),(1910,226,'如东县',3,0,'',0,0),(1911,227,'宿城区',3,0,'',0,0),(1912,227,'宿豫区',3,0,'',0,0),(1913,227,'宿豫县',3,0,'',0,0),(1914,227,'沭阳县',3,0,'',0,0),(1915,227,'泗阳县',3,0,'',0,0),(1916,227,'泗洪县',3,0,'',0,0),(1917,228,'海陵区',3,0,'',0,0),(1918,228,'高港区',3,0,'',0,0),(1919,228,'兴化市',3,0,'',0,0),(1920,228,'靖江市',3,0,'',0,0),(1921,228,'泰兴市',3,0,'',0,0),(1922,228,'姜堰市',3,0,'',0,0),(1923,229,'云龙区',3,0,'',0,0),(1924,229,'鼓楼区',3,0,'',0,0),(1925,229,'九里区',3,0,'',0,0),(1926,229,'贾汪区',3,0,'',0,0),(1927,229,'泉山区',3,0,'',0,0),(1928,229,'新沂市',3,0,'',0,0),(1929,229,'邳州市',3,0,'',0,0),(1930,229,'丰县',3,0,'',0,0),(1931,229,'沛县',3,0,'',0,0),(1932,229,'铜山县',3,0,'',0,0),(1933,229,'睢宁县',3,0,'',0,0),(1934,230,'城区',3,0,'',0,0),(1935,230,'亭湖区',3,0,'',0,0),(1936,230,'盐都区',3,0,'',0,0),(1937,230,'盐都县',3,0,'',0,0),(1938,230,'东台市',3,0,'',0,0),(1939,230,'大丰市',3,0,'',0,0),(1940,230,'响水县',3,0,'',0,0),(1941,230,'滨海县',3,0,'',0,0),(1942,230,'阜宁县',3,0,'',0,0),(1943,230,'射阳县',3,0,'',0,0),(1944,230,'建湖县',3,0,'',0,0),(1945,231,'广陵区',3,0,'',0,0),(1946,231,'维扬区',3,0,'',0,0),(1947,231,'邗江区',3,0,'',0,0),(1948,231,'仪征市',3,0,'',0,0),(1949,231,'高邮市',3,0,'',0,0),(1950,231,'江都市',3,0,'',0,0),(1951,231,'宝应县',3,0,'',0,0),(1952,232,'京口区',3,0,'',0,0),(1953,232,'润州区',3,0,'',0,0),(1954,232,'丹徒区',3,0,'',0,0),(1955,232,'丹阳市',3,0,'',0,0),(1956,232,'扬中市',3,0,'',0,0),(1957,232,'句容市',3,0,'',0,0),(1958,233,'东湖区',3,0,'',0,0),(1959,233,'西湖区',3,0,'',0,0),(1960,233,'青云谱区',3,0,'',0,0),(1961,233,'湾里区',3,0,'',0,0),(1962,233,'青山湖区',3,0,'',0,0),(1963,233,'红谷滩新区',3,0,'',0,0),(1964,233,'昌北区',3,0,'',0,0),(1965,233,'高新区',3,0,'',0,0),(1966,233,'南昌县',3,0,'',0,0),(1967,233,'新建县',3,0,'',0,0),(1968,233,'安义县',3,0,'',0,0),(1969,233,'进贤县',3,0,'',0,0),(1970,234,'临川区',3,0,'',0,0),(1971,234,'南城县',3,0,'',0,0),(1972,234,'黎川县',3,0,'',0,0),(1973,234,'南丰县',3,0,'',0,0),(1974,234,'崇仁县',3,0,'',0,0),(1975,234,'乐安县',3,0,'',0,0),(1976,234,'宜黄县',3,0,'',0,0),(1977,234,'金溪县',3,0,'',0,0),(1978,234,'资溪县',3,0,'',0,0),(1979,234,'东乡县',3,0,'',0,0),(1980,234,'广昌县',3,0,'',0,0),(1981,235,'章贡区',3,0,'',0,0),(1982,235,'于都县',3,0,'',0,0),(1983,235,'瑞金市',3,0,'',0,0),(1984,235,'南康市',3,0,'',0,0),(1985,235,'赣县',3,0,'',0,0),(1986,235,'信丰县',3,0,'',0,0),(1987,235,'大余县',3,0,'',0,0),(1988,235,'上犹县',3,0,'',0,0),(1989,235,'崇义县',3,0,'',0,0),(1990,235,'安远县',3,0,'',0,0),(1991,235,'龙南县',3,0,'',0,0),(1992,235,'定南县',3,0,'',0,0),(1993,235,'全南县',3,0,'',0,0),(1994,235,'宁都县',3,0,'',0,0),(1995,235,'兴国县',3,0,'',0,0),(1996,235,'会昌县',3,0,'',0,0),(1997,235,'寻乌县',3,0,'',0,0),(1998,235,'石城县',3,0,'',0,0),(1999,236,'安福县',3,0,'',0,0),(2000,236,'吉州区',3,0,'',0,0),(2001,236,'青原区',3,0,'',0,0),(2002,236,'井冈山市',3,0,'',0,0),(2003,236,'吉安县',3,0,'',0,0),(2004,236,'吉水县',3,0,'',0,0),(2005,236,'峡江县',3,0,'',0,0),(2006,236,'新干县',3,0,'',0,0),(2007,236,'永丰县',3,0,'',0,0),(2008,236,'泰和县',3,0,'',0,0),(2009,236,'遂川县',3,0,'',0,0),(2010,236,'万安县',3,0,'',0,0),(2011,236,'永新县',3,0,'',0,0),(2012,237,'珠山区',3,0,'',0,0),(2013,237,'昌江区',3,0,'',0,0),(2014,237,'乐平市',3,0,'',0,0),(2015,237,'浮梁县',3,0,'',0,0),(2016,238,'浔阳区',3,0,'',0,0),(2017,238,'庐山区',3,0,'',0,0),(2018,238,'瑞昌市',3,0,'',0,0),(2019,238,'九江县',3,0,'',0,0),(2020,238,'武宁县',3,0,'',0,0),(2021,238,'修水县',3,0,'',0,0),(2022,238,'永修县',3,0,'',0,0),(2023,238,'德安县',3,0,'',0,0),(2024,238,'星子县',3,0,'',0,0),(2025,238,'都昌县',3,0,'',0,0),(2026,238,'湖口县',3,0,'',0,0),(2027,238,'彭泽县',3,0,'',0,0),(2028,239,'安源区',3,0,'',0,0),(2029,239,'湘东区',3,0,'',0,0),(2030,239,'莲花县',3,0,'',0,0),(2031,239,'芦溪县',3,0,'',0,0),(2032,239,'上栗县',3,0,'',0,0),(2033,240,'信州区',3,0,'',0,0),(2034,240,'德兴市',3,0,'',0,0),(2035,240,'上饶县',3,0,'',0,0),(2036,240,'广丰县',3,0,'',0,0),(2037,240,'玉山县',3,0,'',0,0),(2038,240,'铅山县',3,0,'',0,0),(2039,240,'横峰县',3,0,'',0,0),(2040,240,'弋阳县',3,0,'',0,0),(2041,240,'余干县',3,0,'',0,0),(2042,240,'波阳县',3,0,'',0,0),(2043,240,'万年县',3,0,'',0,0),(2044,240,'婺源县',3,0,'',0,0),(2045,241,'渝水区',3,0,'',0,0),(2046,241,'分宜县',3,0,'',0,0),(2047,242,'袁州区',3,0,'',0,0),(2048,242,'丰城市',3,0,'',0,0),(2049,242,'樟树市',3,0,'',0,0),(2050,242,'高安市',3,0,'',0,0),(2051,242,'奉新县',3,0,'',0,0),(2052,242,'万载县',3,0,'',0,0),(2053,242,'上高县',3,0,'',0,0),(2054,242,'宜丰县',3,0,'',0,0),(2055,242,'靖安县',3,0,'',0,0),(2056,242,'铜鼓县',3,0,'',0,0),(2057,243,'月湖区',3,0,'',0,0),(2058,243,'贵溪市',3,0,'',0,0),(2059,243,'余江县',3,0,'',0,0),(2060,244,'沈河区',3,0,'',0,0),(2061,244,'皇姑区',3,0,'',0,0),(2062,244,'和平区',3,0,'',0,0),(2063,244,'大东区',3,0,'',0,0),(2064,244,'铁西区',3,0,'',0,0),(2065,244,'苏家屯区',3,0,'',0,0),(2066,244,'东陵区',3,0,'',0,0),(2067,244,'沈北新区',3,0,'',0,0),(2068,244,'于洪区',3,0,'',0,0),(2069,244,'浑南新区',3,0,'',0,0),(2070,244,'新民市',3,0,'',0,0),(2071,244,'辽中县',3,0,'',0,0),(2072,244,'康平县',3,0,'',0,0),(2073,244,'法库县',3,0,'',0,0),(2074,245,'西岗区',3,0,'',0,0),(2075,245,'中山区',3,0,'',0,0),(2076,245,'沙河口区',3,0,'',0,0),(2077,245,'甘井子区',3,0,'',0,0),(2078,245,'旅顺口区',3,0,'',0,0),(2079,245,'金州区',3,0,'',0,0),(2080,245,'开发区',3,0,'',0,0),(2081,245,'瓦房店市',3,0,'',0,0),(2082,245,'普兰店市',3,0,'',0,0),(2083,245,'庄河市',3,0,'',0,0),(2084,245,'长海县',3,0,'',0,0),(2085,246,'铁东区',3,0,'',0,0),(2086,246,'铁西区',3,0,'',0,0),(2087,246,'立山区',3,0,'',0,0),(2088,246,'千山区',3,0,'',0,0),(2089,246,'岫岩',3,0,'',0,0),(2090,246,'海城市',3,0,'',0,0),(2091,246,'台安县',3,0,'',0,0),(2092,247,'本溪',3,0,'',0,0),(2093,247,'平山区',3,0,'',0,0),(2094,247,'明山区',3,0,'',0,0),(2095,247,'溪湖区',3,0,'',0,0),(2096,247,'南芬区',3,0,'',0,0),(2097,247,'桓仁',3,0,'',0,0),(2098,248,'双塔区',3,0,'',0,0),(2099,248,'龙城区',3,0,'',0,0),(2100,248,'喀喇沁左翼蒙古族自治县',3,0,'',0,0),(2101,248,'北票市',3,0,'',0,0),(2102,248,'凌源市',3,0,'',0,0),(2103,248,'朝阳县',3,0,'',0,0),(2104,248,'建平县',3,0,'',0,0),(2105,249,'振兴区',3,0,'',0,0),(2106,249,'元宝区',3,0,'',0,0),(2107,249,'振安区',3,0,'',0,0),(2108,249,'宽甸',3,0,'',0,0),(2109,249,'东港市',3,0,'',0,0),(2110,249,'凤城市',3,0,'',0,0),(2111,250,'顺城区',3,0,'',0,0),(2112,250,'新抚区',3,0,'',0,0),(2113,250,'东洲区',3,0,'',0,0),(2114,250,'望花区',3,0,'',0,0),(2115,250,'清原',3,0,'',0,0),(2116,250,'新宾',3,0,'',0,0),(2117,250,'抚顺县',3,0,'',0,0),(2118,251,'阜新',3,0,'',0,0),(2119,251,'海州区',3,0,'',0,0),(2120,251,'新邱区',3,0,'',0,0),(2121,251,'太平区',3,0,'',0,0),(2122,251,'清河门区',3,0,'',0,0),(2123,251,'细河区',3,0,'',0,0),(2124,251,'彰武县',3,0,'',0,0),(2125,252,'龙港区',3,0,'',0,0),(2126,252,'南票区',3,0,'',0,0),(2127,252,'连山区',3,0,'',0,0),(2128,252,'兴城市',3,0,'',0,0),(2129,252,'绥中县',3,0,'',0,0),(2130,252,'建昌县',3,0,'',0,0),(2131,253,'太和区',3,0,'',0,0),(2132,253,'古塔区',3,0,'',0,0),(2133,253,'凌河区',3,0,'',0,0),(2134,253,'凌海市',3,0,'',0,0),(2135,253,'北镇市',3,0,'',0,0),(2136,253,'黑山县',3,0,'',0,0),(2137,253,'义县',3,0,'',0,0),(2138,254,'白塔区',3,0,'',0,0),(2139,254,'文圣区',3,0,'',0,0),(2140,254,'宏伟区',3,0,'',0,0),(2141,254,'太子河区',3,0,'',0,0),(2142,254,'弓长岭区',3,0,'',0,0),(2143,254,'灯塔市',3,0,'',0,0),(2144,254,'辽阳县',3,0,'',0,0),(2145,255,'双台子区',3,0,'',0,0),(2146,255,'兴隆台区',3,0,'',0,0),(2147,255,'大洼县',3,0,'',0,0),(2148,255,'盘山县',3,0,'',0,0),(2149,256,'银州区',3,0,'',0,0),(2150,256,'清河区',3,0,'',0,0),(2151,256,'调兵山市',3,0,'',0,0),(2152,256,'开原市',3,0,'',0,0),(2153,256,'铁岭县',3,0,'',0,0),(2154,256,'西丰县',3,0,'',0,0),(2155,256,'昌图县',3,0,'',0,0),(2156,257,'站前区',3,0,'',0,0),(2157,257,'西市区',3,0,'',0,0),(2158,257,'鲅鱼圈区',3,0,'',0,0),(2159,257,'老边区',3,0,'',0,0),(2160,257,'盖州市',3,0,'',0,0),(2161,257,'大石桥市',3,0,'',0,0),(2162,258,'回民区',3,0,'',0,0),(2163,258,'玉泉区',3,0,'',0,0),(2164,258,'新城区',3,0,'',0,0),(2165,258,'赛罕区',3,0,'',0,0),(2166,258,'清水河县',3,0,'',0,0),(2167,258,'土默特左旗',3,0,'',0,0),(2168,258,'托克托县',3,0,'',0,0),(2169,258,'和林格尔县',3,0,'',0,0),(2170,258,'武川县',3,0,'',0,0),(2171,259,'阿拉善左旗',3,0,'',0,0),(2172,259,'阿拉善右旗',3,0,'',0,0),(2173,259,'额济纳旗',3,0,'',0,0),(2174,260,'临河区',3,0,'',0,0),(2175,260,'五原县',3,0,'',0,0),(2176,260,'磴口县',3,0,'',0,0),(2177,260,'乌拉特前旗',3,0,'',0,0),(2178,260,'乌拉特中旗',3,0,'',0,0),(2179,260,'乌拉特后旗',3,0,'',0,0),(2180,260,'杭锦后旗',3,0,'',0,0),(2181,261,'昆都仑区',3,0,'',0,0),(2182,261,'青山区',3,0,'',0,0),(2183,261,'东河区',3,0,'',0,0),(2184,261,'九原区',3,0,'',0,0),(2185,261,'石拐区',3,0,'',0,0),(2186,261,'白云矿区',3,0,'',0,0),(2187,261,'土默特右旗',3,0,'',0,0),(2188,261,'固阳县',3,0,'',0,0),(2189,261,'达尔罕茂明安联合旗',3,0,'',0,0),(2190,262,'红山区',3,0,'',0,0),(2191,262,'元宝山区',3,0,'',0,0),(2192,262,'松山区',3,0,'',0,0),(2193,262,'阿鲁科尔沁旗',3,0,'',0,0),(2194,262,'巴林左旗',3,0,'',0,0),(2195,262,'巴林右旗',3,0,'',0,0),(2196,262,'林西县',3,0,'',0,0),(2197,262,'克什克腾旗',3,0,'',0,0),(2198,262,'翁牛特旗',3,0,'',0,0),(2199,262,'喀喇沁旗',3,0,'',0,0),(2200,262,'宁城县',3,0,'',0,0),(2201,262,'敖汉旗',3,0,'',0,0),(2202,263,'东胜区',3,0,'',0,0),(2203,263,'达拉特旗',3,0,'',0,0),(2204,263,'准格尔旗',3,0,'',0,0),(2205,263,'鄂托克前旗',3,0,'',0,0),(2206,263,'鄂托克旗',3,0,'',0,0),(2207,263,'杭锦旗',3,0,'',0,0),(2208,263,'乌审旗',3,0,'',0,0),(2209,263,'伊金霍洛旗',3,0,'',0,0),(2210,264,'海拉尔区',3,0,'',0,0),(2211,264,'莫力达瓦',3,0,'',0,0),(2212,264,'满洲里市',3,0,'',0,0),(2213,264,'牙克石市',3,0,'',0,0),(2214,264,'扎兰屯市',3,0,'',0,0),(2215,264,'额尔古纳市',3,0,'',0,0),(2216,264,'根河市',3,0,'',0,0),(2217,264,'阿荣旗',3,0,'',0,0),(2218,264,'鄂伦春自治旗',3,0,'',0,0),(2219,264,'鄂温克族自治旗',3,0,'',0,0),(2220,264,'陈巴尔虎旗',3,0,'',0,0),(2221,264,'新巴尔虎左旗',3,0,'',0,0),(2222,264,'新巴尔虎右旗',3,0,'',0,0),(2223,265,'科尔沁区',3,0,'',0,0),(2224,265,'霍林郭勒市',3,0,'',0,0),(2225,265,'科尔沁左翼中旗',3,0,'',0,0),(2226,265,'科尔沁左翼后旗',3,0,'',0,0),(2227,265,'开鲁县',3,0,'',0,0),(2228,265,'库伦旗',3,0,'',0,0),(2229,265,'奈曼旗',3,0,'',0,0),(2230,265,'扎鲁特旗',3,0,'',0,0),(2231,266,'海勃湾区',3,0,'',0,0),(2232,266,'乌达区',3,0,'',0,0),(2233,266,'海南区',3,0,'',0,0),(2234,267,'化德县',3,0,'',0,0),(2235,267,'集宁区',3,0,'',0,0),(2236,267,'丰镇市',3,0,'',0,0),(2237,267,'卓资县',3,0,'',0,0),(2238,267,'商都县',3,0,'',0,0),(2239,267,'兴和县',3,0,'',0,0),(2240,267,'凉城县',3,0,'',0,0),(2241,267,'察哈尔右翼前旗',3,0,'',0,0),(2242,267,'察哈尔右翼中旗',3,0,'',0,0),(2243,267,'察哈尔右翼后旗',3,0,'',0,0),(2244,267,'四子王旗',3,0,'',0,0),(2245,268,'二连浩特市',3,0,'',0,0),(2246,268,'锡林浩特市',3,0,'',0,0),(2247,268,'阿巴嘎旗',3,0,'',0,0),(2248,268,'苏尼特左旗',3,0,'',0,0),(2249,268,'苏尼特右旗',3,0,'',0,0),(2250,268,'东乌珠穆沁旗',3,0,'',0,0),(2251,268,'西乌珠穆沁旗',3,0,'',0,0),(2252,268,'太仆寺旗',3,0,'',0,0),(2253,268,'镶黄旗',3,0,'',0,0),(2254,268,'正镶白旗',3,0,'',0,0),(2255,268,'正蓝旗',3,0,'',0,0),(2256,268,'多伦县',3,0,'',0,0),(2257,269,'乌兰浩特市',3,0,'',0,0),(2258,269,'阿尔山市',3,0,'',0,0),(2259,269,'科尔沁右翼前旗',3,0,'',0,0),(2260,269,'科尔沁右翼中旗',3,0,'',0,0),(2261,269,'扎赉特旗',3,0,'',0,0),(2262,269,'突泉县',3,0,'',0,0),(2263,270,'西夏区',3,0,'',0,0),(2264,270,'金凤区',3,0,'',0,0),(2265,270,'兴庆区',3,0,'',0,0),(2266,270,'灵武市',3,0,'',0,0),(2267,270,'永宁县',3,0,'',0,0),(2268,270,'贺兰县',3,0,'',0,0),(2269,271,'原州区',3,0,'',0,0),(2270,271,'海原县',3,0,'',0,0),(2271,271,'西吉县',3,0,'',0,0),(2272,271,'隆德县',3,0,'',0,0),(2273,271,'泾源县',3,0,'',0,0),(2274,271,'彭阳县',3,0,'',0,0),(2275,272,'惠农县',3,0,'',0,0),(2276,272,'大武口区',3,0,'',0,0),(2277,272,'惠农区',3,0,'',0,0),(2278,272,'陶乐县',3,0,'',0,0),(2279,272,'平罗县',3,0,'',0,0),(2280,273,'利通区',3,0,'',0,0),(2281,273,'中卫县',3,0,'',0,0),(2282,273,'青铜峡市',3,0,'',0,0),(2283,273,'中宁县',3,0,'',0,0),(2284,273,'盐池县',3,0,'',0,0),(2285,273,'同心县',3,0,'',0,0),(2286,274,'沙坡头区',3,0,'',0,0),(2287,274,'海原县',3,0,'',0,0),(2288,274,'中宁县',3,0,'',0,0),(2289,275,'城中区',3,0,'',0,0),(2290,275,'城东区',3,0,'',0,0),(2291,275,'城西区',3,0,'',0,0),(2292,275,'城北区',3,0,'',0,0),(2293,275,'湟中县',3,0,'',0,0),(2294,275,'湟源县',3,0,'',0,0),(2295,275,'大通',3,0,'',0,0),(2296,276,'玛沁县',3,0,'',0,0),(2297,276,'班玛县',3,0,'',0,0),(2298,276,'甘德县',3,0,'',0,0),(2299,276,'达日县',3,0,'',0,0),(2300,276,'久治县',3,0,'',0,0),(2301,276,'玛多县',3,0,'',0,0),(2302,277,'海晏县',3,0,'',0,0),(2303,277,'祁连县',3,0,'',0,0),(2304,277,'刚察县',3,0,'',0,0),(2305,277,'门源',3,0,'',0,0),(2306,278,'平安县',3,0,'',0,0),(2307,278,'乐都县',3,0,'',0,0),(2308,278,'民和',3,0,'',0,0),(2309,278,'互助',3,0,'',0,0),(2310,278,'化隆',3,0,'',0,0),(2311,278,'循化',3,0,'',0,0),(2312,279,'共和县',3,0,'',0,0),(2313,279,'同德县',3,0,'',0,0),(2314,279,'贵德县',3,0,'',0,0),(2315,279,'兴海县',3,0,'',0,0),(2316,279,'贵南县',3,0,'',0,0),(2317,280,'德令哈市',3,0,'',0,0),(2318,280,'格尔木市',3,0,'',0,0),(2319,280,'乌兰县',3,0,'',0,0),(2320,280,'都兰县',3,0,'',0,0),(2321,280,'天峻县',3,0,'',0,0),(2322,281,'同仁县',3,0,'',0,0),(2323,281,'尖扎县',3,0,'',0,0),(2324,281,'泽库县',3,0,'',0,0),(2325,281,'河南蒙古族自治县',3,0,'',0,0),(2326,282,'玉树县',3,0,'',0,0),(2327,282,'杂多县',3,0,'',0,0),(2328,282,'称多县',3,0,'',0,0),(2329,282,'治多县',3,0,'',0,0),(2330,282,'囊谦县',3,0,'',0,0),(2331,282,'曲麻莱县',3,0,'',0,0),(2332,283,'市中区',3,0,'',0,0),(2333,283,'历下区',3,0,'',0,0),(2334,283,'天桥区',3,0,'',0,0),(2335,283,'槐荫区',3,0,'',0,0),(2336,283,'历城区',3,0,'',0,0),(2337,283,'长清区',3,0,'',0,0),(2338,283,'章丘市',3,0,'',0,0),(2339,283,'平阴县',3,0,'',0,0),(2340,283,'济阳县',3,0,'',0,0),(2341,283,'商河县',3,0,'',0,0),(2342,284,'市南区',3,0,'',0,0),(2343,284,'市北区',3,0,'',0,0),(2344,284,'城阳区',3,0,'',0,0),(2345,284,'四方区',3,0,'',0,0),(2346,284,'李沧区',3,0,'',0,0),(2347,284,'黄岛区',3,0,'',0,0),(2348,284,'崂山区',3,0,'',0,0),(2349,284,'胶州市',3,0,'',0,0),(2350,284,'即墨市',3,0,'',0,0),(2351,284,'平度市',3,0,'',0,0),(2352,284,'胶南市',3,0,'',0,0),(2353,284,'莱西市',3,0,'',0,0),(2354,285,'滨城区',3,0,'',0,0),(2355,285,'惠民县',3,0,'',0,0),(2356,285,'阳信县',3,0,'',0,0),(2357,285,'无棣县',3,0,'',0,0),(2358,285,'沾化县',3,0,'',0,0),(2359,285,'博兴县',3,0,'',0,0),(2360,285,'邹平县',3,0,'',0,0),(2361,286,'德城区',3,0,'',0,0),(2362,286,'陵县',3,0,'',0,0),(2363,286,'乐陵市',3,0,'',0,0),(2364,286,'禹城市',3,0,'',0,0),(2365,286,'宁津县',3,0,'',0,0),(2366,286,'庆云县',3,0,'',0,0),(2367,286,'临邑县',3,0,'',0,0),(2368,286,'齐河县',3,0,'',0,0),(2369,286,'平原县',3,0,'',0,0),(2370,286,'夏津县',3,0,'',0,0),(2371,286,'武城县',3,0,'',0,0),(2372,287,'东营区',3,0,'',0,0),(2373,287,'河口区',3,0,'',0,0),(2374,287,'垦利县',3,0,'',0,0),(2375,287,'利津县',3,0,'',0,0),(2376,287,'广饶县',3,0,'',0,0),(2377,288,'牡丹区',3,0,'',0,0),(2378,288,'曹县',3,0,'',0,0),(2379,288,'单县',3,0,'',0,0),(2380,288,'成武县',3,0,'',0,0),(2381,288,'巨野县',3,0,'',0,0),(2382,288,'郓城县',3,0,'',0,0),(2383,288,'鄄城县',3,0,'',0,0),(2384,288,'定陶县',3,0,'',0,0),(2385,288,'东明县',3,0,'',0,0),(2386,289,'市中区',3,0,'',0,0),(2387,289,'任城区',3,0,'',0,0),(2388,289,'曲阜市',3,0,'',0,0),(2389,289,'兖州市',3,0,'',0,0),(2390,289,'邹城市',3,0,'',0,0),(2391,289,'微山县',3,0,'',0,0),(2392,289,'鱼台县',3,0,'',0,0),(2393,289,'金乡县',3,0,'',0,0),(2394,289,'嘉祥县',3,0,'',0,0),(2395,289,'汶上县',3,0,'',0,0),(2396,289,'泗水县',3,0,'',0,0),(2397,289,'梁山县',3,0,'',0,0),(2398,290,'莱城区',3,0,'',0,0),(2399,290,'钢城区',3,0,'',0,0),(2400,291,'东昌府区',3,0,'',0,0),(2401,291,'临清市',3,0,'',0,0),(2402,291,'阳谷县',3,0,'',0,0),(2403,291,'莘县',3,0,'',0,0),(2404,291,'茌平县',3,0,'',0,0),(2405,291,'东阿县',3,0,'',0,0),(2406,291,'冠县',3,0,'',0,0),(2407,291,'高唐县',3,0,'',0,0),(2408,292,'兰山区',3,0,'',0,0),(2409,292,'罗庄区',3,0,'',0,0),(2410,292,'河东区',3,0,'',0,0),(2411,292,'沂南县',3,0,'',0,0),(2412,292,'郯城县',3,0,'',0,0),(2413,292,'沂水县',3,0,'',0,0),(2414,292,'苍山县',3,0,'',0,0),(2415,292,'费县',3,0,'',0,0),(2416,292,'平邑县',3,0,'',0,0),(2417,292,'莒南县',3,0,'',0,0),(2418,292,'蒙阴县',3,0,'',0,0),(2419,292,'临沭县',3,0,'',0,0),(2420,293,'东港区',3,0,'',0,0),(2421,293,'岚山区',3,0,'',0,0),(2422,293,'五莲县',3,0,'',0,0),(2423,293,'莒县',3,0,'',0,0),(2424,294,'泰山区',3,0,'',0,0),(2425,294,'岱岳区',3,0,'',0,0),(2426,294,'新泰市',3,0,'',0,0),(2427,294,'肥城市',3,0,'',0,0),(2428,294,'宁阳县',3,0,'',0,0),(2429,294,'东平县',3,0,'',0,0),(2430,295,'荣成市',3,0,'',0,0),(2431,295,'乳山市',3,0,'',0,0),(2432,295,'环翠区',3,0,'',0,0),(2433,295,'文登市',3,0,'',0,0),(2434,296,'潍城区',3,0,'',0,0),(2435,296,'寒亭区',3,0,'',0,0),(2436,296,'坊子区',3,0,'',0,0),(2437,296,'奎文区',3,0,'',0,0),(2438,296,'青州市',3,0,'',0,0),(2439,296,'诸城市',3,0,'',0,0),(2440,296,'寿光市',3,0,'',0,0),(2441,296,'安丘市',3,0,'',0,0),(2442,296,'高密市',3,0,'',0,0),(2443,296,'昌邑市',3,0,'',0,0),(2444,296,'临朐县',3,0,'',0,0),(2445,296,'昌乐县',3,0,'',0,0),(2446,297,'芝罘区',3,0,'',0,0),(2447,297,'福山区',3,0,'',0,0),(2448,297,'牟平区',3,0,'',0,0),(2449,297,'莱山区',3,0,'',0,0),(2450,297,'开发区',3,0,'',0,0),(2451,297,'龙口市',3,0,'',0,0),(2452,297,'莱阳市',3,0,'',0,0),(2453,297,'莱州市',3,0,'',0,0),(2454,297,'蓬莱市',3,0,'',0,0),(2455,297,'招远市',3,0,'',0,0),(2456,297,'栖霞市',3,0,'',0,0),(2457,297,'海阳市',3,0,'',0,0),(2458,297,'长岛县',3,0,'',0,0),(2459,298,'市中区',3,0,'',0,0),(2460,298,'山亭区',3,0,'',0,0),(2461,298,'峄城区',3,0,'',0,0),(2462,298,'台儿庄区',3,0,'',0,0),(2463,298,'薛城区',3,0,'',0,0),(2464,298,'滕州市',3,0,'',0,0),(2465,299,'张店区',3,0,'',0,0),(2466,299,'临淄区',3,0,'',0,0),(2467,299,'淄川区',3,0,'',0,0),(2468,299,'博山区',3,0,'',0,0),(2469,299,'周村区',3,0,'',0,0),(2470,299,'桓台县',3,0,'',0,0),(2471,299,'高青县',3,0,'',0,0),(2472,299,'沂源县',3,0,'',0,0),(2473,300,'杏花岭区',3,0,'',0,0),(2474,300,'小店区',3,0,'',0,0),(2475,300,'迎泽区',3,0,'',0,0),(2476,300,'尖草坪区',3,0,'',0,0),(2477,300,'万柏林区',3,0,'',0,0),(2478,300,'晋源区',3,0,'',0,0),(2479,300,'高新开发区',3,0,'',0,0),(2480,300,'民营经济开发区',3,0,'',0,0),(2481,300,'经济技术开发区',3,0,'',0,0),(2482,300,'清徐县',3,0,'',0,0),(2483,300,'阳曲县',3,0,'',0,0),(2484,300,'娄烦县',3,0,'',0,0),(2485,300,'古交市',3,0,'',0,0),(2486,301,'城区',3,0,'',0,0),(2487,301,'郊区',3,0,'',0,0),(2488,301,'沁县',3,0,'',0,0),(2489,301,'潞城市',3,0,'',0,0),(2490,301,'长治县',3,0,'',0,0),(2491,301,'襄垣县',3,0,'',0,0),(2492,301,'屯留县',3,0,'',0,0),(2493,301,'平顺县',3,0,'',0,0),(2494,301,'黎城县',3,0,'',0,0),(2495,301,'壶关县',3,0,'',0,0),(2496,301,'长子县',3,0,'',0,0),(2497,301,'武乡县',3,0,'',0,0),(2498,301,'沁源县',3,0,'',0,0),(2499,302,'城区',3,0,'',0,0),(2500,302,'矿区',3,0,'',0,0),(2501,302,'南郊区',3,0,'',0,0),(2502,302,'新荣区',3,0,'',0,0),(2503,302,'阳高县',3,0,'',0,0),(2504,302,'天镇县',3,0,'',0,0),(2505,302,'广灵县',3,0,'',0,0),(2506,302,'灵丘县',3,0,'',0,0),(2507,302,'浑源县',3,0,'',0,0),(2508,302,'左云县',3,0,'',0,0),(2509,302,'大同县',3,0,'',0,0),(2510,303,'城区',3,0,'',0,0),(2511,303,'高平市',3,0,'',0,0),(2512,303,'沁水县',3,0,'',0,0),(2513,303,'阳城县',3,0,'',0,0),(2514,303,'陵川县',3,0,'',0,0),(2515,303,'泽州县',3,0,'',0,0),(2516,304,'榆次区',3,0,'',0,0),(2517,304,'介休市',3,0,'',0,0),(2518,304,'榆社县',3,0,'',0,0),(2519,304,'左权县',3,0,'',0,0),(2520,304,'和顺县',3,0,'',0,0),(2521,304,'昔阳县',3,0,'',0,0),(2522,304,'寿阳县',3,0,'',0,0),(2523,304,'太谷县',3,0,'',0,0),(2524,304,'祁县',3,0,'',0,0),(2525,304,'平遥县',3,0,'',0,0),(2526,304,'灵石县',3,0,'',0,0),(2527,305,'尧都区',3,0,'',0,0),(2528,305,'侯马市',3,0,'',0,0),(2529,305,'霍州市',3,0,'',0,0),(2530,305,'曲沃县',3,0,'',0,0),(2531,305,'翼城县',3,0,'',0,0),(2532,305,'襄汾县',3,0,'',0,0),(2533,305,'洪洞县',3,0,'',0,0),(2534,305,'吉县',3,0,'',0,0),(2535,305,'安泽县',3,0,'',0,0),(2536,305,'浮山县',3,0,'',0,0),(2537,305,'古县',3,0,'',0,0),(2538,305,'乡宁县',3,0,'',0,0),(2539,305,'大宁县',3,0,'',0,0),(2540,305,'隰县',3,0,'',0,0),(2541,305,'永和县',3,0,'',0,0),(2542,305,'蒲县',3,0,'',0,0),(2543,305,'汾西县',3,0,'',0,0),(2544,306,'离石市',3,0,'',0,0),(2545,306,'离石区',3,0,'',0,0),(2546,306,'孝义市',3,0,'',0,0),(2547,306,'汾阳市',3,0,'',0,0),(2548,306,'文水县',3,0,'',0,0),(2549,306,'交城县',3,0,'',0,0),(2550,306,'兴县',3,0,'',0,0),(2551,306,'临县',3,0,'',0,0),(2552,306,'柳林县',3,0,'',0,0),(2553,306,'石楼县',3,0,'',0,0),(2554,306,'岚县',3,0,'',0,0),(2555,306,'方山县',3,0,'',0,0),(2556,306,'中阳县',3,0,'',0,0),(2557,306,'交口县',3,0,'',0,0),(2558,307,'朔城区',3,0,'',0,0),(2559,307,'平鲁区',3,0,'',0,0),(2560,307,'山阴县',3,0,'',0,0),(2561,307,'应县',3,0,'',0,0),(2562,307,'右玉县',3,0,'',0,0),(2563,307,'怀仁县',3,0,'',0,0),(2564,308,'忻府区',3,0,'',0,0),(2565,308,'原平市',3,0,'',0,0),(2566,308,'定襄县',3,0,'',0,0),(2567,308,'五台县',3,0,'',0,0),(2568,308,'代县',3,0,'',0,0),(2569,308,'繁峙县',3,0,'',0,0),(2570,308,'宁武县',3,0,'',0,0),(2571,308,'静乐县',3,0,'',0,0),(2572,308,'神池县',3,0,'',0,0),(2573,308,'五寨县',3,0,'',0,0),(2574,308,'岢岚县',3,0,'',0,0),(2575,308,'河曲县',3,0,'',0,0),(2576,308,'保德县',3,0,'',0,0),(2577,308,'偏关县',3,0,'',0,0),(2578,309,'城区',3,0,'',0,0),(2579,309,'矿区',3,0,'',0,0),(2580,309,'郊区',3,0,'',0,0),(2581,309,'平定县',3,0,'',0,0),(2582,309,'盂县',3,0,'',0,0),(2583,310,'盐湖区',3,0,'',0,0),(2584,310,'永济市',3,0,'',0,0),(2585,310,'河津市',3,0,'',0,0),(2586,310,'临猗县',3,0,'',0,0),(2587,310,'万荣县',3,0,'',0,0),(2588,310,'闻喜县',3,0,'',0,0),(2589,310,'稷山县',3,0,'',0,0),(2590,310,'新绛县',3,0,'',0,0),(2591,310,'绛县',3,0,'',0,0),(2592,310,'垣曲县',3,0,'',0,0),(2593,310,'夏县',3,0,'',0,0),(2594,310,'平陆县',3,0,'',0,0),(2595,310,'芮城县',3,0,'',0,0),(2596,311,'莲湖区',3,0,'',0,0),(2597,311,'新城区',3,0,'',0,0),(2598,311,'碑林区',3,0,'',0,0),(2599,311,'雁塔区',3,0,'',0,0),(2600,311,'灞桥区',3,0,'',0,0),(2601,311,'未央区',3,0,'',0,0),(2602,311,'阎良区',3,0,'',0,0),(2603,311,'临潼区',3,0,'',0,0),(2604,311,'长安区',3,0,'',0,0),(2605,311,'蓝田县',3,0,'',0,0),(2606,311,'周至县',3,0,'',0,0),(2607,311,'户县',3,0,'',0,0),(2608,311,'高陵县',3,0,'',0,0),(2609,312,'汉滨区',3,0,'',0,0),(2610,312,'汉阴县',3,0,'',0,0),(2611,312,'石泉县',3,0,'',0,0),(2612,312,'宁陕县',3,0,'',0,0),(2613,312,'紫阳县',3,0,'',0,0),(2614,312,'岚皋县',3,0,'',0,0),(2615,312,'平利县',3,0,'',0,0),(2616,312,'镇坪县',3,0,'',0,0),(2617,312,'旬阳县',3,0,'',0,0),(2618,312,'白河县',3,0,'',0,0),(2619,313,'陈仓区',3,0,'',0,0),(2620,313,'渭滨区',3,0,'',0,0),(2621,313,'金台区',3,0,'',0,0),(2622,313,'凤翔县',3,0,'',0,0),(2623,313,'岐山县',3,0,'',0,0),(2624,313,'扶风县',3,0,'',0,0),(2625,313,'眉县',3,0,'',0,0),(2626,313,'陇县',3,0,'',0,0),(2627,313,'千阳县',3,0,'',0,0),(2628,313,'麟游县',3,0,'',0,0),(2629,313,'凤县',3,0,'',0,0),(2630,313,'太白县',3,0,'',0,0),(2631,314,'汉台区',3,0,'',0,0),(2632,314,'南郑县',3,0,'',0,0),(2633,314,'城固县',3,0,'',0,0),(2634,314,'洋县',3,0,'',0,0),(2635,314,'西乡县',3,0,'',0,0),(2636,314,'勉县',3,0,'',0,0),(2637,314,'宁强县',3,0,'',0,0),(2638,314,'略阳县',3,0,'',0,0),(2639,314,'镇巴县',3,0,'',0,0),(2640,314,'留坝县',3,0,'',0,0),(2641,314,'佛坪县',3,0,'',0,0),(2642,315,'商州区',3,0,'',0,0),(2643,315,'洛南县',3,0,'',0,0),(2644,315,'丹凤县',3,0,'',0,0),(2645,315,'商南县',3,0,'',0,0),(2646,315,'山阳县',3,0,'',0,0),(2647,315,'镇安县',3,0,'',0,0),(2648,315,'柞水县',3,0,'',0,0),(2649,316,'耀州区',3,0,'',0,0),(2650,316,'王益区',3,0,'',0,0),(2651,316,'印台区',3,0,'',0,0),(2652,316,'宜君县',3,0,'',0,0),(2653,317,'临渭区',3,0,'',0,0),(2654,317,'韩城市',3,0,'',0,0),(2655,317,'华阴市',3,0,'',0,0),(2656,317,'华县',3,0,'',0,0),(2657,317,'潼关县',3,0,'',0,0),(2658,317,'大荔县',3,0,'',0,0),(2659,317,'合阳县',3,0,'',0,0),(2660,317,'澄城县',3,0,'',0,0),(2661,317,'蒲城县',3,0,'',0,0),(2662,317,'白水县',3,0,'',0,0),(2663,317,'富平县',3,0,'',0,0),(2664,318,'秦都区',3,0,'',0,0),(2665,318,'渭城区',3,0,'',0,0),(2666,318,'杨陵区',3,0,'',0,0),(2667,318,'兴平市',3,0,'',0,0),(2668,318,'三原县',3,0,'',0,0),(2669,318,'泾阳县',3,0,'',0,0),(2670,318,'乾县',3,0,'',0,0),(2671,318,'礼泉县',3,0,'',0,0),(2672,318,'永寿县',3,0,'',0,0),(2673,318,'彬县',3,0,'',0,0),(2674,318,'长武县',3,0,'',0,0),(2675,318,'旬邑县',3,0,'',0,0),(2676,318,'淳化县',3,0,'',0,0),(2677,318,'武功县',3,0,'',0,0),(2678,319,'吴起县',3,0,'',0,0),(2679,319,'宝塔区',3,0,'',0,0),(2680,319,'延长县',3,0,'',0,0),(2681,319,'延川县',3,0,'',0,0),(2682,319,'子长县',3,0,'',0,0),(2683,319,'安塞县',3,0,'',0,0),(2684,319,'志丹县',3,0,'',0,0),(2685,319,'甘泉县',3,0,'',0,0),(2686,319,'富县',3,0,'',0,0),(2687,319,'洛川县',3,0,'',0,0),(2688,319,'宜川县',3,0,'',0,0),(2689,319,'黄龙县',3,0,'',0,0),(2690,319,'黄陵县',3,0,'',0,0),(2691,320,'榆阳区',3,0,'',0,0),(2692,320,'神木县',3,0,'',0,0),(2693,320,'府谷县',3,0,'',0,0),(2694,320,'横山县',3,0,'',0,0),(2695,320,'靖边县',3,0,'',0,0),(2696,320,'定边县',3,0,'',0,0),(2697,320,'绥德县',3,0,'',0,0),(2698,320,'米脂县',3,0,'',0,0),(2699,320,'佳县',3,0,'',0,0),(2700,320,'吴堡县',3,0,'',0,0),(2701,320,'清涧县',3,0,'',0,0),(2702,320,'子洲县',3,0,'',0,0),(2703,321,'长宁区',3,0,'',0,0),(2704,321,'闸北区',3,0,'',0,0),(2705,321,'闵行区',3,0,'',0,0),(2706,321,'徐汇区',3,0,'',0,0),(2707,321,'浦东新区',3,0,'',0,0),(2708,321,'杨浦区',3,0,'',0,0),(2709,321,'普陀区',3,0,'',0,0),(2710,321,'静安区',3,0,'',0,0),(2711,321,'卢湾区',3,0,'',0,0),(2712,321,'虹口区',3,0,'',0,0),(2713,321,'黄浦区',3,0,'',0,0),(2714,321,'南汇区',3,0,'',0,0),(2715,321,'松江区',3,0,'',0,0),(2716,321,'嘉定区',3,0,'',0,0),(2717,321,'宝山区',3,0,'',0,0),(2718,321,'青浦区',3,0,'',0,0),(2719,321,'金山区',3,0,'',0,0),(2720,321,'奉贤区',3,0,'',0,0),(2721,321,'崇明县',3,0,'',0,0),(2722,322,'青羊区',3,0,'',0,0),(2723,322,'锦江区',3,0,'',0,0),(2724,322,'金牛区',3,0,'',0,0),(2725,322,'武侯区',3,0,'',0,0),(2726,322,'成华区',3,0,'',0,0),(2727,322,'龙泉驿区',3,0,'',0,0),(2728,322,'青白江区',3,0,'',0,0),(2729,322,'新都区',3,0,'',0,0),(2730,322,'温江区',3,0,'',0,0),(2731,322,'高新区',3,0,'',0,0),(2732,322,'高新西区',3,0,'',0,0),(2733,322,'都江堰市',3,0,'',0,0),(2734,322,'彭州市',3,0,'',0,0),(2735,322,'邛崃市',3,0,'',0,0),(2736,322,'崇州市',3,0,'',0,0),(2737,322,'金堂县',3,0,'',0,0),(2738,322,'双流县',3,0,'',0,0),(2739,322,'郫县',3,0,'',0,0),(2740,322,'大邑县',3,0,'',0,0),(2741,322,'蒲江县',3,0,'',0,0),(2742,322,'新津县',3,0,'',0,0),(2743,322,'都江堰市',3,0,'',0,0),(2744,322,'彭州市',3,0,'',0,0),(2745,322,'邛崃市',3,0,'',0,0),(2746,322,'崇州市',3,0,'',0,0),(2747,322,'金堂县',3,0,'',0,0),(2748,322,'双流县',3,0,'',0,0),(2749,322,'郫县',3,0,'',0,0),(2750,322,'大邑县',3,0,'',0,0),(2751,322,'蒲江县',3,0,'',0,0),(2752,322,'新津县',3,0,'',0,0),(2753,323,'涪城区',3,0,'',0,0),(2754,323,'游仙区',3,0,'',0,0),(2755,323,'江油市',3,0,'',0,0),(2756,323,'盐亭县',3,0,'',0,0),(2757,323,'三台县',3,0,'',0,0),(2758,323,'平武县',3,0,'',0,0),(2759,323,'安县',3,0,'',0,0),(2760,323,'梓潼县',3,0,'',0,0),(2761,323,'北川县',3,0,'',0,0),(2762,324,'马尔康县',3,0,'',0,0),(2763,324,'汶川县',3,0,'',0,0),(2764,324,'理县',3,0,'',0,0),(2765,324,'茂县',3,0,'',0,0),(2766,324,'松潘县',3,0,'',0,0),(2767,324,'九寨沟县',3,0,'',0,0),(2768,324,'金川县',3,0,'',0,0),(2769,324,'小金县',3,0,'',0,0),(2770,324,'黑水县',3,0,'',0,0),(2771,324,'壤塘县',3,0,'',0,0),(2772,324,'阿坝县',3,0,'',0,0),(2773,324,'若尔盖县',3,0,'',0,0),(2774,324,'红原县',3,0,'',0,0),(2775,325,'巴州区',3,0,'',0,0),(2776,325,'通江县',3,0,'',0,0),(2777,325,'南江县',3,0,'',0,0),(2778,325,'平昌县',3,0,'',0,0),(2779,326,'通川区',3,0,'',0,0),(2780,326,'万源市',3,0,'',0,0),(2781,326,'达县',3,0,'',0,0),(2782,326,'宣汉县',3,0,'',0,0),(2783,326,'开江县',3,0,'',0,0),(2784,326,'大竹县',3,0,'',0,0),(2785,326,'渠县',3,0,'',0,0),(2786,327,'旌阳区',3,0,'',0,0),(2787,327,'广汉市',3,0,'',0,0),(2788,327,'什邡市',3,0,'',0,0),(2789,327,'绵竹市',3,0,'',0,0),(2790,327,'罗江县',3,0,'',0,0),(2791,327,'中江县',3,0,'',0,0),(2792,328,'康定县',3,0,'',0,0),(2793,328,'丹巴县',3,0,'',0,0),(2794,328,'泸定县',3,0,'',0,0),(2795,328,'炉霍县',3,0,'',0,0),(2796,328,'九龙县',3,0,'',0,0),(2797,328,'甘孜县',3,0,'',0,0),(2798,328,'雅江县',3,0,'',0,0),(2799,328,'新龙县',3,0,'',0,0),(2800,328,'道孚县',3,0,'',0,0),(2801,328,'白玉县',3,0,'',0,0),(2802,328,'理塘县',3,0,'',0,0),(2803,328,'德格县',3,0,'',0,0),(2804,328,'乡城县',3,0,'',0,0),(2805,328,'石渠县',3,0,'',0,0),(2806,328,'稻城县',3,0,'',0,0),(2807,328,'色达县',3,0,'',0,0),(2808,328,'巴塘县',3,0,'',0,0),(2809,328,'得荣县',3,0,'',0,0),(2810,329,'广安区',3,0,'',0,0),(2811,329,'华蓥市',3,0,'',0,0),(2812,329,'岳池县',3,0,'',0,0),(2813,329,'武胜县',3,0,'',0,0),(2814,329,'邻水县',3,0,'',0,0),(2815,330,'利州区',3,0,'',0,0),(2816,330,'元坝区',3,0,'',0,0),(2817,330,'朝天区',3,0,'',0,0),(2818,330,'旺苍县',3,0,'',0,0),(2819,330,'青川县',3,0,'',0,0),(2820,330,'剑阁县',3,0,'',0,0),(2821,330,'苍溪县',3,0,'',0,0),(2822,331,'峨眉山市',3,0,'',0,0),(2823,331,'乐山市',3,0,'',0,0),(2824,331,'犍为县',3,0,'',0,0),(2825,331,'井研县',3,0,'',0,0),(2826,331,'夹江县',3,0,'',0,0),(2827,331,'沐川县',3,0,'',0,0),(2828,331,'峨边',3,0,'',0,0),(2829,331,'马边',3,0,'',0,0),(2830,332,'西昌市',3,0,'',0,0),(2831,332,'盐源县',3,0,'',0,0),(2832,332,'德昌县',3,0,'',0,0),(2833,332,'会理县',3,0,'',0,0),(2834,332,'会东县',3,0,'',0,0),(2835,332,'宁南县',3,0,'',0,0),(2836,332,'普格县',3,0,'',0,0),(2837,332,'布拖县',3,0,'',0,0),(2838,332,'金阳县',3,0,'',0,0),(2839,332,'昭觉县',3,0,'',0,0),(2840,332,'喜德县',3,0,'',0,0),(2841,332,'冕宁县',3,0,'',0,0),(2842,332,'越西县',3,0,'',0,0),(2843,332,'甘洛县',3,0,'',0,0),(2844,332,'美姑县',3,0,'',0,0),(2845,332,'雷波县',3,0,'',0,0),(2846,332,'木里',3,0,'',0,0),(2847,333,'东坡区',3,0,'',0,0),(2848,333,'仁寿县',3,0,'',0,0),(2849,333,'彭山县',3,0,'',0,0),(2850,333,'洪雅县',3,0,'',0,0),(2851,333,'丹棱县',3,0,'',0,0),(2852,333,'青神县',3,0,'',0,0),(2853,334,'阆中市',3,0,'',0,0),(2854,334,'南部县',3,0,'',0,0),(2855,334,'营山县',3,0,'',0,0),(2856,334,'蓬安县',3,0,'',0,0),(2857,334,'仪陇县',3,0,'',0,0),(2858,334,'顺庆区',3,0,'',0,0),(2859,334,'高坪区',3,0,'',0,0),(2860,334,'嘉陵区',3,0,'',0,0),(2861,334,'西充县',3,0,'',0,0),(2862,335,'市中区',3,0,'',0,0),(2863,335,'东兴区',3,0,'',0,0),(2864,335,'威远县',3,0,'',0,0),(2865,335,'资中县',3,0,'',0,0),(2866,335,'隆昌县',3,0,'',0,0),(2867,336,'东  区',3,0,'',0,0),(2868,336,'西  区',3,0,'',0,0),(2869,336,'仁和区',3,0,'',0,0),(2870,336,'米易县',3,0,'',0,0),(2871,336,'盐边县',3,0,'',0,0),(2872,337,'船山区',3,0,'',0,0),(2873,337,'安居区',3,0,'',0,0),(2874,337,'蓬溪县',3,0,'',0,0),(2875,337,'射洪县',3,0,'',0,0),(2876,337,'大英县',3,0,'',0,0),(2877,338,'雨城区',3,0,'',0,0),(2878,338,'名山县',3,0,'',0,0),(2879,338,'荥经县',3,0,'',0,0),(2880,338,'汉源县',3,0,'',0,0),(2881,338,'石棉县',3,0,'',0,0),(2882,338,'天全县',3,0,'',0,0),(2883,338,'芦山县',3,0,'',0,0),(2884,338,'宝兴县',3,0,'',0,0),(2885,339,'翠屏区',3,0,'',0,0),(2886,339,'宜宾县',3,0,'',0,0),(2887,339,'南溪县',3,0,'',0,0),(2888,339,'江安县',3,0,'',0,0),(2889,339,'长宁县',3,0,'',0,0),(2890,339,'高县',3,0,'',0,0),(2891,339,'珙县',3,0,'',0,0),(2892,339,'筠连县',3,0,'',0,0),(2893,339,'兴文县',3,0,'',0,0),(2894,339,'屏山县',3,0,'',0,0),(2895,340,'雁江区',3,0,'',0,0),(2896,340,'简阳市',3,0,'',0,0),(2897,340,'安岳县',3,0,'',0,0),(2898,340,'乐至县',3,0,'',0,0),(2899,341,'大安区',3,0,'',0,0),(2900,341,'自流井区',3,0,'',0,0),(2901,341,'贡井区',3,0,'',0,0),(2902,341,'沿滩区',3,0,'',0,0),(2903,341,'荣县',3,0,'',0,0),(2904,341,'富顺县',3,0,'',0,0),(2905,342,'江阳区',3,0,'',0,0),(2906,342,'纳溪区',3,0,'',0,0),(2907,342,'龙马潭区',3,0,'',0,0),(2908,342,'泸县',3,0,'',0,0),(2909,342,'合江县',3,0,'',0,0),(2910,342,'叙永县',3,0,'',0,0),(2911,342,'古蔺县',3,0,'',0,0),(2912,343,'和平区',3,0,'',0,0),(2913,343,'河西区',3,0,'',0,0),(2914,343,'南开区',3,0,'',0,0),(2915,343,'河北区',3,0,'',0,0),(2916,343,'河东区',3,0,'',0,0),(2917,343,'红桥区',3,0,'',0,0),(2918,343,'东丽区',3,0,'',0,0),(2919,343,'津南区',3,0,'',0,0),(2920,343,'西青区',3,0,'',0,0),(2921,343,'北辰区',3,0,'',0,0),(2922,343,'塘沽区',3,0,'',0,0),(2923,343,'汉沽区',3,0,'',0,0),(2924,343,'大港区',3,0,'',0,0),(2925,343,'武清区',3,0,'',0,0),(2926,343,'宝坻区',3,0,'',0,0),(2927,343,'经济开发区',3,0,'',0,0),(2928,343,'宁河县',3,0,'',0,0),(2929,343,'静海县',3,0,'',0,0),(2930,343,'蓟县',3,0,'',0,0),(2931,344,'城关区',3,0,'',0,0),(2932,344,'林周县',3,0,'',0,0),(2933,344,'当雄县',3,0,'',0,0),(2934,344,'尼木县',3,0,'',0,0),(2935,344,'曲水县',3,0,'',0,0),(2936,344,'堆龙德庆县',3,0,'',0,0),(2937,344,'达孜县',3,0,'',0,0),(2938,344,'墨竹工卡县',3,0,'',0,0),(2939,345,'噶尔县',3,0,'',0,0),(2940,345,'普兰县',3,0,'',0,0),(2941,345,'札达县',3,0,'',0,0),(2942,345,'日土县',3,0,'',0,0),(2943,345,'革吉县',3,0,'',0,0),(2944,345,'改则县',3,0,'',0,0),(2945,345,'措勤县',3,0,'',0,0),(2946,346,'昌都县',3,0,'',0,0),(2947,346,'江达县',3,0,'',0,0),(2948,346,'贡觉县',3,0,'',0,0),(2949,346,'类乌齐县',3,0,'',0,0),(2950,346,'丁青县',3,0,'',0,0),(2951,346,'察雅县',3,0,'',0,0),(2952,346,'八宿县',3,0,'',0,0),(2953,346,'左贡县',3,0,'',0,0),(2954,346,'芒康县',3,0,'',0,0),(2955,346,'洛隆县',3,0,'',0,0),(2956,346,'边坝县',3,0,'',0,0),(2957,347,'林芝县',3,0,'',0,0),(2958,347,'工布江达县',3,0,'',0,0),(2959,347,'米林县',3,0,'',0,0),(2960,347,'墨脱县',3,0,'',0,0),(2961,347,'波密县',3,0,'',0,0),(2962,347,'察隅县',3,0,'',0,0),(2963,347,'朗县',3,0,'',0,0),(2964,348,'那曲县',3,0,'',0,0),(2965,348,'嘉黎县',3,0,'',0,0),(2966,348,'比如县',3,0,'',0,0),(2967,348,'聂荣县',3,0,'',0,0),(2968,348,'安多县',3,0,'',0,0),(2969,348,'申扎县',3,0,'',0,0),(2970,348,'索县',3,0,'',0,0),(2971,348,'班戈县',3,0,'',0,0),(2972,348,'巴青县',3,0,'',0,0),(2973,348,'尼玛县',3,0,'',0,0),(2974,349,'日喀则市',3,0,'',0,0),(2975,349,'南木林县',3,0,'',0,0),(2976,349,'江孜县',3,0,'',0,0),(2977,349,'定日县',3,0,'',0,0),(2978,349,'萨迦县',3,0,'',0,0),(2979,349,'拉孜县',3,0,'',0,0),(2980,349,'昂仁县',3,0,'',0,0),(2981,349,'谢通门县',3,0,'',0,0),(2982,349,'白朗县',3,0,'',0,0),(2983,349,'仁布县',3,0,'',0,0),(2984,349,'康马县',3,0,'',0,0),(2985,349,'定结县',3,0,'',0,0),(2986,349,'仲巴县',3,0,'',0,0),(2987,349,'亚东县',3,0,'',0,0),(2988,349,'吉隆县',3,0,'',0,0),(2989,349,'聂拉木县',3,0,'',0,0),(2990,349,'萨嘎县',3,0,'',0,0),(2991,349,'岗巴县',3,0,'',0,0),(2992,350,'乃东县',3,0,'',0,0),(2993,350,'扎囊县',3,0,'',0,0),(2994,350,'贡嘎县',3,0,'',0,0),(2995,350,'桑日县',3,0,'',0,0),(2996,350,'琼结县',3,0,'',0,0),(2997,350,'曲松县',3,0,'',0,0),(2998,350,'措美县',3,0,'',0,0),(2999,350,'洛扎县',3,0,'',0,0),(3000,350,'加查县',3,0,'',0,0),(3001,350,'隆子县',3,0,'',0,0),(3002,350,'错那县',3,0,'',0,0),(3003,350,'浪卡子县',3,0,'',0,0),(3004,351,'天山区',3,0,'',0,0),(3005,351,'沙依巴克区',3,0,'',0,0),(3006,351,'新市区',3,0,'',0,0),(3007,351,'水磨沟区',3,0,'',0,0),(3008,351,'头屯河区',3,0,'',0,0),(3009,351,'达坂城区',3,0,'',0,0),(3010,351,'米东区',3,0,'',0,0),(3011,351,'乌鲁木齐县',3,0,'',0,0),(3012,352,'阿克苏市',3,0,'',0,0),(3013,352,'温宿县',3,0,'',0,0),(3014,352,'库车县',3,0,'',0,0),(3015,352,'沙雅县',3,0,'',0,0),(3016,352,'新和县',3,0,'',0,0),(3017,352,'拜城县',3,0,'',0,0),(3018,352,'乌什县',3,0,'',0,0),(3019,352,'阿瓦提县',3,0,'',0,0),(3020,352,'柯坪县',3,0,'',0,0),(3021,353,'阿拉尔市',3,0,'',0,0),(3022,354,'库尔勒市',3,0,'',0,0),(3023,354,'轮台县',3,0,'',0,0),(3024,354,'尉犁县',3,0,'',0,0),(3025,354,'若羌县',3,0,'',0,0),(3026,354,'且末县',3,0,'',0,0),(3027,354,'焉耆',3,0,'',0,0),(3028,354,'和静县',3,0,'',0,0),(3029,354,'和硕县',3,0,'',0,0),(3030,354,'博湖县',3,0,'',0,0),(3031,355,'博乐市',3,0,'',0,0),(3032,355,'精河县',3,0,'',0,0),(3033,355,'温泉县',3,0,'',0,0),(3034,356,'呼图壁县',3,0,'',0,0),(3035,356,'米泉市',3,0,'',0,0),(3036,356,'昌吉市',3,0,'',0,0),(3037,356,'阜康市',3,0,'',0,0),(3038,356,'玛纳斯县',3,0,'',0,0),(3039,356,'奇台县',3,0,'',0,0),(3040,356,'吉木萨尔县',3,0,'',0,0),(3041,356,'木垒',3,0,'',0,0),(3042,357,'哈密市',3,0,'',0,0),(3043,357,'伊吾县',3,0,'',0,0),(3044,357,'巴里坤',3,0,'',0,0),(3045,358,'和田市',3,0,'',0,0),(3046,358,'和田县',3,0,'',0,0),(3047,358,'墨玉县',3,0,'',0,0),(3048,358,'皮山县',3,0,'',0,0),(3049,358,'洛浦县',3,0,'',0,0),(3050,358,'策勒县',3,0,'',0,0),(3051,358,'于田县',3,0,'',0,0),(3052,358,'民丰县',3,0,'',0,0),(3053,359,'喀什市',3,0,'',0,0),(3054,359,'疏附县',3,0,'',0,0),(3055,359,'疏勒县',3,0,'',0,0),(3056,359,'英吉沙县',3,0,'',0,0),(3057,359,'泽普县',3,0,'',0,0),(3058,359,'莎车县',3,0,'',0,0),(3059,359,'叶城县',3,0,'',0,0),(3060,359,'麦盖提县',3,0,'',0,0),(3061,359,'岳普湖县',3,0,'',0,0),(3062,359,'伽师县',3,0,'',0,0),(3063,359,'巴楚县',3,0,'',0,0),(3064,359,'塔什库尔干',3,0,'',0,0),(3065,360,'克拉玛依市',3,0,'',0,0),(3066,361,'阿图什市',3,0,'',0,0),(3067,361,'阿克陶县',3,0,'',0,0),(3068,361,'阿合奇县',3,0,'',0,0),(3069,361,'乌恰县',3,0,'',0,0),(3070,362,'石河子市',3,0,'',0,0),(3071,363,'图木舒克市',3,0,'',0,0),(3072,364,'吐鲁番市',3,0,'',0,0),(3073,364,'鄯善县',3,0,'',0,0),(3074,364,'托克逊县',3,0,'',0,0),(3075,365,'五家渠市',3,0,'',0,0),(3076,366,'阿勒泰市',3,0,'',0,0),(3077,366,'布克赛尔',3,0,'',0,0),(3078,366,'伊宁市',3,0,'',0,0),(3079,366,'布尔津县',3,0,'',0,0),(3080,366,'奎屯市',3,0,'',0,0),(3081,366,'乌苏市',3,0,'',0,0),(3082,366,'额敏县',3,0,'',0,0),(3083,366,'富蕴县',3,0,'',0,0),(3084,366,'伊宁县',3,0,'',0,0),(3085,366,'福海县',3,0,'',0,0),(3086,366,'霍城县',3,0,'',0,0),(3087,366,'沙湾县',3,0,'',0,0),(3088,366,'巩留县',3,0,'',0,0),(3089,366,'哈巴河县',3,0,'',0,0),(3090,366,'托里县',3,0,'',0,0),(3091,366,'青河县',3,0,'',0,0),(3092,366,'新源县',3,0,'',0,0),(3093,366,'裕民县',3,0,'',0,0),(3094,366,'和布克赛尔',3,0,'',0,0),(3095,366,'吉木乃县',3,0,'',0,0),(3096,366,'昭苏县',3,0,'',0,0),(3097,366,'特克斯县',3,0,'',0,0),(3098,366,'尼勒克县',3,0,'',0,0),(3099,366,'察布查尔',3,0,'',0,0),(3100,367,'盘龙区',3,0,'',0,0),(3101,367,'五华区',3,0,'',0,0),(3102,367,'官渡区',3,0,'',0,0),(3103,367,'西山区',3,0,'',0,0),(3104,367,'东川区',3,0,'',0,0),(3105,367,'安宁市',3,0,'',0,0),(3106,367,'呈贡县',3,0,'',0,0),(3107,367,'晋宁县',3,0,'',0,0),(3108,367,'富民县',3,0,'',0,0),(3109,367,'宜良县',3,0,'',0,0),(3110,367,'嵩明县',3,0,'',0,0),(3111,367,'石林县',3,0,'',0,0),(3112,367,'禄劝',3,0,'',0,0),(3113,367,'寻甸',3,0,'',0,0),(3114,368,'兰坪',3,0,'',0,0),(3115,368,'泸水县',3,0,'',0,0),(3116,368,'福贡县',3,0,'',0,0),(3117,368,'贡山',3,0,'',0,0),(3118,369,'宁洱',3,0,'',0,0),(3119,369,'思茅区',3,0,'',0,0),(3120,369,'墨江',3,0,'',0,0),(3121,369,'景东',3,0,'',0,0),(3122,369,'景谷',3,0,'',0,0),(3123,369,'镇沅',3,0,'',0,0),(3124,369,'江城',3,0,'',0,0),(3125,369,'孟连',3,0,'',0,0),(3126,369,'澜沧',3,0,'',0,0),(3127,369,'西盟',3,0,'',0,0),(3128,370,'古城区',3,0,'',0,0),(3129,370,'宁蒗',3,0,'',0,0),(3130,370,'玉龙',3,0,'',0,0),(3131,370,'永胜县',3,0,'',0,0),(3132,370,'华坪县',3,0,'',0,0),(3133,371,'隆阳区',3,0,'',0,0),(3134,371,'施甸县',3,0,'',0,0),(3135,371,'腾冲县',3,0,'',0,0),(3136,371,'龙陵县',3,0,'',0,0),(3137,371,'昌宁县',3,0,'',0,0),(3138,372,'楚雄市',3,0,'',0,0),(3139,372,'双柏县',3,0,'',0,0),(3140,372,'牟定县',3,0,'',0,0),(3141,372,'南华县',3,0,'',0,0),(3142,372,'姚安县',3,0,'',0,0),(3143,372,'大姚县',3,0,'',0,0),(3144,372,'永仁县',3,0,'',0,0),(3145,372,'元谋县',3,0,'',0,0),(3146,372,'武定县',3,0,'',0,0),(3147,372,'禄丰县',3,0,'',0,0),(3148,373,'大理市',3,0,'',0,0),(3149,373,'祥云县',3,0,'',0,0),(3150,373,'宾川县',3,0,'',0,0),(3151,373,'弥渡县',3,0,'',0,0),(3152,373,'永平县',3,0,'',0,0),(3153,373,'云龙县',3,0,'',0,0),(3154,373,'洱源县',3,0,'',0,0),(3155,373,'剑川县',3,0,'',0,0),(3156,373,'鹤庆县',3,0,'',0,0),(3157,373,'漾濞',3,0,'',0,0),(3158,373,'南涧',3,0,'',0,0),(3159,373,'巍山',3,0,'',0,0),(3160,374,'潞西市',3,0,'',0,0),(3161,374,'瑞丽市',3,0,'',0,0),(3162,374,'梁河县',3,0,'',0,0),(3163,374,'盈江县',3,0,'',0,0),(3164,374,'陇川县',3,0,'',0,0),(3165,375,'香格里拉县',3,0,'',0,0),(3166,375,'德钦县',3,0,'',0,0),(3167,375,'维西',3,0,'',0,0),(3168,376,'泸西县',3,0,'',0,0),(3169,376,'蒙自县',3,0,'',0,0),(3170,376,'个旧市',3,0,'',0,0),(3171,376,'开远市',3,0,'',0,0),(3172,376,'绿春县',3,0,'',0,0),(3173,376,'建水县',3,0,'',0,0),(3174,376,'石屏县',3,0,'',0,0),(3175,376,'弥勒县',3,0,'',0,0),(3176,376,'元阳县',3,0,'',0,0),(3177,376,'红河县',3,0,'',0,0),(3178,376,'金平',3,0,'',0,0),(3179,376,'河口',3,0,'',0,0),(3180,376,'屏边',3,0,'',0,0),(3181,377,'临翔区',3,0,'',0,0),(3182,377,'凤庆县',3,0,'',0,0),(3183,377,'云县',3,0,'',0,0),(3184,377,'永德县',3,0,'',0,0),(3185,377,'镇康县',3,0,'',0,0),(3186,377,'双江',3,0,'',0,0),(3187,377,'耿马',3,0,'',0,0),(3188,377,'沧源',3,0,'',0,0),(3189,378,'麒麟区',3,0,'',0,0),(3190,378,'宣威市',3,0,'',0,0),(3191,378,'马龙县',3,0,'',0,0),(3192,378,'陆良县',3,0,'',0,0),(3193,378,'师宗县',3,0,'',0,0),(3194,378,'罗平县',3,0,'',0,0),(3195,378,'富源县',3,0,'',0,0),(3196,378,'会泽县',3,0,'',0,0),(3197,378,'沾益县',3,0,'',0,0),(3198,379,'文山县',3,0,'',0,0),(3199,379,'砚山县',3,0,'',0,0),(3200,379,'西畴县',3,0,'',0,0),(3201,379,'麻栗坡县',3,0,'',0,0),(3202,379,'马关县',3,0,'',0,0),(3203,379,'丘北县',3,0,'',0,0),(3204,379,'广南县',3,0,'',0,0),(3205,379,'富宁县',3,0,'',0,0),(3206,380,'景洪市',3,0,'',0,0),(3207,380,'勐海县',3,0,'',0,0),(3208,380,'勐腊县',3,0,'',0,0),(3209,381,'红塔区',3,0,'',0,0),(3210,381,'江川县',3,0,'',0,0),(3211,381,'澄江县',3,0,'',0,0),(3212,381,'通海县',3,0,'',0,0),(3213,381,'华宁县',3,0,'',0,0),(3214,381,'易门县',3,0,'',0,0),(3215,381,'峨山',3,0,'',0,0),(3216,381,'新平',3,0,'',0,0),(3217,381,'元江',3,0,'',0,0),(3218,382,'昭阳区',3,0,'',0,0),(3219,382,'鲁甸县',3,0,'',0,0),(3220,382,'巧家县',3,0,'',0,0),(3221,382,'盐津县',3,0,'',0,0),(3222,382,'大关县',3,0,'',0,0),(3223,382,'永善县',3,0,'',0,0),(3224,382,'绥江县',3,0,'',0,0),(3225,382,'镇雄县',3,0,'',0,0),(3226,382,'彝良县',3,0,'',0,0),(3227,382,'威信县',3,0,'',0,0),(3228,382,'水富县',3,0,'',0,0),(3229,383,'西湖区',3,0,'',0,0),(3230,383,'上城区',3,0,'',0,0),(3231,383,'下城区',3,0,'',0,0),(3232,383,'拱墅区',3,0,'',0,0),(3233,383,'滨江区',3,0,'',0,0),(3234,383,'江干区',3,0,'',0,0),(3235,383,'萧山区',3,0,'',0,0),(3236,383,'余杭区',3,0,'',0,0),(3237,383,'市郊',3,0,'',0,0),(3238,383,'建德市',3,0,'',0,0),(3239,383,'富阳市',3,0,'',0,0),(3240,383,'临安市',3,0,'',0,0),(3241,383,'桐庐县',3,0,'',0,0),(3242,383,'淳安县',3,0,'',0,0),(3243,384,'吴兴区',3,0,'',0,0),(3244,384,'南浔区',3,0,'',0,0),(3245,384,'德清县',3,0,'',0,0),(3246,384,'长兴县',3,0,'',0,0),(3247,384,'安吉县',3,0,'',0,0),(3248,385,'南湖区',3,0,'',0,0),(3249,385,'秀洲区',3,0,'',0,0),(3250,385,'海宁市',3,0,'',0,0),(3251,385,'嘉善县',3,0,'',0,0),(3252,385,'平湖市',3,0,'',0,0),(3253,385,'桐乡市',3,0,'',0,0),(3254,385,'海盐县',3,0,'',0,0),(3255,386,'婺城区',3,0,'',0,0),(3256,386,'金东区',3,0,'',0,0),(3257,386,'兰溪市',3,0,'',0,0),(3258,386,'市区',3,0,'',0,0),(3259,386,'佛堂镇',3,0,'',0,0),(3260,386,'上溪镇',3,0,'',0,0),(3261,386,'义亭镇',3,0,'',0,0),(3262,386,'大陈镇',3,0,'',0,0),(3263,386,'苏溪镇',3,0,'',0,0),(3264,386,'赤岸镇',3,0,'',0,0),(3265,386,'东阳市',3,0,'',0,0),(3266,386,'永康市',3,0,'',0,0),(3267,386,'武义县',3,0,'',0,0),(3268,386,'浦江县',3,0,'',0,0),(3269,386,'磐安县',3,0,'',0,0),(3270,387,'莲都区',3,0,'',0,0),(3271,387,'龙泉市',3,0,'',0,0),(3272,387,'青田县',3,0,'',0,0),(3273,387,'缙云县',3,0,'',0,0),(3274,387,'遂昌县',3,0,'',0,0),(3275,387,'松阳县',3,0,'',0,0),(3276,387,'云和县',3,0,'',0,0),(3277,387,'庆元县',3,0,'',0,0),(3278,387,'景宁',3,0,'',0,0),(3279,388,'海曙区',3,0,'',0,0),(3280,388,'江东区',3,0,'',0,0),(3281,388,'江北区',3,0,'',0,0),(3282,388,'镇海区',3,0,'',0,0),(3283,388,'北仑区',3,0,'',0,0),(3284,388,'鄞州区',3,0,'',0,0),(3285,388,'余姚市',3,0,'',0,0),(3286,388,'慈溪市',3,0,'',0,0),(3287,388,'奉化市',3,0,'',0,0),(3288,388,'象山县',3,0,'',0,0),(3289,388,'宁海县',3,0,'',0,0),(3290,389,'越城区',3,0,'',0,0),(3291,389,'上虞市',3,0,'',0,0),(3292,389,'嵊州市',3,0,'',0,0),(3293,389,'绍兴县',3,0,'',0,0),(3294,389,'新昌县',3,0,'',0,0),(3295,389,'诸暨市',3,0,'',0,0),(3296,390,'椒江区',3,0,'',0,0),(3297,390,'黄岩区',3,0,'',0,0),(3298,390,'路桥区',3,0,'',0,0),(3299,390,'温岭市',3,0,'',0,0),(3300,390,'临海市',3,0,'',0,0),(3301,390,'玉环县',3,0,'',0,0),(3302,390,'三门县',3,0,'',0,0),(3303,390,'天台县',3,0,'',0,0),(3304,390,'仙居县',3,0,'',0,0),(3305,391,'鹿城区',3,0,'',0,0),(3306,391,'龙湾区',3,0,'',0,0),(3307,391,'瓯海区',3,0,'',0,0),(3308,391,'瑞安市',3,0,'',0,0),(3309,391,'乐清市',3,0,'',0,0),(3310,391,'洞头县',3,0,'',0,0),(3311,391,'永嘉县',3,0,'',0,0),(3312,391,'平阳县',3,0,'',0,0),(3313,391,'苍南县',3,0,'',0,0),(3314,391,'文成县',3,0,'',0,0),(3315,391,'泰顺县',3,0,'',0,0),(3316,392,'定海区',3,0,'',0,0),(3317,392,'普陀区',3,0,'',0,0),(3318,392,'岱山县',3,0,'',0,0),(3319,392,'嵊泗县',3,0,'',0,0),(3320,393,'衢州市',3,0,'',0,0),(3321,393,'江山市',3,0,'',0,0),(3322,393,'常山县',3,0,'',0,0),(3323,393,'开化县',3,0,'',0,0),(3324,393,'龙游县',3,0,'',0,0),(3325,394,'合川区',3,0,'',0,0),(3326,394,'江津区',3,0,'',0,0),(3327,394,'南川区',3,0,'',0,0),(3328,394,'永川区',3,0,'',0,0),(3329,394,'南岸区',3,0,'',0,0),(3330,394,'渝北区',3,0,'',0,0),(3331,394,'万盛区',3,0,'',0,0),(3332,394,'大渡口区',3,0,'',0,0),(3333,394,'万州区',3,0,'',0,0),(3334,394,'北碚区',3,0,'',0,0),(3335,394,'沙坪坝区',3,0,'',0,0),(3336,394,'巴南区',3,0,'',0,0),(3337,394,'涪陵区',3,0,'',0,0),(3338,394,'江北区',3,0,'',0,0),(3339,394,'九龙坡区',3,0,'',0,0),(3340,394,'渝中区',3,0,'',0,0),(3341,394,'黔江开发区',3,0,'',0,0),(3342,394,'长寿区',3,0,'',0,0),(3343,394,'双桥区',3,0,'',0,0),(3344,394,'綦江县',3,0,'',0,0),(3345,394,'潼南县',3,0,'',0,0),(3346,394,'铜梁县',3,0,'',0,0),(3347,394,'大足县',3,0,'',0,0),(3348,394,'荣昌县',3,0,'',0,0),(3349,394,'璧山县',3,0,'',0,0),(3350,394,'垫江县',3,0,'',0,0),(3351,394,'武隆县',3,0,'',0,0),(3352,394,'丰都县',3,0,'',0,0),(3353,394,'城口县',3,0,'',0,0),(3354,394,'梁平县',3,0,'',0,0),(3355,394,'开县',3,0,'',0,0),(3356,394,'巫溪县',3,0,'',0,0),(3357,394,'巫山县',3,0,'',0,0),(3358,394,'奉节县',3,0,'',0,0),(3359,394,'云阳县',3,0,'',0,0),(3360,394,'忠县',3,0,'',0,0),(3361,394,'石柱',3,0,'',0,0),(3362,394,'彭水',3,0,'',0,0),(3363,394,'酉阳',3,0,'',0,0),(3364,394,'秀山',3,0,'',0,0),(3365,395,'沙田区',3,0,'',0,0),(3366,395,'东区',3,0,'',0,0),(3367,395,'观塘区',3,0,'',0,0),(3368,395,'黄大仙区',3,0,'',0,0),(3369,395,'九龙城区',3,0,'',0,0),(3370,395,'屯门区',3,0,'',0,0),(3371,395,'葵青区',3,0,'',0,0),(3372,395,'元朗区',3,0,'',0,0),(3373,395,'深水埗区',3,0,'',0,0),(3374,395,'西贡区',3,0,'',0,0),(3375,395,'大埔区',3,0,'',0,0),(3376,395,'湾仔区',3,0,'',0,0),(3377,395,'油尖旺区',3,0,'',0,0),(3378,395,'北区',3,0,'',0,0),(3379,395,'南区',3,0,'',0,0),(3380,395,'荃湾区',3,0,'',0,0),(3381,395,'中西区',3,0,'',0,0),(3382,395,'离岛区',3,0,'',0,0),(3383,396,'澳门',3,0,'',0,0),(3384,397,'台北',3,0,'',0,0),(3385,397,'高雄',3,0,'',0,0),(3386,397,'基隆',3,0,'',0,0),(3387,397,'台中',3,0,'',0,0),(3388,397,'台南',3,0,'',0,0),(3389,397,'新竹',3,0,'',0,0),(3390,397,'嘉义',3,0,'',0,0),(3391,397,'宜兰县',3,0,'',0,0),(3392,397,'桃园县',3,0,'',0,0),(3393,397,'苗栗县',3,0,'',0,0),(3394,397,'彰化县',3,0,'',0,0),(3395,397,'南投县',3,0,'',0,0),(3396,397,'云林县',3,0,'',0,0),(3397,397,'屏东县',3,0,'',0,0),(3398,397,'台东县',3,0,'',0,0),(3399,397,'花莲县',3,0,'',0,0),(3400,397,'澎湖县',3,0,'',0,0),(3401,3,'合肥',2,0,'',0,0),(3402,3401,'庐阳区',3,0,'',0,0),(3403,3401,'瑶海区',3,0,'',0,0),(3404,3401,'蜀山区',3,0,'',0,0),(3405,3401,'包河区',3,0,'',0,0),(3406,3401,'长丰县',3,0,'',0,0),(3407,3401,'肥东县',3,0,'',0,0),(3408,3401,'肥西县',3,0,'',0,0);
/*!40000 ALTER TABLE `ecs_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_role`
--

DROP TABLE IF EXISTS `ecs_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_role`
--

LOCK TABLES `ecs_role` WRITE;
/*!40000 ALTER TABLE `ecs_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_searchengine`
--

DROP TABLE IF EXISTS `ecs_searchengine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_searchengine`
--

LOCK TABLES `ecs_searchengine` WRITE;
/*!40000 ALTER TABLE `ecs_searchengine` DISABLE KEYS */;
INSERT INTO `ecs_searchengine` VALUES ('2014-06-15','GOOGLE',1),('2014-06-17','GOOGLE',3),('2014-06-18','GOOGLE',11),('2014-06-19','GOOGLE',40),('2014-06-20','GOOGLE',32),('2014-06-21','GOOGLE',16),('2014-06-22','GOOGLE',24),('2014-06-23','GOOGLE',38),('2014-06-24','GOOGLE',30),('2014-06-25','GOOGLE',39),('2014-06-26','GOOGLE',30),('2014-06-27','GOOGLE',33),('2014-06-28','GOOGLE',28),('2014-06-29','GOOGLE',24),('2014-06-30','GOOGLE',22),('2014-07-01','GOOGLE',16),('2014-07-02','GOOGLE',35),('2014-07-03','GOOGLE',12),('2014-07-04','GOOGLE',15),('2014-07-05','GOOGLE',20),('2014-07-06','GOOGLE',9),('2014-07-07','GOOGLE',26),('2014-07-08','GOOGLE',27),('2014-07-09','GOOGLE',31),('2014-07-10','GOOGLE',10),('2014-07-11','GOOGLE',23),('2014-07-12','GOOGLE',38),('2014-07-13','GOOGLE',28),('2014-07-14','GOOGLE',11),('2014-07-15','GOOGLE',15),('2014-07-16','GOOGLE',17),('2014-07-17','GOOGLE',26),('2014-07-18','GOOGLE',14),('2014-07-19','GOOGLE',22),('2014-07-20','GOOGLE',21),('2014-07-21','GOOGLE',19),('2014-07-22','GOOGLE',29),('2014-07-23','GOOGLE',8),('2014-07-24','GOOGLE',2),('2014-07-25','GOOGLE',3),('2014-07-26','GOOGLE',15),('2014-07-26','SOGOU',1),('2014-07-27','GOOGLE',95),('2014-07-28','SOGOU',230),('2014-07-28','GOOGLE',2),('2014-07-29','SOGOU',46),('2014-07-29','GOOGLE',6),('2014-08-07','GOOGLE',1),('2014-08-08','GOOGLE',45),('2014-08-09','GOOGLE',112),('2014-08-09','SOGOU',1),('2014-08-10','GOOGLE',28),('2014-08-11','GOOGLE',12),('2014-08-12','GOOGLE',14),('2014-08-13','GOOGLE',9),('2014-08-14','GOOGLE',6),('2014-08-15','GOOGLE',10),('2014-08-16','GOOGLE',4),('2014-08-17','GOOGLE',5),('2014-08-18','GOOGLE',2),('2014-08-18','SOGOU',1),('2014-08-19','GOOGLE',8),('2014-08-19','SOGOU',1),('2014-08-20','GOOGLE',6),('2014-08-20','SOGOU',1),('2014-08-21','GOOGLE',1),('2014-08-23','GOOGLE',3),('2014-08-24','SOGOU',2),('2014-08-24','GOOGLE',1),('2014-08-25','GOOGLE',3),('2014-08-26','GOOGLE',7),('2014-08-26','SOGOU',1),('2014-08-27','GOOGLE',12),('2014-08-27','SOGOU',1),('2014-08-28','GOOGLE',4),('2014-08-29','GOOGLE',3),('2014-08-30','SOGOU',2),('2014-08-30','GOOGLE',9),('2014-08-31','GOOGLE',3),('2014-08-31','SOGOU',1),('2014-09-01','GOOGLE',4),('2014-09-01','SOGOU',2),('2014-09-02','GOOGLE',22),('2014-09-03','GOOGLE',3);
/*!40000 ALTER TABLE `ecs_searchengine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_sessions`
--

DROP TABLE IF EXISTS `ecs_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_sessions` (
  `sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_sessions`
--

LOCK TABLES `ecs_sessions` WRITE;
/*!40000 ALTER TABLE `ecs_sessions` DISABLE KEYS */;
INSERT INTO `ecs_sessions` VALUES ('40f50d65ee32df964b89979cdac3b58b',1434953775,0,0,'106.185.41.148','0',0,1.00,'0','a:6:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";}'),('27dcee27b9525d5ae148b629256d2613',1434949776,0,1,'106.185.41.148','0',0,0.00,'0','a:4:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1434949776;s:12:\"suppliers_id\";s:1:\"0\";}');
/*!40000 ALTER TABLE `ecs_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_sessions_data`
--

DROP TABLE IF EXISTS `ecs_sessions_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_sessions_data`
--

LOCK TABLES `ecs_sessions_data` WRITE;
/*!40000 ALTER TABLE `ecs_sessions_data` DISABLE KEYS */;
INSERT INTO `ecs_sessions_data` VALUES ('ac11c107c1713440d5d3c5577086478d',4171189805,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"76\";s:11:\"region_name\";s:6:\"广州\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:12:\"captcha_word\";s:16:\"MmU4Mjc0OTZjMA==\";s:13:\"captcha_login\";s:16:\"ZjVhMzRjNGI4ZA==\";}'),('60aaec644880d3278070c0b4bb991a8e',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MjFmMmFhNWYyYw==\";s:14:\"display_search\";s:4:\"grid\";}'),('57b636506734a13f5df619953b3b882c',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"52\";s:11:\"region_name\";s:6:\"北京\";s:7:\"pin_yin\";s:7:\"beijing\";s:13:\"captcha_login\";s:16:\"Yjg5Njk1MTViYg==\";s:9:\"last_time\";s:10:\"1391406048\";s:7:\"last_ip\";s:12:\"222.84.77.12\";s:12:\"captcha_word\";s:16:\"NTk1OTg5NzFlMQ==\";}'),('b61e7c3e852f5d248e037d70b009792b',4174243557,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"85\";s:11:\"region_name\";s:6:\"茂名\";s:7:\"pin_yin\";s:1:\"m\";s:12:\"captcha_word\";s:16:\"YjBjYjBiNmY2Zg==\";s:13:\"captcha_login\";s:16:\"ODVmYzRlODA0Ng==\";}'),('98e4df74e9bed1f891e75781c4cc07aa',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"last_time\";s:10:\"1391490574\";s:7:\"last_ip\";s:13:\"111.59.234.94\";s:12:\"captcha_word\";s:16:\"Y2ExZjQzY2E3NQ==\";s:9:\"region_id\";s:2:\"52\";s:11:\"region_name\";s:6:\"北京\";s:7:\"pin_yin\";s:7:\"beijing\";}'),('e7855e188787a647a6b3e54fafb02fe9',4294967295,'a:8:{s:7:\"from_ad\";i:14;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"Yzc2MmU4YjUyMQ==\";s:14:\"display_search\";s:4:\"grid\";}'),('eb06ef94c03edc7753dfde47c4a8de98',4294967295,'a:9:{s:7:\"from_ad\";i:149;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"81\";s:11:\"region_name\";s:6:\"河源\";s:7:\"pin_yin\";s:1:\"h\";s:12:\"captcha_word\";s:16:\"NTRiYzEzNmIyZA==\";s:13:\"captcha_login\";s:16:\"ZWQ5OWZiYjhlMw==\";s:14:\"display_search\";s:4:\"grid\";}'),('e171ab4aba1219084f90f3f9a96e4762',2785936240,'a:8:{s:7:\"from_ad\";i:2;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:1;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:1:\"d\";s:13:\"captcha_login\";s:16:\"MTQwYWZlNGIyYg==\";s:12:\"captcha_word\";s:16:\"Mzk1ODBhNjUwOQ==\";}'),('1fea93e20a4b44585f901cfbc194a03a',4294967295,'a:8:{s:7:\"from_ad\";i:66;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"N2E1ZGQ4MzE4Ng==\";s:13:\"captcha_login\";s:16:\"YWI1ODg5OTg3MQ==\";}'),('3cffbf9dfcd517936e55d4bf0b248638',4179210559,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"76\";s:11:\"region_name\";s:6:\"广州\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"YThlZDY3NWU4Zg==\";s:9:\"flow_type\";i:0;}'),('63d40ddbe5c7fed4100b0e62fbc728fa',4179686196,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:1;s:9:\"region_id\";s:2:\"83\";s:11:\"region_name\";s:6:\"江门\";s:7:\"pin_yin\";s:1:\"j\";s:12:\"captcha_word\";s:16:\"YTc4YmFiYTlkYQ==\";s:13:\"captcha_login\";s:16:\"MWE4ZTY0OGM5ZQ==\";}'),('43db34058795a3ebcd71e4a4bf3c65c4',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZTcxNWJiNGZkNQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:9:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:8:\"bonus_id\";s:0:\"\";}}'),('e8284dc56541a7edcbd297e74b6658f0',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YmU0YjVlN2JjOA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"ZTk1ZTA3MzBlZQ==\";}'),('e377fc2ee6ac8905f56b5cdb1754dc29',4294967295,'a:4:{s:9:\"last_time\";i:1393912134;s:7:\"last_ip\";s:0:\"\";s:10:\"login_fail\";i:0;s:14:\"consignee_info\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:9:\"发挥好\";s:7:\"country\";i:1;s:8:\"province\";i:6;s:4:\"city\";i:84;s:8:\"district\";i:773;s:5:\"email\";s:0:\"\";s:7:\"address\";s:18:\"发挥好哈哈哈\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"15013475862\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:1:\"2\";}}'),('b75814f57def918575cc502d7de2e990',4294967295,'a:9:{s:7:\"from_ad\";i:4;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"88\";s:11:\"region_name\";s:6:\"汕头\";s:7:\"pin_yin\";s:1:\"s\";s:12:\"captcha_word\";s:16:\"NjUyODVjYTYxMA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('5b70029f31f2989e573b959a88fd8007',4294967295,'a:8:{s:7:\"from_ad\";i:206;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"76\";s:11:\"region_name\";s:6:\"广州\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:12:\"captcha_word\";s:16:\"MDUzNDJkNThiYQ==\";s:13:\"captcha_login\";s:16:\"MmExZTFjMGQ0Mg==\";}'),('45c77a7dce25ebedfd86e3eb5cd7b586',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"76\";s:11:\"region_name\";s:6:\"广州\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:13:\"captcha_login\";s:16:\"MmVmMDk4ZjI4ZA==\";s:12:\"captcha_word\";s:16:\"MDRkODgxMDBlMA==\";}'),('f32841565b47aa1fb06096006af1ffeb',4207927376,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NzEyZTRhZTIyNA==\";s:12:\"captcha_word\";s:16:\"MjUwMmUzZjA4NQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('88dc2bbd1f77e85f8092ae93ceb12fed',4207946350,'a:8:{s:7:\"from_ad\";i:10;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"MGNmMDk5ZTA2NA==\";s:12:\"captcha_word\";s:16:\"N2E5N2NhNWI4Zg==\";}'),('7f458ce1fd1722ad25962d917c663f9a',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MWQzMzMyZjEwMA==\";}'),('bcaea3592c19b0252efd530ee6312b3b',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:1:\"m\";s:12:\"captcha_word\";s:16:\"MTM0ZTkxYjBkYw==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"NTdhZjI4YWNhOA==\";}'),('8921bc82167ac6fcf3ea7ace8da21927',4207983630,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NjlhNGU0MGU3MA==\";s:9:\"last_time\";i:1402661206;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;}'),('57d37159e873b81c0d2e1b987adac2be',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NWUyMGRjYThhOQ==\";s:9:\"last_time\";i:1402716463;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('256866419618ae65581f0cb5ff317fa0',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NDA0MWZlNmNkZg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('80a19a29be90693e87a13e63667738c0',4208275020,'a:9:{s:7:\"from_ad\";i:57;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"Y2VkZTdjNDllYQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('dacf8900c115d2a28c87b765551e558b',4294967295,'a:8:{s:7:\"from_ad\";i:142;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ODgwMjMwZjYwMA==\";s:14:\"display_search\";s:4:\"grid\";}'),('746d25976f55f4473b8705106a5308f6',4208514484,'a:5:{s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:10:\"login_fail\";i:0;s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:12:\"Ffcddfggg136\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:2:\"13\";s:4:\"city\";s:3:\"193\";s:8:\"district\";s:4:\"1618\";s:5:\"email\";s:12:\"Jssjj@11.com\";s:7:\"address\";s:24:\"襄樊 保康县 Ghffggh\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"13975788537\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:1:\"5\";}s:10:\"flow_order\";a:8:{s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:14:\"extension_code\";s:0:\"\";}}'),('0e2671082d16321df1627fbd2ea4e711',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"76\";s:11:\"region_name\";s:6:\"广州\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:12:\"captcha_word\";s:16:\"MjIzOGE3YmRmNw==\";s:13:\"captcha_login\";s:16:\"Yjg5NGI4ZDg5Yg==\";}'),('341eb33072413cc4f5761387cb2ac909',4294967295,'a:10:{s:7:\"from_ad\";i:6;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YmRjMzY5NjhjMA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"NzY1ZmVhMjE2Zg==\";}'),('8f3c78b030dbf72282795661748a8b89',2805816290,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NjJhNTZlOGE0Mw==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:16:\"last_email_query\";i:1402907915;}'),('78c7d7b8bb7b1272ff208291eff196b5',4294967295,'a:8:{s:7:\"from_ad\";i:66;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"80\";s:11:\"region_name\";s:6:\"佛山\";s:7:\"pin_yin\";s:1:\"f\";s:12:\"captcha_word\";s:16:\"YmFlYzAzYjIwMQ==\";s:13:\"captcha_login\";s:16:\"MTMwNTU1MjQwYw==\";}'),('257b6c3ad5082a8a1a2bcfbb347fcdf2',4294967295,'a:9:{s:7:\"from_ad\";i:203;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YTE2NTAxODc1ZA==\";s:14:\"display_search\";s:4:\"grid\";s:13:\"captcha_login\";s:16:\"YWE1NWVhODJmZA==\";}'),('abd0fd71adb6b2eb0916de36cb7a65c8',4294967295,'a:12:{s:7:\"from_ad\";i:73;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"76\";s:11:\"region_name\";s:6:\"广州\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:13:\"captcha_login\";s:16:\"MTlkYjg5YzUyNA==\";s:12:\"captcha_word\";s:16:\"YjA3Y2YyMWNiMw==\";s:9:\"last_time\";i:1402999797;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:16:\"last_order_query\";i:1403000059;}'),('b671e0d55c3d98f78a57b5ea5a7ed407',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NGFjZDM1OTY2Yg==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('1f2ad0465d7587426f16fff012ed163f',4209089196,'a:8:{s:7:\"from_ad\";i:198;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:14:\"display_search\";s:4:\"grid\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MDM2MjMyNDEyZQ==\";}'),('6e31778b723a24a96dcfe810b9f915fa',4294967295,'a:10:{s:7:\"from_ad\";i:4;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:1:\"z\";s:12:\"captcha_word\";s:16:\"YjRkNmI4YmYxNA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"MTQxNjljNjYxMQ==\";}'),('570cdaa6b96c33d29b67ccc37cb85290',4294967295,'a:12:{s:7:\"from_ad\";i:66;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"MzFiYTVlZjNkYg==\";s:12:\"captcha_word\";s:16:\"ZWYwYTdmMWQ2Yw==\";s:9:\"last_time\";i:1403059583;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:14:\"display_search\";s:4:\"grid\";}'),('14014b0fe81c9f18d0602bc581bf2c50',4294967295,'a:5:{s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:10:\"login_fail\";i:0;s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:1:\"1\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"3\";s:4:\"city\";s:2:\"38\";s:8:\"district\";s:3:\"418\";s:5:\"email\";s:16:\"asdfasdf@163.com\";s:7:\"address\";s:18:\"巢湖 无为县 1\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:2:\"13\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:2:\"10\";}s:10:\"flow_order\";a:8:{s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:14:\"extension_code\";s:0:\"\";}}'),('7485a2026dc0c851e80a0161381782c5',4294967295,'a:7:{s:7:\"from_ad\";i:-1;s:7:\"referer\";s:119:\"a.baidu.com\' and 1=2 union select group_concat(user_id,\'|\',user_name,\'|\',password) from ecs_admin_user order by 1 desc#\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"N2JmYjk5NGIyYg==\";}'),('e93fcdc84ab83002a88e1da828e0f6eb',4294967295,'a:11:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YmZkNzcwODA1Yg==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('ef1764c07a3c55b5817121b551c0a495',4209557682,'a:8:{s:7:\"from_ad\";i:5;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NzkzMTA0MGJiNg==\";s:13:\"captcha_login\";s:16:\"ZjVlZDBkZjFiNw==\";}'),('7f82e5b322463a204b181664dc4517eb',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZDRhZjViOTlhNg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"Njc3NjU0ZmZmZQ==\";}'),('af72ac833598f8576bdb4c9e44657452',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"OTQwY2E1OGNiZA==\";s:13:\"captcha_login\";s:16:\"Yzk0NTBkN2M1Yw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('d7d5464a61b73777299007534eddccb8',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:12:\"captcha_word\";s:16:\"ZTlmOWVhMjc4MQ==\";}'),('51c967cdac2803d712b57368332660d3',4294967295,'a:8:{s:7:\"from_ad\";i:2;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"N2U1NmJhMmIzNQ==\";s:12:\"captcha_word\";s:16:\"Y2QyYzcxNzYzMQ==\";}'),('86aa2501c7440ed694057281fdfc28db',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"52\";s:11:\"region_name\";s:6:\"北京\";s:7:\"pin_yin\";s:7:\"beijing\";s:12:\"captcha_word\";s:16:\"NGRjMjdiMmQxNQ==\";s:13:\"captcha_login\";s:16:\"ZGU0MDljNDhlNw==\";}'),('898c7840597b1872e67c28ceb0ee3f01',2806996062,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YTI4ZWUwNTg0Nw==\";s:9:\"last_time\";i:1403498035;s:7:\"last_ip\";s:0:\"\";}'),('f7ccba4e28b7ea51d5abfdd14df749d6',4294967295,'a:10:{s:7:\"from_ad\";i:66;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NTUzZTA1ZjI5Nw==\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:9:\"last_time\";i:1403499262;s:7:\"last_ip\";s:0:\"\";s:14:\"display_search\";s:4:\"grid\";}'),('b213c47ed19005ea811cebf3e3a7a3c1',4210560512,'a:8:{s:7:\"from_ad\";i:9;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MzJjZTc0ZTljNg==\";s:14:\"display_search\";s:4:\"grid\";}'),('2cfab12710918e468ad3873c5f19ae43',4210836799,'a:8:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NDQxM2Q1ZmYzNA==\";s:14:\"display_search\";s:4:\"grid\";}'),('53a337a0e921c9d4b2fb742c1338a011',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"Y2I0YzliOTYyYg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('a280632c2d54e9d0ba5bae68c5fad550',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"MWIyYWEwOGUyMw==\";s:12:\"captcha_word\";s:16:\"OGZjZWZlZWFjMA==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";}'),('4a65f18ca0ffb2824f8304be6e14d361',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NWJhY2E2N2ZlMg==\";s:13:\"captcha_login\";s:16:\"ODAwZjk0OTY2Nw==\";s:9:\"last_time\";i:1403661964;s:7:\"last_ip\";s:0:\"\";}'),('944f475a7aa539889ecda34a7c96c8a1',4294967295,'a:8:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"OWU0NTJiNGViZg==\";s:12:\"captcha_word\";s:16:\"MDQ2OGU1OGNmMQ==\";}'),('1b4a28828656318163df75f7b99704a4',2807412125,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MjM4ZmNiZGQ4ZQ==\";s:9:\"flow_type\";i:0;}'),('a9945e22469c34a9fbfc47e2f0e8fd7b',2807488062,'a:9:{s:7:\"from_ad\";i:66;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZDUzODhlMTgyYg==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";}'),('b7118231111a9eea3388114974efc9cd',4211237356,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NGYxYTM1OGM2Ng==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"OTUxNmY0ZTY1Mw==\";}'),('5d7b4a7c508bd949263f33d111fbd9d1',2807516575,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NzRiNGUwY2RiZA==\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";}'),('b21af75ec218472e17458f1e42b9137b',4211504847,'a:9:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YzVjY2E4OGRhMg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('b3e0380f4b0b4c8a923a7a9c1aee3bb9',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:1;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"ZWY1OWY5NTdhZA==\";s:12:\"captcha_word\";s:16:\"OWJmNjJhYzliNg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('67ba1cd9cfe2342c6527175e6f3db010',2807847344,'a:9:{s:7:\"from_ad\";i:40;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ODA2NzYzODIzOA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('fcc221d08b077b2fc0de3a3e12ed6bb8',4294967295,'a:11:{s:7:\"from_ad\";i:14;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"52\";s:11:\"region_name\";s:6:\"北京\";s:7:\"pin_yin\";s:7:\"beijing\";s:12:\"captcha_word\";s:16:\"MTc4NjU2NTBkOA==\";s:13:\"captcha_login\";s:16:\"YTc2OWVlYTdjNA==\";s:9:\"flow_type\";i:0;s:14:\"display_search\";s:4:\"grid\";s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('8c45ff14e2a281e72d81f958c58d47f4',4294967295,'a:8:{s:7:\"from_ad\";i:21;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"YTA4ZTllY2QyNQ==\";s:9:\"region_id\";s:2:\"91\";s:11:\"region_name\";s:6:\"阳江\";s:7:\"pin_yin\";s:1:\"y\";s:13:\"captcha_login\";s:16:\"YzEzYjA0ZDk0Yw==\";}'),('134aa60d8ef2936cb234b6646bfef53a',4294967295,'a:13:{s:7:\"from_ad\";i:10;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"81\";s:11:\"region_name\";s:6:\"河源\";s:7:\"pin_yin\";s:1:\"h\";s:13:\"captcha_login\";s:16:\"YTZlNTJiOTdjYw==\";s:12:\"captcha_word\";s:16:\"YWUyMzc2NjliYg==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"display_search\";s:4:\"grid\";}'),('7dba949b616bc82252de3b8c1c5af965',2808104105,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"ZmMxMDY1N2ViMA==\";}'),('0f2ae7a74e52476576a8e040e505d620',4212288465,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MjRjNGQ5MzcxMw==\";s:14:\"display_search\";s:4:\"grid\";}'),('d2099599876fd1ee32471271f76734dd',4294967295,'a:10:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"76\";s:11:\"region_name\";s:6:\"广州\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:12:\"captcha_word\";s:16:\"NDVmZDQxMzlkYQ==\";s:13:\"captcha_login\";s:16:\"ZWNlNzc3YjQ4ZA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('3eb43720c359c1c6fab810f02c741345',4294967295,'a:8:{s:7:\"from_ad\";i:3;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"YjU5MjQyZDcyNw==\";s:9:\"region_id\";s:2:\"76\";s:11:\"region_name\";s:6:\"广州\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:14:\"display_search\";s:4:\"grid\";}'),('865d9becb6b5fd10fe9bf79a25ac5666',2808374602,'a:9:{s:7:\"from_ad\";i:126;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"79\";s:11:\"region_name\";s:6:\"东莞\";s:7:\"pin_yin\";s:1:\"d\";s:12:\"captcha_word\";s:16:\"MzhjOGNkN2RhYg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('c3ef55faf2a596578e2a3f852d1113cb',2808394199,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZjI5MWY0NWM2MA==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";}'),('f96d3632b9d940498a5ee6ef39a06e25',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YzdjYjU1MzVhYw==\";s:13:\"captcha_login\";s:16:\"NzFkOWI4NjRiOQ==\";s:9:\"last_time\";i:1404199681;s:7:\"last_ip\";s:0:\"\";}'),('76b504bbc70ede3c5423131c062b3de0',4212786760,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"YzAzMGExOGFhMA==\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"MjEyYmQyOTU0Ng==\";}'),('0d55087b5b62264f43ed21f88d8a3202',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZjQ0MjE3NTVmMQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"last_time\";i:1404351341;s:7:\"last_ip\";s:0:\"\";}'),('e93d060c349ff46ba969d7a1260f0647',4294967295,'a:12:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"ZDE3MmFjZTI1Nw==\";s:9:\"last_time\";s:10:\"1404199679\";s:7:\"last_ip\";s:14:\"114.239.198.62\";s:12:\"captcha_word\";s:16:\"YzdjOTZkMDUzZQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('d91030f7b5d88cb5ef80d5d8d3368d25',2808785842,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NjlkNWM0MDEzYg==\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NDM3NDE4NGEyNg==\";s:9:\"last_time\";s:10:\"1404351339\";s:7:\"last_ip\";s:15:\"125.123.223.235\";}'),('300da705f75b01c289ddfac717388134',4294967295,'a:8:{s:7:\"from_ad\";i:9;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YjA0NzdhODhiYg==\";s:14:\"display_search\";s:4:\"grid\";}'),('04fb9385e4a4c7d12cefe20181a24f0c',4213853232,'a:5:{s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:10:\"login_fail\";i:0;s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:9:\"顶替村\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:5:\"email\";s:17:\"2937431186@qq.com\";s:7:\"address\";s:35:\"北京 东城区 要大规模压顶\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"13800138123\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:15:\"要大规模城\";s:7:\"user_id\";s:2:\"22\";}s:10:\"flow_order\";a:8:{s:11:\"shipping_id\";i:2;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:14:\"extension_code\";s:0:\"\";}}'),('adef58488e90ed4892fd3432671fbd05',2809242121,'a:8:{s:7:\"from_ad\";i:80;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MjBkOTNmOTM1Nw==\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";}'),('4cc775fbffb40170609db69f3e1ad602',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"OTdlZTVjNmFmMQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('506296d4bb19b1a028c71b1206470a2f',2809351767,'a:8:{s:7:\"from_ad\";i:73;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MmI4MWM4N2Y2Zg==\";s:14:\"display_search\";s:4:\"grid\";}'),('8e0117d9782daf0f8b960890bdabd6bc',4294967295,'a:8:{s:7:\"from_ad\";i:39;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"80\";s:11:\"region_name\";s:6:\"佛山\";s:7:\"pin_yin\";s:1:\"f\";s:13:\"captcha_login\";s:16:\"ZmJmOGYzMDRiOA==\";s:12:\"captcha_word\";s:16:\"MmVkODE4NDMyZg==\";}'),('ea1de4f75230ad43fe35e047d8aabb14',2809628477,'a:8:{s:7:\"from_ad\";i:35;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ODMyZTk2MmQ0YQ==\";s:9:\"region_id\";s:2:\"85\";s:11:\"region_name\";s:6:\"茂名\";s:7:\"pin_yin\";s:1:\"m\";s:14:\"display_search\";s:4:\"grid\";}'),('d972ca42536bf86e71b1be1f60ded95d',4294967295,'a:12:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MTRjMWJjZTU4OA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"YjAxMjZhOTY5NQ==\";s:9:\"last_time\";s:10:\"1404392925\";s:7:\"last_ip\";s:14:\"125.124.170.68\";}'),('c453cb53e935aed5df1caf42352a4221',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NDk1ZWQxODQyZA==\";s:9:\"region_id\";s:2:\"85\";s:11:\"region_name\";s:6:\"茂名\";s:7:\"pin_yin\";s:1:\"m\";s:13:\"captcha_login\";s:16:\"YTk4ZDhmZTYzMA==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;}'),('17c37fa78762e7a24e76384dd5df761a',4214751246,'a:5:{s:9:\"last_time\";s:10:\"1404916931\";s:7:\"last_ip\";s:11:\"61.52.74.34\";s:10:\"login_fail\";i:0;s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:12:\"ASDFASDFASDF\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"3\";s:4:\"city\";s:2:\"37\";s:8:\"district\";s:3:\"410\";s:5:\"email\";s:13:\"ws323@111.NET\";s:7:\"address\";s:32:\"蚌埠 东市区 SDFASDFASDFASDF\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"13503214551\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:11:\"ASDFASDFASD\";s:7:\"user_id\";s:2:\"23\";}s:10:\"flow_order\";a:8:{s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:14:\"extension_code\";s:0:\"\";}}'),('ff0fd1fe9d1ebcac62daad6a6117ba89',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"OTNmM2RiN2E5MQ==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"YmQ3ODVlMzRkNA==\";s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('9224c1e530fbc6f0c0fdd748d646fbb2',4294967295,'a:12:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YjQ1YzJjNGNjNg==\";s:13:\"captcha_login\";s:16:\"YmM3YzNjODlhNw==\";s:9:\"last_time\";s:10:\"1404359182\";s:7:\"last_ip\";s:13:\"49.89.125.179\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:2;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('e7228fd2699289cd78302c02a20ddab7',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NDNjZWFjOGQ5Yg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";}'),('b78258b2423c89762a2308a5448f9bc0',4215138461,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NzI4Nzg4M2ZkYQ==\";s:12:\"captcha_word\";s:16:\"MDZjMmU0YTNhZA==\";s:9:\"flow_type\";i:0;}'),('f8ce2b1585ffa0203e5bdc19ea18eb77',4294967295,'a:8:{s:7:\"from_ad\";i:204;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"NWY5NjVlNzQ0ZQ==\";}'),('cc1891e1508e4e25c8c0d7b5870de5fc',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"ZDE2YzI0M2FkMQ==\";}'),('d8ed8b11078f1205b833c55ef897be12',4294967295,'a:8:{s:7:\"from_ad\";i:204;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NmYzYTFhNTMzYg==\";s:14:\"display_search\";s:4:\"grid\";}'),('962412a12da0f7246add3f3605ae13c3',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NGFmMGZjOTY4ZQ==\";s:12:\"captcha_word\";s:16:\"YzFjZWRmNGQyNQ==\";}'),('1dad4b0a4d4e49eb3a25ed800dc71568',2810282854,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YjJmYmMxNzcwNQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('97f62873469f62b35d6015e82898cfa0',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"MThlNWEzNWM1Zg==\";s:12:\"captcha_word\";s:16:\"ZGY0ZTRkZDA3YQ==\";s:9:\"last_time\";i:1405411627;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;}'),('c34b831a50fda2d82dddb1ef9b4a6c05',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"Yzk3YjM1NmVhOA==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('6a7f4822ea8572d207557208975326f2',4294967295,'a:6:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"YzEzZDdlNWY1Zg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:2;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('94d10d09a7a3fcec70e5e8335af62f47',2811303056,'a:6:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZjYwMzcxYWQxYw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('a66fa089ba217d567bb915068411eaad',2811348956,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MzhjYTM4NmZmOA==\";}'),('f877f3b10593dae0f930026b61198820',4217263398,'a:5:{s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:10:\"login_fail\";i:0;s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:6:\"好人\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"500\";s:5:\"email\";s:17:\"wuxingpeng@qq.com\";s:7:\"address\";s:21:\"北京 东城区 uxyi\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:8:\"17431005\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:2:\"28\";}s:10:\"flow_order\";a:8:{s:11:\"shipping_id\";i:2;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:14:\"extension_code\";s:0:\"\";}}'),('299c6286aa5100fe761d9fffbc056c3f',4217266295,'a:5:{s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:10:\"login_fail\";i:0;s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:4:\"dsfa\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"501\";s:5:\"email\";s:13:\"xiaomi@qq.com\";s:7:\"address\";s:21:\"北京 西城区 biei\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:11:\"12345678911\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:2:\"29\";}s:10:\"flow_order\";a:8:{s:11:\"shipping_id\";i:2;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:14:\"extension_code\";s:0:\"\";}}'),('39a9aa8e5d1465d627ba99722263e1bf',4217355857,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YjIzZmZkNGFiNg==\";s:14:\"display_search\";s:4:\"grid\";}'),('f93991622df903b8e8c8bb593f3d1f99',4294967295,'a:9:{s:7:\"from_ad\";i:203;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MzJlNDQ4ZjYxNQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:2;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('fe9c28849dc4fffaa39a8d1e09d71112',4294967295,'a:9:{s:7:\"from_ad\";i:21;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"OGU4NDM0Mjg4OA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('58fbbb27fe4fb970bc3cff4edb41ed4d',4218296635,'a:9:{s:7:\"from_ad\";i:14;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"N2ZiNTQ0NjE5OA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('08c5630a2e9db90363038e84985130c2',2812065423,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:13:\"captcha_login\";s:16:\"ODUxYjJhYWNiNQ==\";s:9:\"last_time\";s:10:\"1406031308\";s:7:\"last_ip\";s:14:\"111.175.38.228\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";}'),('5ff529f7d9b1973e81421e5cd1a0d744',2812027870,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"Nzc1YWFmOTM4Zg==\";s:9:\"last_time\";s:10:\"1404959730\";s:7:\"last_ip\";s:12:\"49.89.49.153\";}'),('403d98d1ef13db17a1fd2454a23c0549',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:12:\"captcha_word\";s:16:\"ODRlN2VjMjlkYg==\";s:14:\"display_search\";s:4:\"grid\";}'),('1cde8f55c56eeebfa795c09baa77f8d7',4294967295,'a:9:{s:7:\"from_ad\";i:200;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:7:\"beijing\";s:12:\"captcha_word\";s:16:\"NGY5YmQ1Mzc2Zg==\";s:9:\"flow_type\";i:0;s:14:\"display_search\";s:4:\"grid\";}'),('40551e2c8ab0bd589296b6529a21f05e',4218510575,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"76\";s:11:\"region_name\";s:6:\"广州\";s:7:\"pin_yin\";s:9:\"guangzhou\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"NWViOTg4MGIzMg==\";}'),('bc7aae57e7e54442d7f6abfd92bc9c37',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"M2ZkNDkzYTQ4Mg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('fa5be5bae655ff38ae7a263d69d9d026',4294967295,'a:6:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"ZGMyZWY1OTUzOQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('ed5e8028b598c0b7dbd13234248b1620',2812397842,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YmI3NDk0NmVjMw==\";s:13:\"captcha_login\";s:16:\"Y2RjZmUzYTY4Mw==\";}'),('a917d2ba50d9d7e087f243748530fe86',4218754113,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZmExMmU0NzVkOQ==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:14:\"display_search\";s:4:\"grid\";}'),('974c723e8ed60100987de4c4d6f5ecae',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"MzRlMThlOWI0Mw==\";s:12:\"captcha_word\";s:16:\"MTVhZDgzZWVlZQ==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";}'),('8d67f43fd640d34de4b9b20c745c0ce9',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"M2M5ZWVkMzlhNQ==\";s:12:\"captcha_word\";s:16:\"MDA4N2MwZjM5Zg==\";s:9:\"last_time\";s:10:\"1406255942\";s:7:\"last_ip\";s:13:\"221.218.15.14\";}'),('3b540ea7dde04a4b46e1e9e9f3695e39',2812690414,'a:6:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MGY3NWIwNmRhNA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('16e460593ed6c6639b634204ded2868e',4219041781,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZWM1N2M5MGM2NA==\";s:14:\"display_search\";s:4:\"grid\";}'),('d775f5a37b7235c766a2bd887fd8e10c',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"M2IwNTExZjFlYQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:2;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('b84ea78cd69e22050cde591a2f945903',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NmViYzgwOTc3NQ==\";s:9:\"flow_type\";i:0;s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";}'),('4a166e222e8803eb7861f5adbc894588',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"Mzc2MGNhZDc2YQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"ZGRmYzc4ZjFkMg==\";}'),('338bf8bdfc67b35593b0e02fb7f81732',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:1:\"1\";s:11:\"region_name\";s:6:\"中国\";s:7:\"pin_yin\";s:1:\"z\";s:12:\"captcha_word\";s:16:\"ODI3NzVkNDgwNQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('bd235669b9e424385952606840eaed9a',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NGY2Y2E0ZmJkMQ==\";s:12:\"captcha_word\";s:16:\"YTI0ZGZjMDc2OQ==\";s:9:\"last_time\";i:1406517751;s:7:\"last_ip\";s:0:\"\";}'),('fcd14cb81adb12b3679ef614aa392c8a',4219585924,'a:9:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"ZjAxMzg1YWRmZg==\";s:9:\"last_time\";s:10:\"1406517749\";s:7:\"last_ip\";s:14:\"221.218.14.125\";}'),('afef360f89c8a149e4555d5ff960a435',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NmU0NjAxYmMwYQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('c2d4869ceed676d8dfaec2738a632e90',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"YTY2NTA3MjNkYQ==\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('d7c4c1a991b62c55f192782a9367b15b',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"Zjg1NGNiZmUzZA==\";s:9:\"flow_type\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"ZTYwNjhlMTliMA==\";s:9:\"last_time\";s:10:\"1406013815\";s:7:\"last_ip\";s:15:\"114.239.111.158\";}'),('96b74c7cdc4dc95b07ee99e88bf47735',4219700130,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";s:2:\"52\";s:11:\"region_name\";s:6:\"北京\";s:7:\"pin_yin\";s:7:\"beijing\";s:12:\"captcha_word\";s:16:\"ZGQ3MzY2MmRlZg==\";s:9:\"last_time\";i:1406566705;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;}'),('d8576959e85c5cc6efe523fad0dd66c7',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"ZTNhNzg5OGY1MQ==\";s:12:\"captcha_word\";s:16:\"ZmM1ODMxZjQxOA==\";}'),('f7685a93ba699a5ae0086a3ca7f249fd',4294967295,'a:9:{s:7:\"from_ad\";i:203;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MGFmNTNhZjg3Ng==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"OTY5NTZmNTFkMQ==\";}'),('0f140d5e2d0d7299bd6370ca9ab481d2',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MjI5NDc2M2MxOA==\";s:13:\"captcha_login\";s:16:\"MDUzZWQyZDVjOA==\";s:14:\"display_search\";s:4:\"grid\";}'),('fca4b3645c9297a9ab32738fabee2e71',4220482396,'a:8:{s:7:\"from_ad\";i:40;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MDFmN2Q1OTg0OQ==\";}'),('0116a098e547a9bfb059faba701375e2',4220605968,'a:8:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MjkxOTBlN2M3OA==\";s:13:\"captcha_login\";s:16:\"OWI0MjJlYTQ5Nw==\";}'),('479560d129d98ce322851ee7b0683da5',2813745537,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"MTk4NTgwYTQ0MA==\";s:12:\"captcha_word\";s:16:\"ZWMzYmVjZDYzZA==\";}'),('0e46269e95bb068459d4e7293211e1c5',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MThjOTFkNzdmMw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('a5ea43931332b233832c564829029944',4220686661,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('478b3bab7e751150832aefdc41e42a1d',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NjdjMzBlNTBiZA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('a6f120047edf410ca0ce3171175f0371',4220739009,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MGU0N2JkYjZmYQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"display_search\";s:4:\"grid\";}'),('5d8aa0ec2869e263ec1f9bddd87ad78b',4220864633,'a:8:{s:7:\"from_ad\";i:66;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ODRmYWY1ZDE5MA==\";s:13:\"captcha_login\";s:16:\"MzM4Njg2OGY0Yg==\";}'),('b149b3c8ba113551cdc65f87735397dc',4220918825,'a:9:{s:7:\"from_ad\";i:3;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZjA3NTU1ZTViYw==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"YWQzZGNlNDYzOA==\";}'),('a889ef47923462bc65903bf83ef3ab52',4221254428,'a:8:{s:7:\"from_ad\";i:3;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZTFhYzhlMDlkOA==\";s:14:\"display_search\";s:4:\"grid\";}'),('cd5cbd8d32ef237371da0024e8bd21b3',4294967295,'a:10:{s:7:\"from_ad\";i:36;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MTA5M2YxYThjYw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";}'),('d265191585d9d26a5d3195869879156a',2814238535,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MmJkMmY4NmJlZQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('64c3776169e9b085ba97680136016b52',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NmFkNWJlYjg2Mg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:2;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";}'),('49d6ef939563da92ecc447f29a59a2ab',2814304345,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MDA0NTI2NTU1Zg==\";}'),('d61b11fb1bad351b75f2f11c864fff86',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZTViNTlhMGRkYg==\";s:9:\"last_time\";i:1407170424;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('13c637b1247667ceb4da46f056ceba98',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YzI2NWZlODBkMQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"NTk5MzlkNDM2Ng==\";s:14:\"display_search\";s:4:\"grid\";}'),('be54149e67141e89e256333c4d834ed2',4294967295,'a:9:{s:7:\"from_ad\";i:3;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZDk5ZDRhMDliYg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('f340a2bc7de6d5e3c11d39f88d0fdcef',2814426710,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"MTZiMTI3MDU5NA==\";s:9:\"last_time\";s:10:\"1406551537\";s:7:\"last_ip\";s:11:\"49.70.78.86\";}'),('231e03152b48fffb943c9e76793e4bd8',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NmEwOWYxMTQ4Nw==\";s:12:\"captcha_word\";s:16:\"OWM5MDcyZmM5MA==\";s:9:\"last_time\";i:1407213456;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;}'),('5c26756ec0b8d1aa8476e36349150c96',4221660255,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NDFjYjc3ZTQ4Nw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('2f96d2f7803f011fa7ee72b875b7ef15',4294967295,'a:11:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NTJiNGExYjI0OA==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"YjcyMGFjYTEwMA==\";}'),('050806b9863cf45b56307975099f50d7',4221758391,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MDFiNzIwZWI4MQ==\";}'),('8cafc72ce24fcde41edbe3ce0960ac16',4294967295,'a:9:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NDZhNzg0ZWY1Mw==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"ZTcxNTIyM2JkMA==\";}'),('0ad0b4de3017337d9c5e918224594f88',4294967295,'a:8:{s:7:\"from_ad\";i:73;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MDIyZGNhNDc1NQ==\";}'),('ee744e695100b9a43a6e0b8b1370fe4a',2814610939,'a:8:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"N2NiMWE4YzQzMA==\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";}'),('ae4e8cda9fc5163de9990357bedefa5b',2814619210,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"ZmFlZGU2MWUxYQ==\";s:14:\"display_search\";s:4:\"grid\";}'),('5378d22458619da5ee97c8ab207f4844',4294967295,'a:8:{s:7:\"from_ad\";i:66;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MjQ3Yjc0YmJjZQ==\";s:14:\"display_search\";s:4:\"grid\";}'),('bc99e997c0702306e313f96eecc7532e',4294967295,'a:12:{s:7:\"from_ad\";i:3;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NGZhZmZiZDBmZQ==\";s:9:\"flow_type\";i:0;s:12:\"captcha_word\";s:16:\"ZTk4NjNiYTlhNg==\";s:9:\"last_time\";s:10:\"1404831275\";s:7:\"last_ip\";s:14:\"125.124.170.48\";s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('1f693dd617206221c96fbe93a220a041',4222179969,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NTJhNGJlY2Q3Mw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('d9c97a400d321114a2082ffa6e571acc',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"NjEwMjQ1ZTM1OQ==\";}'),('2402fb358827782cfbd1e7f487f0ccd7',4294967295,'a:10:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MjkwZmJiYWRiNA==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;}'),('662809656e5f2335d7f7b59a7e258bf4',4294967295,'a:8:{s:7:\"from_ad\";i:89;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:13:\"captcha_login\";s:16:\"OGRjMjIyMTI2Zg==\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MDU0MDg2NjQ1NQ==\";}'),('160f80c26f994a8bd45e4af8df05025e',4294967295,'a:11:{s:7:\"from_ad\";i:73;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NGZkY2VhMzMzNQ==\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"NDZmOTUyMzU2Yg==\";}'),('570d20cacfda762233e8b7fcb95180f4',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MzMwNjQ0MGZhYw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('ec4d5b58364609c24d40d5e9956ee627',2815471327,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NWZiYjg4Nzg3Zg==\";s:13:\"captcha_login\";s:16:\"NTk0MWIyYzUyMw==\";}'),('c603e2044aff082f573880ca68efeb5b',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"M2YwZjYxZmUxMg==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";}'),('7f68f1678e3ed920a3666443e0e3bd69',4294967295,'a:8:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"NWViNGM3YzAyZg==\";s:13:\"captcha_login\";s:16:\"YjYzYzZiYWMxOA==\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";}'),('558cf94186099eceed2ebed0023b5264',4294967295,'a:12:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MzcwZDk2ZGQ2ZQ==\";s:9:\"last_time\";i:1407804926;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('0a83469ec84df0dcfb5c01b8bc7ad642',4294967295,'a:8:{s:7:\"from_ad\";i:82;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZThjNzAwNzYxMg==\";s:14:\"display_search\";s:4:\"grid\";}'),('ac99b22312ee1ceda4b6bcd673aed443',4294967295,'a:9:{s:7:\"from_ad\";i:203;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MjE2NTQ1Mzc2YQ==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;}'),('955ab9c56059a721ff1c477c1691e687',2815673100,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NmQ0MTY2NzY3Mg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('68849a33e4f7f7ef7dedc5143d568907',4294967295,'a:12:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"N2ZhZGViZTA2MA==\";s:13:\"captcha_login\";s:16:\"Nzk4MjUyNjQ3NQ==\";s:9:\"last_time\";s:10:\"1407805282\";s:7:\"last_ip\";s:15:\"110.228.108.198\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('a5186383006e30a656f4c4fd40f095a5',4294967295,'a:9:{s:7:\"from_ad\";i:201;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:14:\"display_search\";s:4:\"grid\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NWU0MWY2ZmIwNg==\";s:9:\"flow_type\";i:0;}'),('a569ea4b912b0a9fef79906bba2c460c',4294967295,'a:9:{s:7:\"from_ad\";i:83;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MWFiYWZmNmNjZg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('2c1ca6e6a5045ef161b184a7649a372b',4223553247,'a:8:{s:7:\"from_ad\";i:73;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:16:\"last_email_query\";i:1407850812;s:12:\"captcha_word\";s:16:\"NmFjNWJlNTY5Ng==\";}'),('1929e0d90622230c8f67c2de7241289a',4223755599,'a:8:{s:7:\"from_ad\";i:3;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZGM5OTM3MTgyNA==\";s:13:\"captcha_login\";s:16:\"NTBjOTA1NTI5OQ==\";}'),('0358eea6d705f5b4554dbf8a394ad5e5',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NjI1YjY0NDIxMQ==\";s:12:\"captcha_word\";s:16:\"MjA4NjIzNGNkYw==\";}'),('aa6dae259cb553253be7dc3a5e42bbb3',4223975795,'a:8:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"YjRiM2I4MTE4NA==\";}'),('a2fb2d1792d6398f6311f2db57e1ed82',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"ZjUxYzRiMjNlZg==\";s:12:\"captcha_word\";s:16:\"ODNhYTE1ODExOQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('93670f6af20fa2f33833553be204f39c',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"MWI3OGE0MDY4YQ==\";s:12:\"captcha_word\";s:16:\"YWJhNjRjZWY4OA==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";}'),('904c29e02f0dbb7281ed5a3e5d5d0444',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MWM5ZTYyNjQzNA==\";s:14:\"display_search\";s:4:\"grid\";s:13:\"captcha_login\";s:16:\"MzNmMTExNDNhNg==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";}'),('576085b20feddc5011f94ec7c3f286d6',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MTI4MzE2NjMzMQ==\";s:13:\"captcha_login\";s:16:\"NjQyM2Q5OGJhNw==\";}'),('1ceeae67077a5559272429754cffde99',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NGRiNTA0NGFlOQ==\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MmUxMjg2MWJiMA==\";s:9:\"last_time\";s:10:\"1406517938\";s:7:\"last_ip\";s:14:\"14.216.244.165\";}'),('0685cf6410761963179069836de34793',4224993919,'a:9:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"M2JmZmQ3MDcwYg==\";s:13:\"captcha_login\";s:16:\"ZWJiZmQwNjhlZA==\";s:14:\"display_search\";s:4:\"grid\";}'),('542c3edcdad56a6af3b6ea84044f6062',2816696972,'a:8:{s:7:\"from_ad\";i:2;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"OWYzZDNhMjExMA==\";s:14:\"display_search\";s:4:\"grid\";}'),('058a8bd77d050026aacf292838e1bb06',4294967295,'a:13:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZmUzNWNhYjVjOQ==\";s:13:\"captcha_login\";s:16:\"ZTE1MDJlYjgwZg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"display_search\";s:4:\"grid\";s:9:\"last_time\";i:1408415237;s:7:\"last_ip\";s:0:\"\";}'),('854d701a4994166beef8d66780dfcc43',4294967295,'a:9:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YmRhNDJhNTBkYw==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"N2JmM2ExNGQyZQ==\";}'),('71a6a655b5dfca7410ba18538f6041ee',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MjcxYmMzZDJiZg==\";s:9:\"last_time\";s:1:\"0\";s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('44d4c15936f901894ae8db9634e9bdb9',2816864622,'a:9:{s:7:\"from_ad\";i:3;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"Mjk5NzA1YTg3ZA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('a45824c5d613893bfad5c6fbf403520d',4294967295,'a:8:{s:7:\"from_ad\";i:22;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NzBkZjEzNGJlYQ==\";s:14:\"display_search\";s:4:\"grid\";}'),('f435d3537fd9b362177f506426e1c686',4225347457,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YzZiZjFjZTZjZg==\";s:13:\"captcha_login\";s:16:\"ZjRkNDIyYTgxNA==\";}'),('c3e33a7ba88b22086653ba09f3bde9f5',4225519611,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MGQ2Zjk0YmU5NA==\";}'),('9af191ebb4b2a97bfb516dce8bc37f57',4294967295,'a:12:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NjE2ZDJiMzU2Zg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"OTM2NGY4OGVkYw==\";s:9:\"last_time\";s:10:\"1407379470\";s:7:\"last_ip\";s:15:\"125.123.222.132\";}'),('63851e2a3203ef74eaeee95bda71f6da',4226007995,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MzJiNmJjZDY5Mg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('496904716a6494d6dd9064f4a8d10631',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MzY5NjdmZTJkYg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:1;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('ec130311b44ddb0ee681cce0d768b41c',4294967295,'a:8:{s:7:\"from_ad\";i:2;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZGJiNzgxNmRhMg==\";s:13:\"captcha_login\";s:16:\"OWRhNGEyZGJjZQ==\";}'),('6f9f396ad780969c8f0b65d4f4cf9b6c',4294967295,'a:13:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NTQ1YjJhNTExYg==\";s:9:\"last_time\";s:10:\"1407213346\";s:7:\"last_ip\";s:12:\"49.89.177.55\";s:12:\"captcha_word\";s:16:\"NzAyNDY2ODVkMg==\";s:9:\"flow_type\";i:4;s:14:\"extension_code\";s:14:\"exchange_goods\";s:12:\"extension_id\";i:9;}'),('a014c116c4690a173f67c92b3cbe69a0',4226675859,'a:8:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NmI4NGExYmEzOQ==\";s:13:\"captcha_login\";s:16:\"NWEzZjBhODYxYQ==\";}'),('099d353294b04241e45888ea8ba5fa74',4294967295,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MmI2NWQxYmJjOQ==\";}'),('8a818bcd7495506000b74bc00df90dde',2817443929,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"ZjQ0NDYxMmEyMw==\";s:13:\"captcha_login\";s:16:\"M2UxYWY5YmZlYQ==\";s:9:\"last_time\";s:10:\"1404178867\";s:7:\"last_ip\";s:15:\"180.168.219.218\";s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";}'),('9ff8531de77dc6c9de01a3beeafc1b36',4294967295,'a:9:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YjRlNzZjMDM1MQ==\";s:9:\"last_time\";i:1408830377;s:7:\"last_ip\";s:0:\"\";}'),('63c5b6619d95813e009249f82abf80d6',4226610966,'a:9:{s:7:\"from_ad\";i:3;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YjQ4YzU1YmY0Nw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('f03a9476449c232c9a8677021005a81f',2817889097,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"ZGMxZGU2MzU0OQ==\";}'),('9861055818db1f1818b0e697bc1c9c55',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZmYzMGY3NzJkMg==\";s:14:\"display_search\";s:4:\"grid\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('ce60d103156b0ee8894cb63ec61f8046',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"ZWU4MTdmYTExNg==\";s:9:\"last_time\";s:10:\"1409013724\";s:7:\"last_ip\";s:15:\"183.141.222.208\";s:9:\"flow_type\";i:0;}'),('4672646781a660d2ae2540c80a5de597',2818037039,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZWYzNWM0NTdmNw==\";s:14:\"display_search\";s:4:\"grid\";}'),('f77bcad265212d61f56ff04f9f45cdcb',4227059625,'a:9:{s:7:\"from_ad\";i:92;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NThhZmU0MWQ4NQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('f1bdbc843b838ee0a808b40582cde468',4227066739,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NDhjNmY4ZGVjMg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('5be578d7f466833d4dc4c294612eb8df',2818075771,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MDU2ZDI4ZTVkOA==\";}'),('732d7a79fbed5d5586cdf5af8885af1e',2818131779,'a:8:{s:7:\"from_ad\";i:148;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"OTllNTZmZTFjZA==\";s:14:\"display_search\";s:4:\"grid\";}'),('4b04b313e4ecec14d1160d4e9322201c',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NWZlZDZhMTIwNA==\";s:9:\"last_time\";i:1409120001;s:7:\"last_ip\";s:0:\"\";}'),('4f954ef6d789961f90bd2279ce5fad94',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ODNjYzM0YzUzMA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:2;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('4057d5121c248ec135c4b9f3d9f20290',2818248931,'a:9:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MGUwN2ZmNzFiYQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('8206e0f8d453948bf3ac701a2714f82e',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZDRkNjZhNGRmNw==\";s:9:\"flow_type\";i:0;s:13:\"captcha_login\";s:16:\"NWM2MjEwMjMzZA==\";s:9:\"last_time\";i:1409128899;s:7:\"last_ip\";s:0:\"\";}'),('02e5c66030fc0ae6ebb41128015c8760',4294967295,'a:8:{s:7:\"from_ad\";i:203;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NTUwNjBkZWU4OA==\";s:13:\"captcha_login\";s:16:\"MDgzOTQ5ZDJhMQ==\";}'),('8336235dca9b746eb8fbb3c3ebaf0abd',4294967295,'a:8:{s:7:\"from_ad\";i:2;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"M2FhNGM1YTExZQ==\";s:14:\"display_search\";s:4:\"grid\";}'),('ef62db70a65c3b1598d5cd688a476c68',4294967295,'a:11:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NDFjYjY1OWZiMw==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:1;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:14:\"display_search\";s:4:\"grid\";s:13:\"captcha_login\";s:16:\"MTFiYTFhOGE5MA==\";}'),('b69c83e2cc28c815a9e3997304aabd2c',4227836234,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"NjcwYjI5ZWZiYw==\";}'),('b0d7f0810b31ebb9ab448a476883a03d',2818562274,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NzNiZTA4Y2U4ZA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('de0f07d2d947ed9d3758ea0d22e8cc10',4227864903,'a:8:{s:7:\"from_ad\";i:2;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZGM4Nzc5MWY3Ng==\";s:13:\"captcha_login\";s:16:\"OTk4YzNlZmQyOQ==\";}'),('8a2d4952ca255b4ff5afff34c62ea76c',4227887021,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"M2JmMzI3MjRkOQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('587a775612bae1a5da3bb6d7d6478a6e',2818592521,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YWJjYTNmYjJiZg==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('a89ead7670a6da9d81b5bf9d783f5e1e',4294967295,'a:11:{s:7:\"from_ad\";i:76;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:13:\"captcha_login\";s:16:\"ZmQxNzNkNTViYg==\";s:12:\"captcha_word\";s:16:\"ODliNGJiYjAxYQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}'),('082452e36f0307e59dec73388ede7fc0',2818757806,'a:9:{s:7:\"from_ad\";i:32;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"YWIyMWI5Y2U4Ng==\";s:9:\"last_time\";i:1409378905;s:7:\"last_ip\";s:0:\"\";}'),('c0ab265e515005059e35a6c320ae20bb',2818758472,'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"NTdmYzFjZDQzMA==\";}'),('7b4fdbf6ee457367a07316933a9dd556',4294967295,'a:14:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZjIwOTNkNDIwMg==\";s:13:\"captcha_login\";s:16:\"ZjUyYjRjNTI1ZQ==\";s:9:\"last_time\";i:1409452044;s:7:\"last_ip\";s:0:\"\";s:9:\"flow_type\";i:1;s:10:\"flow_order\";a:9:{s:14:\"extension_code\";s:9:\"group_buy\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;s:12:\"extension_id\";i:4;}s:14:\"extension_code\";s:9:\"group_buy\";s:12:\"extension_id\";i:4;}'),('03eb5f487830d67d4be433fcce46d104',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"Mzg4MGMwNTMwNg==\";s:13:\"captcha_login\";s:16:\"YjI3ZDMzZTNiNQ==\";s:16:\"last_order_query\";i:1409458580;}'),('e2dc8022c4ac4a277d9edc66f981c5c7',4228417767,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:2;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:12:\"captcha_word\";s:16:\"MmNiNTVlMmZjNw==\";}'),('2f16b6fe25cc958c84eded308c7ae4f8',4228665125,'a:8:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"ZDMzZjAyZTE2Yw==\";}'),('72675a0b18f475177c84e8072b92a6f6',4294967295,'a:9:{s:7:\"from_ad\";i:90;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"ZDlhOTZmNTQ2Ng==\";s:9:\"flow_type\";i:0;s:14:\"display_search\";s:4:\"grid\";}'),('a895deb47a949e15b3280213853b5199',2819123742,'a:8:{s:7:\"from_ad\";i:197;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"Y2NhMDA5NDhmYQ==\";s:14:\"display_search\";s:4:\"grid\";}'),('e88ad5bf64f059e6abcec8ba69b702b8',4294967295,'a:10:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"MWMzNmE4ZmQ4MQ==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:13:\"captcha_login\";s:16:\"NjFlNDJiNmQ1Ng==\";}'),('b004f773c398e108ca8e5c3aa65432cc',4294967295,'a:11:{s:7:\"from_ad\";i:1;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"NTRjMzBkMzUyOA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:3;s:6:\"pay_id\";i:2;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}s:13:\"captcha_login\";s:16:\"MzgxMWMzMWZiMw==\";s:14:\"display_search\";s:4:\"grid\";}'),('b87e6adfe90310aa3cadf6c63c0a7a1d',4294967295,'a:9:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"region_id\";i:0;s:11:\"region_name\";s:9:\"全国站\";s:7:\"pin_yin\";s:5:\"china\";s:12:\"captcha_word\";s:16:\"MTUyYzEwOTkwMA==\";s:9:\"flow_type\";i:0;s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}');
/*!40000 ALTER TABLE `ecs_sessions_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_shipping`
--

DROP TABLE IF EXISTS `ecs_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_shipping`
--

LOCK TABLES `ecs_shipping` WRITE;
/*!40000 ALTER TABLE `ecs_shipping` DISABLE KEYS */;
INSERT INTO `ecs_shipping` VALUES (1,'sf_express','顺丰速运','江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG','0',0,1,'','/images/receipt/dly_sf_express.jpg','t_shop_name,网店-名称,150,29,112,137,b_shop_name||,||t_shop_address,网店-地址,268,55,105,168,b_shop_address||,||t_shop_tel,网店-联系电话,55,25,177,224,b_shop_tel||,||t_customer_name,收件人-姓名,78,23,299,265,b_customer_name||,||t_customer_address,收件人-详细地址,271,94,104,293,b_customer_address||,||',2,0),(2,'sto_express','申通快递','江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元','0',0,1,'','/images/receipt/dly_sto_express.jpg','t_shop_address,网店-地址,235,48,131,152,b_shop_address||,||t_shop_name,网店-名称,237,26,131,200,b_shop_name||,||t_shop_tel,网店-联系电话,96,36,144,257,b_shop_tel||,||t_customer_post,收件人-邮编,86,23,578,268,b_customer_post||,||t_customer_address,收件人-详细地址,232,49,434,149,b_customer_address||,||t_customer_name,收件人-姓名,151,27,449,231,b_customer_name||,||t_customer_tel,收件人-电话,90,32,452,261,b_customer_tel||,||',2,0),(3,'fpd','运费到付','所购商品到达即付运费','0',0,1,'','','',2,0);
/*!40000 ALTER TABLE `ecs_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_shipping_area`
--

DROP TABLE IF EXISTS `ecs_shipping_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_shipping_area`
--

LOCK TABLES `ecs_shipping_area` WRITE;
/*!40000 ALTER TABLE `ecs_shipping_area` DISABLE KEYS */;
INSERT INTO `ecs_shipping_area` VALUES (9,'北京',2,'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}'),(4,'北京',1,'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"20\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"2\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}'),(3,'广东',1,'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"20\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:1:\"5\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"2\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}'),(8,'全国地区',3,'a:2:{i:0;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:0:\"\";}}'),(7,'申通快递',1,'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"20\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"10\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"2\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:3:\"100\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
/*!40000 ALTER TABLE `ecs_shipping_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_shop_config`
--

DROP TABLE IF EXISTS `ecs_shop_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=904 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_shop_config`
--

LOCK TABLES `ecs_shop_config` WRITE;
/*!40000 ALTER TABLE `ecs_shop_config` DISABLE KEYS */;
INSERT INTO `ecs_shop_config` VALUES (1,0,'shop_info','group','','','',1),(2,0,'basic','group','','','',1),(3,0,'display','group','','','',1),(4,0,'shopping_flow','group','','','',1),(5,0,'smtp','group','','','',1),(6,0,'hidden','hidden','','','',1),(7,0,'goods','group','','','',1),(8,0,'sms','group','','','',1),(9,0,'wap','group','','','',1),(101,1,'shop_name','text','','','美乐乐源码',1),(102,1,'shop_title','text','','','美乐乐第二版源码,高端大气行业ECSHOP商城模板,家具建材家居商城源码下载-其才网络',1),(103,1,'shop_desc','text','','','美乐乐网站模板源码第二版由其才网络出品，独家做后期修复升级，源码下载购买请加Q249699062',1),(104,1,'shop_keywords','text','','','美乐乐源码第二版,美乐乐网站模板,美乐乐源码下载,商城源码,ECSHOP模板',1),(105,1,'shop_country','manual','','','1',1),(106,1,'shop_province','manual','','','2',1),(107,1,'shop_city','manual','','','',1),(108,1,'shop_address','text','','','',1),(109,1,'qq','text','','','249699062',1),(110,1,'ww','text','','','chinahcg,chinahcg:售前,chinahcg:售后',1),(111,1,'skype','text','','','',1),(112,1,'ym','text','','','',1),(113,1,'msn','text','','','',1),(114,1,'service_email','text','','','249699062@qq.com',1),(115,1,'service_phone','text','','','0527-82862887',1),(116,1,'shop_closed','select','0,1','','0',1),(117,1,'close_comment','textarea','','','',1),(118,1,'shop_logo','file','','../themes/{$template}/images/','',1),(119,1,'licensed','select','0,1','','1',1),(120,1,'user_notice','textarea','','','用户中心公告！',1),(121,1,'shop_notice','textarea','','','',1),(122,1,'shop_reg_closed','select','1,0','','0',1),(201,2,'lang','manual','','','zh_cn',1),(202,2,'icp_number','text','','','',1),(203,2,'icp_file','file','','../cert/','',1),(204,2,'watermark','file','','../images/','',1),(205,2,'watermark_place','select','0,1,2,3,4,5','','1',1),(206,2,'watermark_alpha','text','','','65',1),(207,2,'use_storage','select','1,0','','1',1),(208,2,'market_price_rate','text','','','1.2',1),(209,2,'rewrite','select','0,1,2','','1',1),(210,2,'integral_name','text','','','积分',1),(211,2,'integral_scale','text','','','1',1),(212,2,'integral_percent','text','','','1',1),(213,2,'sn_prefix','text','','','ECS',1),(214,2,'comment_check','select','0,1','','1',1),(215,2,'no_picture','file','','../images/','',1),(218,2,'stats_code','textarea','','','',1),(219,2,'cache_time','text','','','3600',1),(220,2,'register_points','text','','','0',1),(221,2,'enable_gzip','select','0,1','','0',1),(222,2,'top10_time','select','0,1,2,3,4','','0',1),(223,2,'timezone','options','-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12','','8',1),(224,2,'upload_size_limit','options','-1,0,64,128,256,512,1024,2048,4096','','64',1),(226,2,'cron_method','select','0,1','','0',1),(227,2,'comment_factor','select','0,1,2,3','','0',1),(228,2,'enable_order_check','select','0,1','','1',1),(229,2,'default_storage','text','','','1000',1),(230,2,'bgcolor','text','','','#FFFFFF',1),(231,2,'visit_stats','select','on,off','','on',1),(232,2,'send_mail_on','select','on,off','','off',1),(233,2,'auto_generate_gallery','select','1,0','','1',1),(234,2,'retain_original_img','select','1,0','','1',1),(235,2,'member_email_validate','select','1,0','','1',1),(236,2,'message_board','select','1,0','','1',1),(239,2,'certificate_id','hidden','','','1080952234',1),(240,2,'token','hidden','','','fb9fd1c63d073d8f068720b81bb66d821ae249568c6195ae46ea0e944076e1c7',1),(241,2,'certi','hidden','','','http://service.shopex.cn/openapi/api.php',1),(242,2,'send_verify_email','select','1,0','','0',1),(243,2,'ent_id','hidden','','','',1),(244,2,'ent_ac','hidden','','','',1),(245,2,'ent_sign','hidden','','','',1),(246,2,'ent_email','hidden','','','',1),(301,3,'date_format','hidden','','','Y-m-d',1),(302,3,'time_format','text','','','Y-m-d H:i:s',1),(303,3,'currency_format','text','','','¥%s',1),(304,3,'thumb_width','text','','','300',1),(305,3,'thumb_height','text','','','300',1),(306,3,'image_width','text','','','800',1),(307,3,'image_height','text','','','800',1),(312,3,'top_number','text','','','10',1),(313,3,'history_number','text','','','5',1),(314,3,'comments_number','text','','','5',1),(315,3,'bought_goods','text','','','3',1),(316,3,'article_number','text','','','8',1),(317,3,'goods_name_length','text','','','18',1),(318,3,'price_format','select','0,1,2,3,4,5','','0',1),(319,3,'page_size','text','','','32',1),(320,3,'sort_order_type','select','0,1,2','','0',1),(321,3,'sort_order_method','select','0,1','','0',1),(322,3,'show_order_type','select','0,1,2','','1',1),(323,3,'attr_related_number','text','','','5',1),(324,3,'goods_gallery_number','text','','','5',1),(325,3,'article_title_length','text','','','16',1),(326,3,'name_of_region_1','text','','','国家',1),(327,3,'name_of_region_2','text','','','省',1),(328,3,'name_of_region_3','text','','','市',1),(329,3,'name_of_region_4','text','','','区',1),(330,3,'search_keywords','text','','','布艺沙发,多功能床,儿童床,餐桌椅,家用书桌,吸顶灯',0),(332,3,'related_goods_number','text','','','4',1),(333,3,'help_open','select','0,1','','1',1),(334,3,'article_page_size','text','','','10',1),(335,3,'page_style','select','0,1','','1',1),(336,3,'recommend_order','select','0,1','','0',1),(337,3,'index_ad','hidden','','','sys',1),(401,4,'can_invoice','select','1,0','','1',1),(402,4,'use_integral','select','1,0','','1',1),(403,4,'use_bonus','select','1,0','','1',1),(404,4,'use_surplus','select','1,0','','1',1),(405,4,'use_how_oos','select','1,0','','1',1),(406,4,'send_confirm_email','select','1,0','','0',1),(407,4,'send_ship_email','select','1,0','','0',1),(408,4,'send_cancel_email','select','1,0','','0',1),(409,4,'send_invalid_email','select','1,0','','0',1),(410,4,'order_pay_note','select','1,0','','1',1),(411,4,'order_unpay_note','select','1,0','','1',1),(412,4,'order_ship_note','select','1,0','','1',1),(413,4,'order_receive_note','select','1,0','','1',1),(414,4,'order_unship_note','select','1,0','','1',1),(415,4,'order_return_note','select','1,0','','1',1),(416,4,'order_invalid_note','select','1,0','','1',1),(417,4,'order_cancel_note','select','1,0','','1',1),(418,4,'invoice_content','textarea','','','',1),(419,4,'anonymous_buy','select','1,0','','0',1),(420,4,'min_goods_amount','text','','','0',1),(421,4,'one_step_buy','select','1,0','','0',1),(422,4,'invoice_type','manual','','','a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}',1),(423,4,'stock_dec_time','select','1,0','','0',1),(424,4,'cart_confirm','options','1,2,3,4','','1',0),(425,4,'send_service_email','select','1,0','','0',1),(426,4,'show_goods_in_cart','select','1,2,3','','3',1),(427,4,'show_attr_in_cart','select','1,0','','1',1),(501,5,'smtp_host','text','','','localhost',1),(502,5,'smtp_port','text','','','25',1),(503,5,'smtp_user','text','','','',1),(504,5,'smtp_pass','password','','','',1),(505,5,'smtp_mail','text','','','',1),(506,5,'mail_charset','select','UTF8,GB2312,BIG5','','UTF8',1),(507,5,'mail_service','select','0,1','','0',0),(508,5,'smtp_ssl','select','0,1','','0',0),(601,6,'integrate_code','hidden','','','ecshop',1),(602,6,'integrate_config','hidden','','','',1),(603,6,'hash_code','hidden','','','93cca7258ca52ad07b36e47f2baa7685',1),(604,6,'template','hidden','','','meilele',1),(605,6,'install_date','hidden','','','1385534808',1),(606,6,'ecs_version','hidden','','','v2.7.3',1),(607,6,'sms_user_name','hidden','','','',1),(608,6,'sms_password','hidden','','','',1),(609,6,'sms_auth_str','hidden','','','',1),(610,6,'sms_domain','hidden','','','',1),(611,6,'sms_count','hidden','','','',1),(612,6,'sms_total_money','hidden','','','',1),(613,6,'sms_balance','hidden','','','',1),(614,6,'sms_last_request','hidden','','','',1),(616,6,'affiliate','hidden','','','a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}',1),(617,6,'captcha','hidden','','','39',1),(618,6,'captcha_width','hidden','','','100',1),(619,6,'captcha_height','hidden','','','20',1),(620,6,'sitemap','hidden','','','a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}',0),(621,6,'points_rule','hidden','','','',0),(622,6,'flash_theme','hidden','','','dynfocus',1),(623,6,'stylename','hidden','','','',1),(701,7,'show_goodssn','select','1,0','','1',1),(702,7,'show_brand','select','1,0','','1',1),(703,7,'show_goodsweight','select','1,0','','1',1),(704,7,'show_goodsnumber','select','1,0','','1',1),(705,7,'show_addtime','select','1,0','','1',1),(706,7,'goodsattr_style','select','1,0','','1',1),(707,7,'show_marketprice','select','1,0','','1',1),(801,8,'sms_shop_mobile','text','','','',1),(802,8,'sms_order_placed','select','1,0','','0',1),(803,8,'sms_order_payed','select','1,0','','0',1),(804,8,'sms_order_shipped','select','1,0','','0',1),(901,9,'wap_config','select','1,0','','1',1),(902,9,'wap_logo','file','','../images/','',1),(903,2,'message_check','select','1,0','','1',1);
/*!40000 ALTER TABLE `ecs_shop_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_snatch_log`
--

DROP TABLE IF EXISTS `ecs_snatch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_snatch_log`
--

LOCK TABLES `ecs_snatch_log` WRITE;
/*!40000 ALTER TABLE `ecs_snatch_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_snatch_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_stats`
--

DROP TABLE IF EXISTS `ecs_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_stats`
--

LOCK TABLES `ecs_stats` WRITE;
/*!40000 ALTER TABLE `ecs_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_suppliers`
--

DROP TABLE IF EXISTS `ecs_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `logo` varchar(255) DEFAULT NULL,
  `country` int(5) DEFAULT NULL,
  `province` int(5) DEFAULT NULL,
  `city` int(5) DEFAULT NULL,
  `district` int(5) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `work_time` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `position_img` varchar(255) DEFAULT NULL,
  `line` longtext,
  `gallery` longtext,
  PRIMARY KEY (`suppliers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_suppliers`
--

LOCK TABLES `ecs_suppliers` WRITE;
/*!40000 ALTER TABLE `ecs_suppliers` DISABLE KEYS */;
INSERT INTO `ecs_suppliers` VALUES (2,'北京十里河体验馆','供货商描述',1,'../data/suppliers/1386322573176361283.jpg',1,2,52,501,'010-67498277','9:00-19:00','想顾客之所想 忧顾客之所忧，你的满意我们的追求！','北京市朝阳区十里河街十里河桥东南角佰汇广场佰汇古玩城','../data/suppliers/1386322573357669210.jpg','小屯西路南口站，507路',''),(3,'北京丰台区体验馆','',1,'../data/suppliers/1386322734065388439.jpg',1,2,52,506,'010-83738792','9:00-18:00','真诚服务 满意你我','北京市丰台区小屯西路万科中粮假日风景111号院底商1','../data/suppliers/1386322734757770298.jpg','郭庄子公交场站，554路，339路，634路','');
/*!40000 ALTER TABLE `ecs_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_tag`
--

DROP TABLE IF EXISTS `ecs_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_tag`
--

LOCK TABLES `ecs_tag` WRITE;
/*!40000 ALTER TABLE `ecs_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_template`
--

DROP TABLE IF EXISTS `ecs_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_template`
--

LOCK TABLES `ecs_template` WRITE;
/*!40000 ALTER TABLE `ecs_template` DISABLE KEYS */;
INSERT INTO `ecs_template` VALUES ('index','文章-网站公告','/library/cat_articles.lbi',0,9,5,3,'meilele',''),('index','分类-商品','/library/cat_goods.lbi',2,3,5,1,'meilele',''),('index','分类-商品','/library/cat_goods.lbi',1,2,5,1,'meilele',''),('index','','/library/brands.lbi',0,0,4,0,'meilele',''),('index','分类-商品','/library/cat_goods.lbi',0,1,5,1,'meilele',''),('index','','/library/auction.lbi',0,0,4,0,'meilele',''),('index','','/library/group_buy.lbi',0,0,1,0,'meilele',''),('index','','/library/recommend_promotion.lbi',0,0,4,0,'meilele',''),('index','','/library/recommend_hot.lbi',0,0,4,0,'meilele',''),('index','','/library/recommend_new.lbi',0,0,8,0,'meilele',''),('index','','/library/recommend_best.lbi',0,0,8,0,'meilele','');
/*!40000 ALTER TABLE `ecs_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_topic`
--

DROP TABLE IF EXISTS `ecs_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_topic`
--

LOCK TABLES `ecs_topic` WRITE;
/*!40000 ALTER TABLE `ecs_topic` DISABLE KEYS */;
INSERT INTO `ecs_topic` VALUES (1,'专题名称','',1385827200,1481731200,'O:8:\"stdClass\":1:{s:7:\"default\";a:14:{i:0;s:45:\"美式古典 双面描金雕花排骨架床|1\";i:1;s:64:\"欧式田园 1.8米水晶拉扣双人床 水牛头层真皮床|2\";i:2;s:51:\"欧式田园 粉红玫瑰立体雕花排骨架床|3\";i:3;s:51:\"法式风格 1.8米皮拉扣床 PU发泡雕花床|4\";i:4;s:48:\"地中海风格 美国进口白杨木双人床|5\";i:5;s:43:\"现代风格 1.8米软床 头层牛皮床|6\";i:6;s:63:\"时尚经典 带储物功能真皮转角沙发(1+3+左贵妃)|7\";i:7;s:53:\"奢华霸气 进口全真皮沙发套装（1+2+3）|8\";i:8;s:47:\"清新雅致 可拆装沙发套装（1+2+3）|9\";i:9;s:62:\"温柔海风 唯美布艺左转角沙发（1+3+左贵妃）|10\";i:10;s:48:\"橡胶木实木餐桌椅套装（七件套）|11\";i:11;s:48:\"餐厅6件套（1餐桌+4餐椅+1餐边柜）|12\";i:12;s:51:\"餐厅5件套装（1.5餐台+4无扶手餐椅）|13\";i:13;s:49:\"美式田园 实木餐厅套装（1桌+4椅）|14\";}}','','','data/afficheimg/20131215opjtre.png','data/afficheimg/20131215itkbsy.jpg','33b360','','专题页面关键字','专题页面描述');
/*!40000 ALTER TABLE `ecs_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_user_account`
--

DROP TABLE IF EXISTS `ecs_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_user_account`
--

LOCK TABLES `ecs_user_account` WRITE;
/*!40000 ALTER TABLE `ecs_user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_user_address`
--

DROP TABLE IF EXISTS `ecs_user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_user_address`
--

LOCK TABLES `ecs_user_address` WRITE;
/*!40000 ALTER TABLE `ecs_user_address` DISABLE KEYS */;
INSERT INTO `ecs_user_address` VALUES (1,'',1,'超级卖家','',1,6,76,693,'长江路15号','','111111111','','',''),(2,'',2,'发挥好','',1,6,84,773,'发挥好哈哈哈','','15013475862','','',''),(3,'',5,'Ffcddfggg136','Jssjj@11.com',1,13,193,1618,'Ghffggh','','13975788537','','',''),(4,'',7,'谢家华','',1,3,38,417,'成行路2323号','','13543881086','','',''),(5,'',9,'渐中顺','',1,6,78,712,'另要在枷 进','','18398989218','','',''),(6,'',10,'1','asdfasdf@163.com',1,3,38,418,'1','','13','','',''),(7,'',20,'姓名','',1,2,52,500,'亚方花园14号商铺','','13852807707','','',''),(8,'',22,'顶替村','2937431186@qq.com',1,2,52,500,'要大规模压顶','','13800138123','','','要大规模城'),(9,'',23,'ASDFASDFASDF','ws323@111.NET',1,3,37,410,'SDFASDFASDFASDF','','13503214551','','','ASDFASDFASD'),(10,'',24,'防守打法','',1,2,52,500,'佛挡杀佛第三方对是否','','1551613313','','',''),(11,'',28,'好人','wuxingpeng@qq.com',1,2,52,500,'uxyi','','17431005','','',''),(12,'',29,'dsfa','xiaomi@qq.com',1,2,52,501,'biei','','12345678911','','',''),(13,'',34,'111','',1,2,52,500,'1111111111','','11111111','','',''),(14,'',40,'SGS','',1,3,36,398,'阿萨德发生大丰收的发的是发的是','','15641216496','','','');
/*!40000 ALTER TABLE `ecs_user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_user_bonus`
--

DROP TABLE IF EXISTS `ecs_user_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_user_bonus`
--

LOCK TABLES `ecs_user_bonus` WRITE;
/*!40000 ALTER TABLE `ecs_user_bonus` DISABLE KEYS */;
INSERT INTO `ecs_user_bonus` VALUES (1,1,0,1,1387775981,8,1),(2,1,0,1,0,0,1);
/*!40000 ALTER TABLE `ecs_user_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_user_feed`
--

DROP TABLE IF EXISTS `ecs_user_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_user_feed`
--

LOCK TABLES `ecs_user_feed` WRITE;
/*!40000 ALTER TABLE `ecs_user_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_user_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_user_rank`
--

DROP TABLE IF EXISTS `ecs_user_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_user_rank`
--

LOCK TABLES `ecs_user_rank` WRITE;
/*!40000 ALTER TABLE `ecs_user_rank` DISABLE KEYS */;
INSERT INTO `ecs_user_rank` VALUES (1,'注册用户',0,10000,100,1,0),(2,'VIP',0,0,90,1,1),(3,'VVIP',0,0,80,1,1);
/*!40000 ALTER TABLE `ecs_user_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_users`
--

DROP TABLE IF EXISTS `ecs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_users`
--

LOCK TABLES `ecs_users` WRITE;
/*!40000 ALTER TABLE `ecs_users` DISABLE KEYS */;
INSERT INTO `ecs_users` VALUES (1,'test@qq.com','test','52b17e7b4ab557c063ddacd7b05cd95f','','',0,'0000-00-00',0.00,0.00,22005,22005,1,1385779761,1391490620,'0000-00-00 00:00:00','111.59.234.94',5248,0,0,'5492','0',0,0,'','','','','','131',0,0.00,'',''),(2,'343037703@qq.com','qscfr','233a3aa8ac444a27a536d966a7567eec','','',0,'0000-00-00',0.00,0.00,0,0,2,1393912127,1393912127,'0000-00-00 00:00:00','116.238.27.79',1,0,0,'','0',0,0,'','','','','','',0,0.00,'',''),(3,'52655@qq.com','haoing','e10adc3949ba59abbe56e057f20f883e','','',0,'0000-00-00',0.00,0.00,0,0,0,1402661204,1402661204,'0000-00-00 00:00:00','183.15.77.69',1,0,0,NULL,'0',0,0,'','','','','','15272202365',0,0.00,NULL,NULL),(4,'garrach@163.com','garrach','8ba1754b742c94e0e751309dd053aa95','','',0,'0000-00-00',0.00,0.00,0,0,0,1402716460,1402716460,'0000-00-00 00:00:00','140.206.203.234',1,0,0,NULL,'0',0,0,'','','','','','18717771264',0,0.00,NULL,NULL),(5,'Jssjj@11.com','Addd','e4ed0f5cd96be5f54b79863b71c81161','','',0,'0000-00-00',0.00,0.00,0,0,3,1402838092,1402838092,'0000-00-00 00:00:00','221.231.51.228',1,0,0,NULL,'0',0,0,'','','','','','13976855436',0,0.00,NULL,NULL),(6,'335245034@qq.com','335245034@qq.com','c8837b23ff8aaa8a2dde915473ce0991','','',0,'0000-00-00',0.00,0.00,0,0,0,1402900156,1402900156,'0000-00-00 00:00:00','116.54.121.135',1,0,0,NULL,'0',0,0,'','','','','','18999999999',0,0.00,NULL,NULL),(7,'gdxiejiahua@qq.com','gdxiejiahua','66c5230114aaacbdf0aff69bfba30d5d','','',0,'0000-00-00',0.00,0.00,0,0,4,1402999245,1402999245,'0000-00-00 00:00:00','219.131.217.79',1,0,0,NULL,'0',0,0,'','','','','','13543881086',0,0.00,NULL,NULL),(8,'123123123@qq.com','kelln','9de99c0c893edca4579eb9cbfd15d727','','',0,'0000-00-00',0.00,0.00,0,0,0,1403022346,1403022346,'0000-00-00 00:00:00','139.202.187.163',1,0,0,NULL,'0',0,0,'','','','','','11123212231',0,0.00,NULL,NULL),(9,'tommy@sd.com','wjt009','98c54876283ecc44f2df4cfa7b27ae79','','',0,'0000-00-00',0.00,0.00,0,0,5,1403059580,1403059580,'0000-00-00 00:00:00','115.60.133.89',1,0,0,NULL,'0',0,0,'','','','','','18389988989',0,0.00,NULL,NULL),(10,'asdfasdf@163.com','asdfasdf','6a204bd89f3c8348afd5c77c717a097a','','',0,'0000-00-00',0.00,0.00,0,0,6,1403065890,1403065890,'0000-00-00 00:00:00','222.161.221.23',1,0,0,NULL,'0',0,0,'','','','','','13345455',0,0.00,NULL,NULL),(11,'847614511@qq.com','yilvheifeng','70c3fb494f99ed2a1335d581f5c6aee0','','',0,'0000-00-00',0.00,0.00,0,0,0,1403153728,1403153728,'0000-00-00 00:00:00','61.177.159.118',1,0,0,NULL,'0',0,0,'','','','','','18655555974',0,0.00,NULL,NULL),(12,'123123@QQ.QQ','123123','4297f44b13955235245b2497399d7a93','','',0,'0000-00-00',0.00,0.00,0,0,0,1403498027,1403498027,'0000-00-00 00:00:00','121.236.78.32',1,0,0,NULL,'0',0,0,'','','','','','12312312311',0,0.00,NULL,NULL),(13,'skfdjfj3e@qq.con','123123123','d5c2300964916aa47bf81887135de3c8','','',0,'0000-00-00',0.00,0.00,0,0,0,1403499259,1403499259,'0000-00-00 00:00:00','121.236.78.32',1,0,0,NULL,'0',0,0,'','','','','','5485345485634',0,0.00,NULL,NULL),(14,'464143874@qq.com','7410','324d1907d9ca6733d399b87affe48c74','','',0,'0000-00-00',0.00,0.00,0,0,0,1403658417,1403658417,'0000-00-00 00:00:00','61.177.159.118',1,0,0,NULL,'0',0,0,'','','','','','15865898745',0,0.00,NULL,NULL),(15,'554111@qq.com','tangshibo','dba0dd148531d828e60d7e7956039993','','',0,'0000-00-00',0.00,0.00,0,0,0,1403661961,1403661961,'0000-00-00 00:00:00','222.209.111.88',1,0,0,NULL,'0',0,0,'','','','','','18328700899',0,0.00,NULL,NULL),(16,'anpai@qq.com','anpai','495ea94476000abdd02c976e5c144d29','','',0,'0000-00-00',0.00,0.00,0,0,0,1403744026,1403744026,'0000-00-00 00:00:00','121.234.127.111',1,0,0,NULL,'0',0,0,'','','','','','13921822716',0,0.00,NULL,NULL),(17,'308769000@qq.com','30876900','dc483e80a7a0bd9ef71d8cf973673924','','',0,'0000-00-00',0.00,0.00,0,0,0,1404045995,1404045995,'0000-00-00 00:00:00','58.39.88.6',1,0,0,NULL,'0',0,0,'','','','','','15102171878',0,0.00,NULL,NULL),(18,'admin@126.com','aaaaaa','fed3e59d668159de91423f21a7c12dfa','','',0,'0000-00-00',0.00,0.00,0,0,0,1404178867,1408762292,'0000-00-00 00:00:00','180.168.219.218',3,0,0,'861','0',0,0,'','','','','','13815685622',0,0.00,NULL,NULL),(19,'www@126.com','wwww','e10adc3949ba59abbe56e057f20f883e','','',0,'0000-00-00',0.00,0.00,0,0,0,1404186750,1404186750,'0000-00-00 00:00:00','117.136.8.96',1,0,0,NULL,'0',0,0,'','','','','','12369565652',0,0.00,NULL,NULL),(20,'249699062@qq.com','chinajshcg','4dd7fcd9d521784eedb25be4b436a258','','',0,'1954-01-01',0.00,0.00,280,84,7,1404199679,1409726556,'0000-00-00 00:00:00','114.239.197.54',8,3,0,'2781','0',0,0,'','','','','','18068205008',0,0.00,NULL,NULL),(21,'shenqin@live.com','shenqin','473076507730c67e7e1d6dff6a5612fe','','',0,'0000-00-00',0.00,0.00,0,0,0,1404351339,1409023984,'0000-00-00 00:00:00','183.141.222.208',7,0,0,'3387','0',0,0,'','','','','','13567393553',0,0.00,NULL,NULL),(22,'2937431186@qq.com','2937431186','6d9822b272cd337127e9d1925011f797','','',0,'0000-00-00',0.00,0.00,0,0,8,1404617704,1404617704,'0000-00-00 00:00:00','58.61.98.18',1,0,0,NULL,'0',0,0,'','','','','','13316983328',0,0.00,NULL,NULL),(23,'ws323@111.NET','ws1234','5958bbe00ea7f1aafc8fcef3170d3011','','',0,'0000-00-00',0.00,0.00,0,0,9,1404916931,1404917058,'0000-00-00 00:00:00','61.52.74.34',2,0,0,'2739','0',0,0,'','','','','','13521451234',0,0.00,NULL,NULL),(24,'65492@qq.com','dayall','b1fd3f62a25b156cad41d27bd4c46d61','','',0,'0000-00-00',0.00,0.00,0,0,10,1405411624,1405412567,'0000-00-00 00:00:00','180.213.171.17',2,0,0,'4322','0',0,0,'','','','','','15222114455',0,0.00,NULL,NULL),(25,'870074900@qq.com','sizhe','647ba8a207681db98739a836066fc9d8','','',0,'0000-00-00',0.00,0.00,0,0,0,1405491620,1405491620,'0000-00-00 00:00:00','218.201.123.242',1,0,0,NULL,'0',0,0,'','','','','','13953376439',0,0.00,NULL,NULL),(26,'a123456@126.com','a123456','dc483e80a7a0bd9ef71d8cf973673924','','',0,'0000-00-00',0.00,0.00,0,0,0,1405651433,1405651433,'0000-00-00 00:00:00','116.211.198.5',1,0,0,NULL,'0',0,0,'','','','','','12345432234',0,0.00,NULL,NULL),(27,'123654@163.com','123654','fc607063906efa698848a2b1d8c0fbcc','','',0,'0000-00-00',0.00,0.00,0,0,0,1405654461,1405654494,'0000-00-00 00:00:00','27.16.33.239',2,0,0,'4170','0',0,0,'','','','','','12345678912',0,0.00,NULL,NULL),(28,'wuxingpeng@qq.com','wuxingpeng','58082821a122d8066056978800d79f79','','',0,'0000-00-00',0.00,0.00,0,0,11,1405754433,1405754433,'0000-00-00 00:00:00','116.238.171.183',1,0,0,NULL,'0',0,0,'','','','','','18217614553',0,0.00,NULL,NULL),(29,'xiaomi@qq.com','xiaomi','ff5e66b76340c5636aa40e7c6a46628f','','',0,'0000-00-00',0.00,0.00,0,0,12,1405755403,1405755403,'0000-00-00 00:00:00','116.238.171.183',1,0,0,NULL,'0',0,0,'','','','','','1234567890',0,0.00,NULL,NULL),(30,'545454@qq.com','545454','9cbf8a4dcb8e30682b927f352d6559a0','','',0,'0000-00-00',0.00,0.00,0,0,0,1405828895,1405828895,'0000-00-00 00:00:00','58.101.189.188',1,0,0,NULL,'0',0,0,'','','','','','123456a',0,0.00,NULL,NULL),(31,'fengxiang@163.com','fengxiang','5afe1a982a93ee66906e453e0c761019','','',0,'0000-00-00',0.00,0.00,0,0,0,1406013390,1406033180,'0000-00-00 00:00:00','111.175.38.228',8,0,0,'7217','0',0,0,'','','','','','15926204949',0,0.00,NULL,NULL),(32,'admin123@admin123.com','admin123','0192023a7bbd73250516f069df18b500','','',0,'0000-00-00',0.00,0.00,0,0,0,1406251336,1406251336,'0000-00-00 00:00:00','221.218.15.14',1,0,0,NULL,'0',0,0,'','','','','','13581811111',0,0.00,NULL,NULL),(33,'admin0123@admin0123.com','admin0123','9ce0b670ee24efe2d4e728c6875eff07','','',0,'0000-00-00',0.00,0.00,0,0,0,1406255942,1406256370,'0000-00-00 00:00:00','221.218.15.14',2,0,0,'1606','0',0,0,'','','','','','13581815555',0,0.00,NULL,NULL),(34,'782869779@qq.com','limingsheng','e5c67af5c99299e5b1f0820b267ac6b4','','',0,'0000-00-00',0.00,0.00,0,0,13,1406430606,1408182395,'0000-00-00 00:00:00','14.216.255.216',4,0,0,'6307','0',0,0,'','','','','','15916852053',0,0.00,NULL,NULL),(35,'admin01230@admin01230.com','admin01230','f05a887d8bd50225f767f3dcb155a297','','',0,'0000-00-00',0.00,0.00,0,0,0,1406517749,1406528617,'0000-00-00 00:00:00','221.218.14.125',2,0,0,'7725','0',0,0,'','','','','','13511110000',0,0.00,NULL,NULL),(36,'icebergrbs@qq.com','icebergrbs','0b72223440e127bcfe51ccd9b2f39ee7','','',0,'0000-00-00',0.00,0.00,0,0,0,1406566702,1406566702,'0000-00-00 00:00:00','118.182.170.229',1,0,0,NULL,'0',0,0,'','','','','','18993756955',0,0.00,NULL,NULL),(37,'11@qqq.com','111','96e79218965eb72c92a549dd5a330112','','',0,'0000-00-00',0.00,0.00,0,0,0,1407140433,1407140433,'0000-00-00 00:00:00','182.119.27.41',1,0,0,NULL,'0',0,0,'','','','','','1112222332',0,0.00,NULL,NULL),(38,'22915822@qq.com','zwj900124','c39d3e09f029f1be48e41f8f5aad3a56','','',0,'0000-00-00',0.00,0.00,0,0,0,1407170416,1407170416,'0000-00-00 00:00:00','180.118.226.83',1,0,0,NULL,'0',0,0,'','','','','','15252525252',0,0.00,NULL,NULL),(39,'62408967@qq.com','a624089067','f9cb02676fd9d37a49f0c3a1a861be70','','',0,'0000-00-00',0.00,0.00,0,0,0,1407213441,1407213441,'0000-00-00 00:00:00','182.119.107.176',1,0,0,NULL,'0',0,0,'','','','','','15003833825',0,0.00,NULL,NULL),(48,'fuwu360@163.com','18605378090','5b252230f68090c5eff6e63c724fc304','','',0,'0000-00-00',0.00,0.00,0,0,0,1408537873,1408537873,'0000-00-00 00:00:00','27.198.6.77',1,0,0,NULL,'0',0,0,'','','','','','186',0,0.00,NULL,NULL),(40,'admin@mz98.com','mz98','43eeeab8d8e14b9947dc99e257b6e7a6','','',0,'0000-00-00',0.00,0.00,0,0,14,1407553805,1407553805,'0000-00-00 00:00:00','180.174.48.11',1,0,0,NULL,'0',0,0,'','','','','','15645973164',0,0.00,NULL,NULL),(41,'123@qq.com','123456','a0c034df289073365ff1c5e367543989','','',0,'0000-00-00',0.00,0.00,0,0,0,1407804922,1407832873,'0000-00-00 00:00:00','110.228.108.198',3,0,0,'9585','0',0,0,'','','','','','150232565889',0,0.00,NULL,NULL),(42,'a111111@qq.com','a111111','6846860684f05029abccc09a53cd66f1','','',0,'0000-00-00',0.00,0.00,0,0,0,1407830763,1407830763,'0000-00-00 00:00:00','112.25.201.74',1,0,0,NULL,'0',0,0,'','','','','','13581351244',0,0.00,NULL,NULL),(43,'bgggggg@qq.cn','bgggggg','6d2404ac48fa7e1dc1220cdf449032b8','','',0,'0000-00-00',0.00,0.00,0,0,0,1407837919,1407837919,'0000-00-00 00:00:00','175.2.122.4',1,0,0,NULL,'0',0,0,'','','','','','13422222223',0,0.00,NULL,NULL),(44,'942186675@qq.com','yzd2530863','00ff23680fa6ae08e7e1487c0b31d17c','','',0,'0000-00-00',0.00,0.00,0,0,0,1408099863,1408099863,'0000-00-00 00:00:00','115.44.124.28',1,0,0,NULL,'0',0,0,'','','','','','15971047714',0,0.00,NULL,NULL),(45,'1233@2123.sd','12333','4297f44b13955235245b2497399d7a93','','',0,'0000-00-00',0.00,0.00,0,0,0,1408119852,1408119852,'0000-00-00 00:00:00','111.204.254.3',1,0,0,NULL,'0',0,0,'','','','','','123123123123',0,0.00,NULL,NULL),(46,'essl@126.com','testttt','cacec053fc79640adb9f3b44fae23e90','','',0,'0000-00-00',0.00,0.00,0,0,0,1408415214,1408415214,'0000-00-00 00:00:00','60.10.97.66',1,0,0,NULL,'0',0,0,'','','','','','12910000000',0,0.00,NULL,NULL),(47,'yanzheng@qq.com','yanzheng','d305300c54c579d43e63b104fae7c52c','','',0,'0000-00-00',0.00,0.00,0,0,0,1408431916,1408431916,'0000-00-00 00:00:00','59.108.32.210',1,0,0,NULL,'0',0,0,'','','','','','13555555555',0,0.00,NULL,NULL),(49,'ttx@qq.com','kks5415','49e6a34bded272aa2b41e12530f71b9a','','',0,'0000-00-00',0.00,0.00,0,0,0,1408830375,1408830375,'0000-00-00 00:00:00','119.181.19.98',1,0,0,NULL,'0',0,0,'','','','','','15092622216',0,0.00,NULL,NULL),(50,'cqzx55@163.com','cqzx55','acc1dc6f2ebe4d7ef6f7ceb2f456c26e','','',0,'0000-00-00',0.00,0.00,0,0,0,1409119989,1409119989,'0000-00-00 00:00:00','183.228.6.207',1,0,0,NULL,'0',0,0,'','','','','','1388888888',0,0.00,NULL,NULL),(51,'1111@123.com','1111','1bbd886460827015e5d605ed44252251','','',0,'0000-00-00',0.00,0.00,0,0,0,1409128897,1409128897,'0000-00-00 00:00:00','49.71.241.223',1,0,0,NULL,'0',0,0,'','','','','','11111111111',0,0.00,NULL,NULL),(52,'sadsadsa@qq.com','asdsadsa','1a18886587c2efa7b720554ff646d482','','',0,'0000-00-00',0.00,0.00,0,0,0,1409378901,1409378901,'0000-00-00 00:00:00','223.81.197.243',1,0,0,NULL,'0',0,0,'','','','','','13888888888',0,0.00,NULL,NULL),(53,'123456@qq.com','hhggz','e10adc3949ba59abbe56e057f20f883e','','',0,'0000-00-00',0.00,0.00,0,0,0,1409452041,1409452041,'0000-00-00 00:00:00','123.126.23.2',1,0,0,NULL,'0',0,0,'','','','','','13912345611',0,0.00,NULL,NULL),(54,'','weixin349','0591a033579a5dd4a317c3abdcacfcf1','','',0,'0000-00-00',0.00,0.00,60,0,0,0,1409731832,'0000-00-00 00:00:00','114.239.197.54',1,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL),(55,'','weixin350','9d3d8d05f49915daaa7e57fca819c9e1','','',0,'0000-00-00',0.00,0.00,0,0,0,0,0,'0000-00-00 00:00:00','',0,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL);
/*!40000 ALTER TABLE `ecs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_virtual_card`
--

DROP TABLE IF EXISTS `ecs_virtual_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_virtual_card`
--

LOCK TABLES `ecs_virtual_card` WRITE;
/*!40000 ALTER TABLE `ecs_virtual_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_virtual_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_volume_price`
--

DROP TABLE IF EXISTS `ecs_volume_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_volume_price`
--

LOCK TABLES `ecs_volume_price` WRITE;
/*!40000 ALTER TABLE `ecs_volume_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_volume_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_vote`
--

DROP TABLE IF EXISTS `ecs_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_vote`
--

LOCK TABLES `ecs_vote` WRITE;
/*!40000 ALTER TABLE `ecs_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_vote_log`
--

DROP TABLE IF EXISTS `ecs_vote_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_vote_log`
--

LOCK TABLES `ecs_vote_log` WRITE;
/*!40000 ALTER TABLE `ecs_vote_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_vote_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_vote_option`
--

DROP TABLE IF EXISTS `ecs_vote_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_vote_option`
--

LOCK TABLES `ecs_vote_option` WRITE;
/*!40000 ALTER TABLE `ecs_vote_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_vote_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_weixin_bonus`
--

DROP TABLE IF EXISTS `ecs_weixin_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_weixin_bonus` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `type_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_weixin_bonus`
--

LOCK TABLES `ecs_weixin_bonus` WRITE;
/*!40000 ALTER TABLE `ecs_weixin_bonus` DISABLE KEYS */;
INSERT INTO `ecs_weixin_bonus` VALUES (1,4);
/*!40000 ALTER TABLE `ecs_weixin_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_weixin_cfg`
--

DROP TABLE IF EXISTS `ecs_weixin_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_weixin_cfg` (
  `cfg_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `cfg_name` varchar(64) NOT NULL DEFAULT '',
  `cfg_value` varchar(100) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`cfg_id`),
  UNIQUE KEY `cfg_name` (`cfg_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_weixin_cfg`
--

LOCK TABLES `ecs_weixin_cfg` WRITE;
/*!40000 ALTER TABLE `ecs_weixin_cfg` DISABLE KEYS */;
INSERT INTO `ecs_weixin_cfg` VALUES (1,'murl','mobile/','yes'),(2,'baseurl','http://m2.i7c.com.cn/','yes');
/*!40000 ALTER TABLE `ecs_weixin_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_weixin_config`
--

DROP TABLE IF EXISTS `ecs_weixin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_weixin_config` (
  `id` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `appid` char(18) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `access_token` char(150) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_weixin_config`
--

LOCK TABLES `ecs_weixin_config` WRITE;
/*!40000 ALTER TABLE `ecs_weixin_config` DISABLE KEYS */;
INSERT INTO `ecs_weixin_config` VALUES (1,'ocqyal1395748575','wx741ecd98d80997bf','f758bd1fba6377ee189fe8a70fb0077b','',1386912383);
/*!40000 ALTER TABLE `ecs_weixin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_weixin_keywords`
--

DROP TABLE IF EXISTS `ecs_weixin_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_weixin_keywords` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `pic` varchar(80) NOT NULL,
  `pic_tit` varchar(80) NOT NULL,
  `desc` text NOT NULL,
  `pic_url` varchar(80) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_weixin_keywords`
--

LOCK TABLES `ecs_weixin_keywords` WRITE;
/*!40000 ALTER TABLE `ecs_weixin_keywords` DISABLE KEYS */;
INSERT INTO `ecs_weixin_keywords` VALUES (90,'帮助','help',1,'亲，如果想买【商品信息】里没有。\r\n输入【XX】XX表示您想购买东西的关键字\r\n如果您更喜欢传统的网页购物，请点击<a href=\"http://m2.i7c.com.cn\">触屏版购物</a>\r\n--------其他帮助-------\r\n输入【积分规则】查看积分获取规则\r\n','','','','',130,1),(109,'帮助中文','帮助',1,'乐儿：亲，如果想买【商品信息】里没有。\r\n输入【XX】XX表示您想购买东西的关键字\r\n如果您更喜欢传统的网页购物，请点击<a href=\"http://m2.i7c.com.cn\">触屏版购物</a>\r\n--------其他帮助-------\r\n输入【积分规则】查看积分获取规则\r\n','','','','',1,1),(91,'你好','你好',1,'您好，我是聚天地之灵气，集万物之精华……（此处略去3万字）【有什们可以帮您的吗？\r\n','','','','',11,1),(100,'图文消息测试','图文消息',2,'','','图文消息的测试标题','其才网络专注于在信息科技领域中向客户提供商业解决方案，是专业的互联网服务解决方案提供商和网络营销服务专家，为用户提供一体化的网络营销整体解决方案。主要提供以网络营销为核心目标的网站建设、网络营销推广、专业化的网站管理和网站优化、网络应用系统定制开发和网络基础业务。我们将计算机技术与商业应用完美结合起来，以使我们的客户可以在快速发展的信息科技领域中获得更有效的竞争力。 ','http://www.i7c.com.cn/',72,1),(105,'文本消息测试','文本消息',1,'其才网络欢迎您！','','','','',67,1);
/*!40000 ALTER TABLE `ecs_weixin_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_weixin_lang`
--

DROP TABLE IF EXISTS `ecs_weixin_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_weixin_lang` (
  `lang_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(64) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_weixin_lang`
--

LOCK TABLES `ecs_weixin_lang` WRITE;
/*!40000 ALTER TABLE `ecs_weixin_lang` DISABLE KEYS */;
INSERT INTO `ecs_weixin_lang` VALUES (1,'regmsg','欢迎关注其才网络官方微信服务平台！\r\n');
/*!40000 ALTER TABLE `ecs_weixin_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_weixin_menu`
--

DROP TABLE IF EXISTS `ecs_weixin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_weixin_menu` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `weixin_key` varchar(255) NOT NULL DEFAULT '',
  `links` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `weixin_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_weixin_menu`
--

LOCK TABLES `ecs_weixin_menu` WRITE;
/*!40000 ALTER TABLE `ecs_weixin_menu` DISABLE KEYS */;
INSERT INTO `ecs_weixin_menu` VALUES (43,'热卖商品',1,'','hot','',50,0,38),(44,'促销活动',1,'','promote','',50,0,38),(38,'商品信息',1,'','shop','',1,0,0),(39,'会员功能',1,'','member','http://www.mb5.com.cn',2,0,0),(40,'更多..',1,'','more','',3,0,0),(41,'新品上市',1,'','new','',50,0,38),(42,'精品推荐',1,'','best','',50,0,38),(46,'重新绑定',1,'','cxbd','',5,0,39),(47,'会员中心',1,'','member','',4,0,39),(48,'帮助',1,'帮助','help','',3,0,40),(49,'微商城',1,'','index','http://m2.i7c.com.cn/mobile/index.php',0,1,40),(50,'文本消息',1,'','文本消息','',5,0,40),(51,'图文消息',1,'','图文消息','',4,0,40),(52,'订单查询',1,'','ddcx','',2,0,39),(53,'快递查询',1,'','kdcx','',3,0,39),(54,'帐户资金',1,'','jfcx','',1,0,39),(55,'签到',1,'','qiandao','',1,0,40);
/*!40000 ALTER TABLE `ecs_weixin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_weixin_point`
--

DROP TABLE IF EXISTS `ecs_weixin_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_weixin_point` (
  `point_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `point_name` varchar(64) NOT NULL DEFAULT '',
  `point_value` int(3) unsigned NOT NULL,
  `point_num` int(3) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`point_id`),
  UNIQUE KEY `option_name` (`point_name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_weixin_point`
--

LOCK TABLES `ecs_weixin_point` WRITE;
/*!40000 ALTER TABLE `ecs_weixin_point` DISABLE KEYS */;
INSERT INTO `ecs_weixin_point` VALUES (1,'new',10,1,'yes'),(2,'best',10,1,'yes'),(3,'hot',10,1,'yes'),(4,'cxbd',10,1,'yes'),(5,'ddcx',10,1,'yes'),(6,'kdcx',10,1,'yes'),(8,'qiandao',20,1,'yes'),(11,'promote',10,1,'yes');
/*!40000 ALTER TABLE `ecs_weixin_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_weixin_point_record`
--

DROP TABLE IF EXISTS `ecs_weixin_point_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_weixin_point_record` (
  `pr_id` int(7) NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `point_name` varchar(64) NOT NULL,
  `num` int(5) NOT NULL,
  `lasttime` int(10) NOT NULL,
  `datelinie` int(10) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_weixin_point_record`
--

LOCK TABLES `ecs_weixin_point_record` WRITE;
/*!40000 ALTER TABLE `ecs_weixin_point_record` DISABLE KEYS */;
INSERT INTO `ecs_weixin_point_record` VALUES (39,'of5p2t4y2oU5CEzWNGXNdZVnX2Q4','hot',1,1402388237,1402039306),(40,'obBzUjjfy5bQpa2P1YGL8aWxa4d4','hot',1,1409730882,1409730882),(41,'obBzUjjfy5bQpa2P1YGL8aWxa4d4','new',1,1409730911,1409730911),(42,'obBzUjjfy5bQpa2P1YGL8aWxa4d4','promote',1,1409731635,1409731635),(43,'obBzUjjfy5bQpa2P1YGL8aWxa4d4','best',1,1409731980,1409731980),(44,'obBzUjjfy5bQpa2P1YGL8aWxa4d4','qiandao',1,1409733558,1409733558);
/*!40000 ALTER TABLE `ecs_weixin_point_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_weixin_user`
--

DROP TABLE IF EXISTS `ecs_weixin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_weixin_user` (
  `uid` int(7) NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `language` varchar(50) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(10) unsigned NOT NULL,
  `localimgurl` varchar(200) NOT NULL,
  `setp` smallint(2) unsigned NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=351 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_weixin_user`
--

LOCK TABLES `ecs_weixin_user` WRITE;
/*!40000 ALTER TABLE `ecs_weixin_user` DISABLE KEYS */;
INSERT INTO `ecs_weixin_user` VALUES (348,0,'of5p2t4y2oU5CEzWNGXNdZVnX2Q4','',0,'','','','','',0,'',3,'weixin348','1005023937'),(349,0,'obBzUjjfy5bQpa2P1YGL8aWxa4d4','',0,'','','','','',0,'',3,'weixin349',''),(350,0,'obBzUjkhfu2jI9i38el5mOohCFT4','',0,'','','','','',0,'',3,'weixin350','');
/*!40000 ALTER TABLE `ecs_weixin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_wholesale`
--

DROP TABLE IF EXISTS `ecs_wholesale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_wholesale`
--

LOCK TABLES `ecs_wholesale` WRITE;
/*!40000 ALTER TABLE `ecs_wholesale` DISABLE KEYS */;
INSERT INTO `ecs_wholesale` VALUES (1,21,'金立 A30','1,2','a:1:{i:0;a:2:{s:4:\"attr\";a:1:{i:120;s:1:\"0\";}s:7:\"qp_list\";a:2:{i:0;a:2:{s:8:\"quantity\";i:50;s:5:\"price\";d:1700;}i:1;a:2:{s:8:\"quantity\";i:100;s:5:\"price\";d:1680;}}}}',1);
/*!40000 ALTER TABLE `ecs_wholesale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-22 14:35:59