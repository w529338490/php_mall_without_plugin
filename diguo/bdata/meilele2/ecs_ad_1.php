<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_ad`;");
E_C("CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL auto_increment,
  `position_id` smallint(5) unsigned NOT NULL default '0',
  `media_type` tinyint(3) unsigned NOT NULL default '0',
  `ad_name` varchar(60) NOT NULL default '',
  `ad_link` varchar(255) NOT NULL default '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(11) NOT NULL default '0',
  `link_man` varchar(60) NOT NULL default '',
  `link_email` varchar(60) NOT NULL default '',
  `link_phone` varchar(60) NOT NULL default '',
  `click_count` mediumint(8) unsigned NOT NULL default '0',
  `enabled` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_ad` values('1','1','0','首页-顶部通栏广告','','1385551168024731458.jpg','1385481600','1482768000','','','','85','1');");
E_D("replace into `ecs_ad` values('2','2','0','首页-网站公告顶部广告','','1407224949631407950.jpg','1385481600','1482768000','','','','29','1');");
E_D("replace into `ecs_ad` values('3','3','0','首页-团购广告','group_buy.php?act=view&id=2','1385561496734639703.jpg','1385481600','1482768000','','','','39','1');");
E_D("replace into `ecs_ad` values('4','4','0','首页-新品广告1','','1385562976459503572.jpg','1385481600','1482768000','','','','9','1');");
E_D("replace into `ecs_ad` values('5','4','0','首页-新品广告2','','1385562986080802298.jpg','1385481600','1482768000','','','','30','1');");
E_D("replace into `ecs_ad` values('6','4','0','首页-新品广告3','','1385562997212489804.jpg','1385481600','1482768000','','','','5','1');");
E_D("replace into `ecs_ad` values('7','4','0','首页-新品广告4','','1385563008900654744.jpg','1385481600','1482768000','','','','4','1');");
E_D("replace into `ecs_ad` values('8','4','0','首页-新品广告5','','1385563020969481163.jpg','1385481600','1482768000','','','','1','1');");
E_D("replace into `ecs_ad` values('9','4','0','首页-新品广告6','','1385563031696648334.jpg','1385481600','1482768000','','','','9','1');");
E_D("replace into `ecs_ad` values('10','4','0','首页-新品广告7','','1385563042278486683.jpg','1385481600','1482768000','','','','15','1');");
E_D("replace into `ecs_ad` values('11','4','0','首页-新品广告8','','1385563061973622412.jpg','1385481600','1482768000','','','','3','1');");
E_D("replace into `ecs_ad` values('12','5','0','首页-精品广告1','','1385563785486596108.jpg','1385481600','1482768000','','','','6','1');");
E_D("replace into `ecs_ad` values('13','5','0','首页-精品广告2','','1385563796223516241.jpg','1385481600','1482768000','','','','8','1');");
E_D("replace into `ecs_ad` values('14','5','0','首页-精品广告3','','1385563806418900698.jpg','1385481600','1482768000','','','','9','1');");
E_D("replace into `ecs_ad` values('15','5','0','首页-精品广告4','','1385563817924225430.jpg','1385481600','1482768000','','','','6','1');");
E_D("replace into `ecs_ad` values('16','5','0','首页-精品广告5','','1385563826309356310.jpg','1385481600','1482768000','','','','2','1');");
E_D("replace into `ecs_ad` values('17','5','0','首页-精品广告6','','1385563836174341330.jpg','1385481600','1482768000','','','','1','1');");
E_D("replace into `ecs_ad` values('18','5','0','首页-精品广告7','','1385563849778664955.jpg','1385481600','1482768000','','','','1','1');");
E_D("replace into `ecs_ad` values('19','5','0','首页-精品广告8','','1385563862235281116.jpg','1385481600','1482768000','','','','1','1');");
E_D("replace into `ecs_ad` values('20','6','0','首页-分类ID1-左侧广告','','1385565216752788626.jpg','1385481600','1482768000','','','','4','1');");
E_D("replace into `ecs_ad` values('21','7','0','首页-分类ID1-中间广告1','','1385565301823647496.jpg','1385481600','1482768000','','','','10','1');");
E_D("replace into `ecs_ad` values('22','7','0','首页-分类ID1-中间广告2','','1385565313973601364.jpg','1385481600','1482768000','','','','6','1');");
E_D("replace into `ecs_ad` values('23','7','0','首页-分类ID1-中间广告3','','1385565325784594312.jpg','1385481600','1482768000','','','','3','1');");
E_D("replace into `ecs_ad` values('24','8','0','首页-分类ID1-右侧广告','http://m2.i7c.com.cn/goods-2.html','1385565388950769615.jpg','1385481600','1482768000','','','','3','1');");
E_D("replace into `ecs_ad` values('25','9','0','首页-分类ID1-底部广告1','','1385565513361590387.jpg','1385481600','1482768000','','','','0','1');");
E_D("replace into `ecs_ad` values('26','9','0','首页-分类ID1-底部广告2','','1385565524012945886.jpg','1385481600','1482768000','','','','1','1');");
E_D("replace into `ecs_ad` values('27','9','0','首页-分类ID1-底部广告3','','1385565535843814607.jpg','1385481600','1482768000','','','','7','1');");
E_D("replace into `ecs_ad` values('28','9','0','首页-分类ID1-底部广告4','','1385565546883726827.jpg','1385481600','1482768000','','','','4','1');");
E_D("replace into `ecs_ad` values('29','9','0','首页-分类ID1-底部广告5','','1385565566388673167.jpg','1385481600','1482768000','','','','1','1');");
E_D("replace into `ecs_ad` values('30','10','0','凯撒豪庭','','1385567264349425711.jpg','1385481600','1482768000','','','','18','1');");
E_D("replace into `ecs_ad` values('31','10','0','韩菲尔','','1385567283471023198.jpg','1385481600','1482768000','','','','7','1');");
E_D("replace into `ecs_ad` values('32','10','0','蒂美悦','','1385567298962379604.jpg','1385481600','1482768000','','','','5','1');");
E_D("replace into `ecs_ad` values('33','10','0','卡富亚','','1385567321404680080.jpg','1385481600','1482768000','','','','2','1');");
E_D("replace into `ecs_ad` values('34','10','0','青春城堡','','1385567338038094367.jpg','1385481600','1482768000','','','','6','1');");
E_D("replace into `ecs_ad` values('35','10','0','林中鹰','','1385567354148399323.jpg','1385481600','1482768000','','','','3','1');");
E_D("replace into `ecs_ad` values('36','10','0','TCL','','1385567377550016441.jpg','1385481600','1482768000','','','','4','1');");
E_D("replace into `ecs_ad` values('37','10','0','西门子','','1385567506769611793.jpg','1385481600','1482768000','','','','3','1');");
E_D("replace into `ecs_ad` values('38','10','0','贝尔地板','','1385567523147726052.jpg','1385481600','1482768000','','','','1','1');");
E_D("replace into `ecs_ad` values('39','10','0','艾玛诗','','1385567539283904426.jpg','1385481600','1482768000','','','','7','1');");
E_D("replace into `ecs_ad` values('40','10','0','梦娜丝','','1385567557155880519.jpg','1385481600','1482768000','','','','7','1');");
E_D("replace into `ecs_ad` values('41','10','0','赛朵','','1385567570526008030.jpg','1385481600','1482768000','','','','1','1');");
E_D("replace into `ecs_ad` values('42','10','0','优曼家纺','','1385567592611729011.jpg','1385481600','1482768000','','','','2','1');");
E_D("replace into `ecs_ad` values('43','10','0','唯萨','','1385567609421350373.jpg','1385481600','1482768000','','','','2','1');");
E_D("replace into `ecs_ad` values('147','52','3','新品家具，极速抢“鲜”','','新品家具，极速抢“鲜”','1386086400','1483372800','','','','3','1');");
E_D("replace into `ecs_ad` values('148','52','3','特价商品，抄底特卖专场!','','特价商品，抄底特卖专场!','1386086400','1483372800','','','','2','1');");
E_D("replace into `ecs_ad` values('46','12','0','灯饰钜惠！我和美美的约定','','1385629104062757737.jpg','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('47','12','0','6周年卫浴特卖','','1385629143233483304.jpg','1385568000','1482854400','','','','2','1');");
E_D("replace into `ecs_ad` values('48','12','0','8大最受欢迎地板','','1385629185383198062.jpg','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('49','12','0','美乐乐6周年厨卫盛宴','','1385629203743519421.jpg','1385568000','1482854400','','','','1','1');");
E_D("replace into `ecs_ad` values('50','12','0','全新美乐乐Iphone客户端！','','1385629219002800898.jpg','1385568000','1482854400','','','','1','1');");
E_D("replace into `ecs_ad` values('51','13','0','分类频道页-分类ID4-楼层左侧广告1','','1385637044638399758.jpg','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('52','13','0','分类频道页-分类ID4-楼层左侧广告2','','1385637055173837465.jpg','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('53','14','0','分类频道页-分类ID4-楼层底部广告1','','1385639850522276745.jpg','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('54','14','0','分类频道页-分类ID4-楼层底部广告2','','1385639861747015482.jpg','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('55','14','0','分类频道页-分类ID4-楼层底部广告3','','1385639872196664630.jpg','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('56','14','0','分类频道页-分类ID4-楼层底部广告4','','1385639882019449849.jpg','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('57','15','0','分类频道页-分类ID1-最新促销活动-图片','','1385641707679275672.jpg','1385568000','1482854400','','','','2','1');");
E_D("replace into `ecs_ad` values('58','16','3','现货清仓！半卖半送!','','现货清仓！半卖半送!','1385568000','1388160000','','','','0','1');");
E_D("replace into `ecs_ad` values('59','16','3','终极好家具，进口全实木——低至6.8折，我和我的小','','终极好家具，进口全实木——低至6.8折，我和我的小','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('60','16','3','打造儿童家居新天地','','打造儿童家居新天地','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('61','16','3','美乐乐/SKG6周年狂欢购！','','美乐乐/SKG6周年狂欢购！','1385568000','1482854400','','','','1','1');");
E_D("replace into `ecs_ad` values('62','16','3','SKG引爆炸弹价，全场包邮！','','SKG引爆炸弹价，全场包邮！','1385568000','1482854400','','','','0','1');");
E_D("replace into `ecs_ad` values('63','17','0','团购页-通栏广告','','1385739221485486702.jpg','1385654400','1482940800','','','','1','1');");
E_D("replace into `ecs_ad` values('64','18','0','文章页-通栏广告','','1385807709770719903.jpg','1385740800','1483027200','','','','2','1');");
E_D("replace into `ecs_ad` values('65','19','0','文章页-右侧广告','','1385812505707871830.jpg','1385740800','1483027200','','','','3','1');");
E_D("replace into `ecs_ad` values('66','20','0','秀家-左侧广告','','1387380814051147257.jpg','1385827200','1483113600','','','','33','1');");
E_D("replace into `ecs_ad` values('67','21','0','PTC陶瓷暖风机 ¥369.00','','1385901421527538016.jpg','1385827200','1483113600','','','','0','1');");
E_D("replace into `ecs_ad` values('68','21','0','爱丽丝床品四件套 ¥299.00','','1385901457542076573.jpg','1385827200','1483113600','','','','0','1');");
E_D("replace into `ecs_ad` values('69','21','0','紫色水纹毛巾被 ¥99.00','','1385901485766604226.jpg','1385827200','1483113600','','','','0','1');");
E_D("replace into `ecs_ad` values('70','21','0','圆形珍珠相框 ¥28.00','','1385901528449836839.jpg','1385827200','1483113600','','','','0','1');");
E_D("replace into `ecs_ad` values('71','23','0','特惠套装页-顶部广告1','','1385912682519019507.jpg','1385827200','1483113600','','','','0','1');");
E_D("replace into `ecs_ad` values('72','24','0','特惠套装页-顶部广告2','','1385912717354520013.jpg','1385827200','1483113600','','','','1','1');");
E_D("replace into `ecs_ad` values('73','25','0','首页-顶部促销广告','','1385972141450905269.jpg','1385913600','1483200000','','','','34','1');");
E_D("replace into `ecs_ad` values('74','26','0','首页-导航菜单-分类ID1-推荐品牌1','','1385973893624934679.jpg','1385913600','1483200000','凯撒豪庭','','','3','1');");
E_D("replace into `ecs_ad` values('75','26','0','首页-导航菜单-分类ID1-推荐品牌2','','1385973862171596810.jpg','1385913600','1483200000','韩菲尔','','','1','1');");
E_D("replace into `ecs_ad` values('76','26','0','首页-导航菜单-分类ID1-推荐品牌3','','1385973873999702874.jpg','1385913600','1483200000','蒂美悦','','','1','1');");
E_D("replace into `ecs_ad` values('77','26','0','首页-导航菜单-分类ID1-推荐品牌4','','1385973884138818577.jpg','1385913600','1483200000','卡富亚','','','1','1');");
E_D("replace into `ecs_ad` values('78','27','0','商品页-顶部通栏广告','','1385990367544595004.jpg','1385913600','1483200000','','','','9','1');");
E_D("replace into `ecs_ad` values('79','28','0','首页-分类ID2-左侧广告','','1386081752958196621.jpg','1386000000','1483286400','','','','2','1');");
E_D("replace into `ecs_ad` values('80','29','0','首页-分类ID2-中间广告1','','1386081778055926198.jpg','1386000000','1483286400','','','','4','1');");
E_D("replace into `ecs_ad` values('81','29','0','首页-分类ID2-中间广告2','','1386081791567609402.jpg','1386000000','1483286400','','','','3','1');");
E_D("replace into `ecs_ad` values('82','29','0','首页-分类ID2-中间广告3','','1386081812051772280.jpg','1386000000','1483286400','','','','4','1');");
E_D("replace into `ecs_ad` values('83','30','0','首页-分类ID2-右侧广告','','1386081835306877737.jpg','1386000000','1483286400','','','','7','1');");
E_D("replace into `ecs_ad` values('84','31','0','首页-分类ID2-底部广告1','','1386081958889071005.jpg','1386000000','1483286400','','','','3','1');");
E_D("replace into `ecs_ad` values('85','31','0','首页-分类ID2-底部广告2','','1386081970561689872.jpg','1386000000','1483286400','','','','2','1');");
E_D("replace into `ecs_ad` values('86','31','0','首页-分类ID2-底部广告3','','1386081981701517524.jpg','1386000000','1483286400','','','','2','1');");
E_D("replace into `ecs_ad` values('87','31','0','首页-分类ID2-底部广告4','','1386081994631606298.jpg','1386000000','1483286400','','','','1','1');");
E_D("replace into `ecs_ad` values('88','31','0','首页-分类ID2-底部广告5','','1386082009648973384.jpg','1386000000','1483286400','','','','1','1');");
E_D("replace into `ecs_ad` values('89','32','0','首页-分类ID3-左侧广告','','1386082116637576384.jpg','1386000000','1483286400','','','','1','1');");
E_D("replace into `ecs_ad` values('90','33','0','首页-分类ID3-中间广告1','','1386082151147099491.jpg','1386000000','1483286400','','','','5','1');");
E_D("replace into `ecs_ad` values('91','33','0','首页-分类ID3-中间广告2','','1386082169831168832.jpg','1386000000','1483286400','','','','8','1');");
E_D("replace into `ecs_ad` values('92','33','0','首页-分类ID3-中间广告3','','1386082196812000842.jpg','1386000000','1483286400','','','','3','1');");
E_D("replace into `ecs_ad` values('93','34','0','首页-分类ID3-右侧广告','','1386082215676242714.jpg','1386000000','1483286400','','','','1','1');");
E_D("replace into `ecs_ad` values('94','35','0','首页-分类ID3-底部广告1','','1386082288805741032.jpg','1386000000','1483286400','','','','4','1');");
E_D("replace into `ecs_ad` values('95','35','0','首页-分类ID3-底部广告2','','1386082302015538300.jpg','1386000000','1483286400','','','','4','1');");
E_D("replace into `ecs_ad` values('96','35','0','首页-分类ID3-底部广告3','','1386082324636393380.jpg','1386000000','1483286400','','','','3','1');");
E_D("replace into `ecs_ad` values('97','35','0','首页-分类ID3-底部广告4','','1386082337095214396.jpg','1386000000','1483286400','','','','1','1');");
E_D("replace into `ecs_ad` values('98','35','0','首页-分类ID3-底部广告5','','1386082351337103577.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('99','36','0','分类频道页-分类ID5-楼层左侧广告1','','1386084593087143883.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('100','36','0','分类频道页-分类ID5-楼层左侧广告2','','1386084611448317635.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('101','37','0','分类频道页-分类ID5-楼层底部广告1','','1386084754854268370.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('102','37','0','分类频道页-分类ID5-楼层底部广告2','','1386084765565627916.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('103','37','0','分类频道页-分类ID5-楼层底部广告3','','1386084776104092568.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('104','37','0','分类频道页-分类ID5-楼层底部广告4','','1386084793386473158.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('105','38','0','分类频道页-分类ID6-楼层左侧广告1','','1386084878898640541.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('106','38','0','分类频道页-分类ID6-楼层左侧广告2','','1386084892380371385.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('107','39','0','分类频道页-分类ID6-楼层底部广告1','','1386084959785983329.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('108','39','0','分类频道页-分类ID6-楼层底部广告2','','1386084970892829075.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('109','39','0','分类频道页-分类ID6-楼层底部广告3','','1386084981624962223.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('110','39','0','分类频道页-分类ID6-楼层底部广告4','','1386085002924029593.jpg','1386000000','1483286400','','','','0','1');");
E_D("replace into `ecs_ad` values('111','40','0','到店体验0元送豪礼！','','1386145475382169329.jpg','1386086400','1483372800','','','','2','1');");
E_D("replace into `ecs_ad` values('112','40','0','免费设计，家电轻松得！','','1386145499633052733.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('113','40','0','荧屏家具大咖秀','','1386145520802274294.jpg','1386086400','1483372800','','','','2','1');");
E_D("replace into `ecs_ad` values('114','40','0','吃货的三大境界','','1386145535592291773.jpg','1386086400','1483372800','','','','1','1');");
E_D("replace into `ecs_ad` values('115','40','0','打造儿童家居天地','','1386145557289874100.jpg','1386086400','1483372800','','','','3','1');");
E_D("replace into `ecs_ad` values('116','41','0','顶级分类页-分类ID1-品牌广告1','','1386146346502910325.gif','1386086400','1483372800','凯撒豪庭','','','2','1');");
E_D("replace into `ecs_ad` values('117','41','0','顶级分类页-分类ID1-品牌广告2','','1386146357216516045.gif','1386086400','1483372800','韩菲尔','','','0','1');");
E_D("replace into `ecs_ad` values('118','41','0','顶级分类页-分类ID1-品牌广告3','','1386146368753039290.gif','1386086400','1483372800','卡富亚','','','0','1');");
E_D("replace into `ecs_ad` values('119','41','0','顶级分类页-分类ID1-品牌广告4','','1386146381585913683.gif','1386086400','1483372800','蒂美悦','','','0','1');");
E_D("replace into `ecs_ad` values('120','41','0','顶级分类页-分类ID1-品牌广告5','','1386146401944843869.gif','1386086400','1483372800','小童舍','','','0','1');");
E_D("replace into `ecs_ad` values('121','42','0','顶级分类页-分类ID1-新品广告1','','1386147814037570965.jpg','1386086400','1483372800','','','','3','1');");
E_D("replace into `ecs_ad` values('122','42','0','顶级分类页-分类ID1-新品广告2','','1386147829627874428.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('123','42','0','顶级分类页-分类ID1-新品广告3','','1386147840292242640.jpg','1386086400','1483372800','','','','1','1');");
E_D("replace into `ecs_ad` values('124','42','0','顶级分类页-分类ID1-新品广告4','','1386147851606949863.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('125','42','0','顶级分类页-分类ID1-新品广告5','','1386147864234767578.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('126','43','0','顶级分类页-分类ID1-热卖排行1','','1386148468302908812.jpg','1386086400','1483372800','','','','3','1');");
E_D("replace into `ecs_ad` values('127','43','0','顶级分类页-分类ID1-热卖排行2','','1386148480939796852.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('128','43','0','顶级分类页-分类ID1-热卖排行3','','1386148491356319919.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('129','44','0','顶级分类页-分类ID4-楼层左侧广告1','','1386149390639154108.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('130','44','0','顶级分类页-分类ID4-楼层左侧广告2','','1386149401074442847.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('131','44','0','顶级分类页-分类ID4-楼层左侧广告3','','1386149415004888945.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('132','45','0','顶级分类页-分类ID4-楼层右侧广告','','1386149462509553921.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('133','46','0','顶级分类页-分类ID5-楼层左侧广告1','','1386153503176931374.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('134','46','0','顶级分类页-分类ID5-楼层左侧广告2','','1386153520765573811.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('135','46','0','顶级分类页-分类ID5-楼层左侧广告3','','1386153532565786907.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('136','47','0','顶级分类页-分类ID5-楼层右侧广告1','','1386153556910478258.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('137','48','0','顶级分类页-分类ID6-楼层左侧广告1','','1386153727784449596.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('138','48','0','顶级分类页-分类ID6-楼层左侧广告2','','1386153738682789793.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('139','48','0','顶级分类页-分类ID6-楼层左侧广告3','','1386153752716745409.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('140','49','0','顶级分类页-分类ID6-楼层右侧广告','','1386153777577077036.jpg','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('141','50','0','顶级分类页-分类ID1-最新促销活动-图片','','1386154016906256632.jpg','1386086400','1483372800','','','345345345345','2','1');");
E_D("replace into `ecs_ad` values('142','51','3','打造儿童天地','','打造儿童天地','1386086400','1483372800','','','','1','1');");
E_D("replace into `ecs_ad` values('143','51','3','现货清仓/半卖半送','','现货清仓/半卖半送','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('144','51','3','终极好家具，进口全实木——低至6.8折，我和我的小伙伴们都惊呆了-活动-美乐乐家具网','','终极好家具，进口全实木——低至6.8折，我和我的小伙伴们都惊呆了-活动-美乐乐家具网','1386086400','1388678400','','','','0','1');");
E_D("replace into `ecs_ad` values('145','51','3','美乐乐/SKG6周年狂欢购','','美乐乐/SKG6周年狂欢购','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('146','51','3','SKG引爆炸弹价，全场包邮','','SKG引爆炸弹价，全场包邮','1386086400','1483372800','','','','0','1');");
E_D("replace into `ecs_ad` values('149','52','3','热卖家具，火爆疯狂抢购!','','热卖家具，火爆疯狂抢购!','1386086400','1483372800','','','','11','1');");
E_D("replace into `ecs_ad` values('172','61','0','触屏首页-轮播广告1','','1376962008930613613.jpg','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('173','61','0','触屏首页-轮播广告2','','1376962021988432562.jpg','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('174','61','0','触屏首页-轮播广告3','','1376962033066550718.jpg','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('175','61','0','触屏首页-轮播广告4','','1376962047868870319.jpg','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('176','61','0','触屏首页-轮播广告5','','1376962066922775366.jpg','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('177','62','0','家具城','category.php?c_id=1','1376962548135940550.png','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('178','62','0','建材城','category.php?c_id=2','1376962568788030173.png','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('179','62','0','家饰城','category.php?c_id=3','1376962586922173829.png','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('180','62','0','所有分类','cat_all.php','1376962605623168464.png','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('181','63','0','触屏首页-分类ID24-图片广告','','1376963472943928458.jpg','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('182','64','0','触屏首页-分类ID27-图片广告','','1376963510305719505.jpg','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('183','65','0','触屏首页-分类ID199-图片广告','','1376963547464408539.jpg','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('184','66','3','客服服务','article.php?act=detail&a_id=90','客服服务','1376928000','1379520000','','','','0','1');");
E_D("replace into `ecs_ad` values('185','66','3','服务到家','article.php?act=detail&a_id=90','服务到家','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('186','66','3','到店支付','article.php?act=detail&a_id=90','到店支付','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('187','66','3','售后服务','article.php?act=detail&a_id=90','售后服务','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('188','66','3','质量保证','article.php?act=detail&a_id=90','质量保证','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('189','67','3','copyright © 2005-2013 m.meilele.com','','copyright © 2005-2013 m.meilele.com','1376928000','1379520000','','','','0','1');");
E_D("replace into `ecs_ad` values('190','68','2','触屏首页-公司地址','','<a href=\"javascript:;\" class=\"label\">广州金沙洲体验馆</a>\r\n          <div class=\"hideMap\"> <a class=\"phone\" href=\"tel:020-81439005\"><span>抢购热线：020-81439005</span></a>\r\n            <dl>\r\n              <dt class=\"name\">地址：</dt>\r\n              <dd class=\"value\">广州市金沙洲建设大道1号中海金沙湾2号楼42，43号商铺</dd>\r\n            </dl>\r\n          </div>','1376928000','1474214400','','','','0','1');");
E_D("replace into `ecs_ad` values('191','69','3','触屏首页-400电话','','<a href=\"index.php\" style=\"margin-right:10px;\">首页</a><a href=\"user.php\" style=\"margin-right:10px;\">登录</a><a href=\"cart.php\">购物车</a><a class=\"at\" href=\"tel:4000098666\"><span class=\"tel_icon\"></span>400-0098000</a></span>','1376928000','1505750400','','','','0','1');");
E_D("replace into `ecs_ad` values('192','70','0','体验馆-顶部通栏广告','','1386410740593845033.jpg','1386345600','1483632000','','','','3','1');");
E_D("replace into `ecs_ad` values('193','71','0','体验馆-ID2-flash广告1','','1386489609310313079.jpg','1386432000','1483718400','','','','0','1');");
E_D("replace into `ecs_ad` values('194','71','0','体验馆-ID2-flash广告2','','1386489645637842899.jpg','1386432000','1483718400','','','','0','1');");
E_D("replace into `ecs_ad` values('195','71','0','体验馆-ID2-flash广告3','','1386489655683375036.jpg','1386432000','1483718400','','','','0','1');");
E_D("replace into `ecs_ad` values('196','71','0','体验馆-ID2-flash广告4','','1386489673346602821.JPG','1386432000','1483718400','','','','0','1');");
E_D("replace into `ecs_ad` values('197','72','0','搜索页-通栏广告','','1386733341987229055.jpg','1386691200','1483977600','','','','1','1');");
E_D("replace into `ecs_ad` values('198','73','0','搜索页-左侧广告','','1386733404898907100.jpg','1386691200','1483977600','','','','2','1');");
E_D("replace into `ecs_ad` values('199','74','0','搜索页-flash广告1','','1386733512531025061.jpg','1386691200','1483977600','','','','0','1');");
E_D("replace into `ecs_ad` values('200','74','0','搜索页-flash广告2','','1386733523185827927.jpg','1386691200','1483977600','','','','1','1');");
E_D("replace into `ecs_ad` values('201','74','0','搜索页-flash广告3','','1386733534164764270.jpg','1386691200','1483977600','','','','2','1');");
E_D("replace into `ecs_ad` values('202','74','0','搜索页-flash广告4','','1386733546009792097.jpg','1386691200','1483977600','','','','0','1');");
E_D("replace into `ecs_ad` values('203','75','0','专题页-活动广告1','','1387106370443195254.jpg','1387036800','1484323200','','','','15','1');");
E_D("replace into `ecs_ad` values('204','75','0','专题页-活动广告2','','1387106382772192977.jpg','1387036800','1484323200','','','','6','1');");
E_D("replace into `ecs_ad` values('205','75','0','专题页-活动广告3','','1387106395395051523.jpg','1387036800','1484323200','','','','5','1');");
E_D("replace into `ecs_ad` values('206','75','0','专题页-活动广告4','','1387106409970043190.jpg','1387036800','1484323200','','','','5','1');");
E_D("replace into `ecs_ad` values('207','76','0','体验馆-ID3-flash广告2','','1403152278214932035.jpg','1403107200','1405699200','','','','1','1');");

require("../../inc/footer.php");
?>
