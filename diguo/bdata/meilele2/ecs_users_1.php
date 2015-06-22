<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_users`;");
E_C("CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL auto_increment,
  `email` varchar(60) NOT NULL default '',
  `user_name` varchar(60) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `question` varchar(255) NOT NULL default '',
  `answer` varchar(255) NOT NULL default '',
  `sex` tinyint(1) unsigned NOT NULL default '0',
  `birthday` date NOT NULL default '0000-00-00',
  `user_money` decimal(10,2) NOT NULL default '0.00',
  `frozen_money` decimal(10,2) NOT NULL default '0.00',
  `pay_points` int(10) unsigned NOT NULL default '0',
  `rank_points` int(10) unsigned NOT NULL default '0',
  `address_id` mediumint(8) unsigned NOT NULL default '0',
  `reg_time` int(10) unsigned NOT NULL default '0',
  `last_login` int(11) unsigned NOT NULL default '0',
  `last_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL default '',
  `visit_count` smallint(5) unsigned NOT NULL default '0',
  `user_rank` tinyint(3) unsigned NOT NULL default '0',
  `is_special` tinyint(3) unsigned NOT NULL default '0',
  `ec_salt` varchar(10) default NULL,
  `salt` varchar(10) NOT NULL default '0',
  `parent_id` mediumint(9) NOT NULL default '0',
  `flag` tinyint(3) unsigned NOT NULL default '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL default '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) default NULL,
  `passwd_answer` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_users` values('1','test@qq.com','test','52b17e7b4ab557c063ddacd7b05cd95f','','','0','0000-00-00','0.00','0.00','22005','22005','1','1385779761','1391490620','0000-00-00 00:00:00','111.59.234.94','5248','0','0','5492','0','0','0','','','','','','131','0','0.00','','');");
E_D("replace into `ecs_users` values('2','343037703@qq.com','qscfr','233a3aa8ac444a27a536d966a7567eec','','','0','0000-00-00','0.00','0.00','0','0','2','1393912127','1393912127','0000-00-00 00:00:00','116.238.27.79','1','0','0','','0','0','0','','','','','','','0','0.00','','');");
E_D("replace into `ecs_users` values('3','52655@qq.com','haoing','e10adc3949ba59abbe56e057f20f883e','','','0','0000-00-00','0.00','0.00','0','0','0','1402661204','1402661204','0000-00-00 00:00:00','183.15.77.69','1','0','0',NULL,'0','0','0','','','','','','15272202365','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('4','garrach@163.com','garrach','8ba1754b742c94e0e751309dd053aa95','','','0','0000-00-00','0.00','0.00','0','0','0','1402716460','1402716460','0000-00-00 00:00:00','140.206.203.234','1','0','0',NULL,'0','0','0','','','','','','18717771264','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('5','Jssjj@11.com','Addd','e4ed0f5cd96be5f54b79863b71c81161','','','0','0000-00-00','0.00','0.00','0','0','3','1402838092','1402838092','0000-00-00 00:00:00','221.231.51.228','1','0','0',NULL,'0','0','0','','','','','','13976855436','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('6','335245034@qq.com','335245034@qq.com','c8837b23ff8aaa8a2dde915473ce0991','','','0','0000-00-00','0.00','0.00','0','0','0','1402900156','1402900156','0000-00-00 00:00:00','116.54.121.135','1','0','0',NULL,'0','0','0','','','','','','18999999999','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('7','gdxiejiahua@qq.com','gdxiejiahua','66c5230114aaacbdf0aff69bfba30d5d','','','0','0000-00-00','0.00','0.00','0','0','4','1402999245','1402999245','0000-00-00 00:00:00','219.131.217.79','1','0','0',NULL,'0','0','0','','','','','','13543881086','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('8','123123123@qq.com','kelln','9de99c0c893edca4579eb9cbfd15d727','','','0','0000-00-00','0.00','0.00','0','0','0','1403022346','1403022346','0000-00-00 00:00:00','139.202.187.163','1','0','0',NULL,'0','0','0','','','','','','11123212231','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('9','tommy@sd.com','wjt009','98c54876283ecc44f2df4cfa7b27ae79','','','0','0000-00-00','0.00','0.00','0','0','5','1403059580','1403059580','0000-00-00 00:00:00','115.60.133.89','1','0','0',NULL,'0','0','0','','','','','','18389988989','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('10','asdfasdf@163.com','asdfasdf','6a204bd89f3c8348afd5c77c717a097a','','','0','0000-00-00','0.00','0.00','0','0','6','1403065890','1403065890','0000-00-00 00:00:00','222.161.221.23','1','0','0',NULL,'0','0','0','','','','','','13345455','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('11','847614511@qq.com','yilvheifeng','70c3fb494f99ed2a1335d581f5c6aee0','','','0','0000-00-00','0.00','0.00','0','0','0','1403153728','1403153728','0000-00-00 00:00:00','61.177.159.118','1','0','0',NULL,'0','0','0','','','','','','18655555974','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('12','123123@QQ.QQ','123123','4297f44b13955235245b2497399d7a93','','','0','0000-00-00','0.00','0.00','0','0','0','1403498027','1403498027','0000-00-00 00:00:00','121.236.78.32','1','0','0',NULL,'0','0','0','','','','','','12312312311','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('13','skfdjfj3e@qq.con','123123123','d5c2300964916aa47bf81887135de3c8','','','0','0000-00-00','0.00','0.00','0','0','0','1403499259','1403499259','0000-00-00 00:00:00','121.236.78.32','1','0','0',NULL,'0','0','0','','','','','','5485345485634','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('14','464143874@qq.com','7410','324d1907d9ca6733d399b87affe48c74','','','0','0000-00-00','0.00','0.00','0','0','0','1403658417','1403658417','0000-00-00 00:00:00','61.177.159.118','1','0','0',NULL,'0','0','0','','','','','','15865898745','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('15','554111@qq.com','tangshibo','dba0dd148531d828e60d7e7956039993','','','0','0000-00-00','0.00','0.00','0','0','0','1403661961','1403661961','0000-00-00 00:00:00','222.209.111.88','1','0','0',NULL,'0','0','0','','','','','','18328700899','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('16','anpai@qq.com','anpai','495ea94476000abdd02c976e5c144d29','','','0','0000-00-00','0.00','0.00','0','0','0','1403744026','1403744026','0000-00-00 00:00:00','121.234.127.111','1','0','0',NULL,'0','0','0','','','','','','13921822716','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('17','308769000@qq.com','30876900','dc483e80a7a0bd9ef71d8cf973673924','','','0','0000-00-00','0.00','0.00','0','0','0','1404045995','1404045995','0000-00-00 00:00:00','58.39.88.6','1','0','0',NULL,'0','0','0','','','','','','15102171878','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('18','admin@126.com','aaaaaa','fed3e59d668159de91423f21a7c12dfa','','','0','0000-00-00','0.00','0.00','0','0','0','1404178867','1408762292','0000-00-00 00:00:00','180.168.219.218','3','0','0','861','0','0','0','','','','','','13815685622','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('19','www@126.com','wwww','e10adc3949ba59abbe56e057f20f883e','','','0','0000-00-00','0.00','0.00','0','0','0','1404186750','1404186750','0000-00-00 00:00:00','117.136.8.96','1','0','0',NULL,'0','0','0','','','','','','12369565652','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('20','249699062@qq.com','chinajshcg','4dd7fcd9d521784eedb25be4b436a258','','','0','1954-01-01','0.00','0.00','280','84','7','1404199679','1409726556','0000-00-00 00:00:00','114.239.197.54','8','3','0','2781','0','0','0','','','','','','18068205008','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('21','shenqin@live.com','shenqin','473076507730c67e7e1d6dff6a5612fe','','','0','0000-00-00','0.00','0.00','0','0','0','1404351339','1409023984','0000-00-00 00:00:00','183.141.222.208','7','0','0','3387','0','0','0','','','','','','13567393553','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('22','2937431186@qq.com','2937431186','6d9822b272cd337127e9d1925011f797','','','0','0000-00-00','0.00','0.00','0','0','8','1404617704','1404617704','0000-00-00 00:00:00','58.61.98.18','1','0','0',NULL,'0','0','0','','','','','','13316983328','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('23','ws323@111.NET','ws1234','5958bbe00ea7f1aafc8fcef3170d3011','','','0','0000-00-00','0.00','0.00','0','0','9','1404916931','1404917058','0000-00-00 00:00:00','61.52.74.34','2','0','0','2739','0','0','0','','','','','','13521451234','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('24','65492@qq.com','dayall','b1fd3f62a25b156cad41d27bd4c46d61','','','0','0000-00-00','0.00','0.00','0','0','10','1405411624','1405412567','0000-00-00 00:00:00','180.213.171.17','2','0','0','4322','0','0','0','','','','','','15222114455','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('25','870074900@qq.com','sizhe','647ba8a207681db98739a836066fc9d8','','','0','0000-00-00','0.00','0.00','0','0','0','1405491620','1405491620','0000-00-00 00:00:00','218.201.123.242','1','0','0',NULL,'0','0','0','','','','','','13953376439','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('26','a123456@126.com','a123456','dc483e80a7a0bd9ef71d8cf973673924','','','0','0000-00-00','0.00','0.00','0','0','0','1405651433','1405651433','0000-00-00 00:00:00','116.211.198.5','1','0','0',NULL,'0','0','0','','','','','','12345432234','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('27','123654@163.com','123654','fc607063906efa698848a2b1d8c0fbcc','','','0','0000-00-00','0.00','0.00','0','0','0','1405654461','1405654494','0000-00-00 00:00:00','27.16.33.239','2','0','0','4170','0','0','0','','','','','','12345678912','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('28','wuxingpeng@qq.com','wuxingpeng','58082821a122d8066056978800d79f79','','','0','0000-00-00','0.00','0.00','0','0','11','1405754433','1405754433','0000-00-00 00:00:00','116.238.171.183','1','0','0',NULL,'0','0','0','','','','','','18217614553','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('29','xiaomi@qq.com','xiaomi','ff5e66b76340c5636aa40e7c6a46628f','','','0','0000-00-00','0.00','0.00','0','0','12','1405755403','1405755403','0000-00-00 00:00:00','116.238.171.183','1','0','0',NULL,'0','0','0','','','','','','1234567890','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('30','545454@qq.com','545454','9cbf8a4dcb8e30682b927f352d6559a0','','','0','0000-00-00','0.00','0.00','0','0','0','1405828895','1405828895','0000-00-00 00:00:00','58.101.189.188','1','0','0',NULL,'0','0','0','','','','','','123456a','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('31','fengxiang@163.com','fengxiang','5afe1a982a93ee66906e453e0c761019','','','0','0000-00-00','0.00','0.00','0','0','0','1406013390','1406033180','0000-00-00 00:00:00','111.175.38.228','8','0','0','7217','0','0','0','','','','','','15926204949','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('32','admin123@admin123.com','admin123','0192023a7bbd73250516f069df18b500','','','0','0000-00-00','0.00','0.00','0','0','0','1406251336','1406251336','0000-00-00 00:00:00','221.218.15.14','1','0','0',NULL,'0','0','0','','','','','','13581811111','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('33','admin0123@admin0123.com','admin0123','9ce0b670ee24efe2d4e728c6875eff07','','','0','0000-00-00','0.00','0.00','0','0','0','1406255942','1406256370','0000-00-00 00:00:00','221.218.15.14','2','0','0','1606','0','0','0','','','','','','13581815555','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('34','782869779@qq.com','limingsheng','e5c67af5c99299e5b1f0820b267ac6b4','','','0','0000-00-00','0.00','0.00','0','0','13','1406430606','1408182395','0000-00-00 00:00:00','14.216.255.216','4','0','0','6307','0','0','0','','','','','','15916852053','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('35','admin01230@admin01230.com','admin01230','f05a887d8bd50225f767f3dcb155a297','','','0','0000-00-00','0.00','0.00','0','0','0','1406517749','1406528617','0000-00-00 00:00:00','221.218.14.125','2','0','0','7725','0','0','0','','','','','','13511110000','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('36','icebergrbs@qq.com','icebergrbs','0b72223440e127bcfe51ccd9b2f39ee7','','','0','0000-00-00','0.00','0.00','0','0','0','1406566702','1406566702','0000-00-00 00:00:00','118.182.170.229','1','0','0',NULL,'0','0','0','','','','','','18993756955','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('37','11@qqq.com','111','96e79218965eb72c92a549dd5a330112','','','0','0000-00-00','0.00','0.00','0','0','0','1407140433','1407140433','0000-00-00 00:00:00','182.119.27.41','1','0','0',NULL,'0','0','0','','','','','','1112222332','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('38','22915822@qq.com','zwj900124','c39d3e09f029f1be48e41f8f5aad3a56','','','0','0000-00-00','0.00','0.00','0','0','0','1407170416','1407170416','0000-00-00 00:00:00','180.118.226.83','1','0','0',NULL,'0','0','0','','','','','','15252525252','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('39','62408967@qq.com','a624089067','f9cb02676fd9d37a49f0c3a1a861be70','','','0','0000-00-00','0.00','0.00','0','0','0','1407213441','1407213441','0000-00-00 00:00:00','182.119.107.176','1','0','0',NULL,'0','0','0','','','','','','15003833825','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('48','fuwu360@163.com','18605378090','5b252230f68090c5eff6e63c724fc304','','','0','0000-00-00','0.00','0.00','0','0','0','1408537873','1408537873','0000-00-00 00:00:00','27.198.6.77','1','0','0',NULL,'0','0','0','','','','','','186','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('40','admin@mz98.com','mz98','43eeeab8d8e14b9947dc99e257b6e7a6','','','0','0000-00-00','0.00','0.00','0','0','14','1407553805','1407553805','0000-00-00 00:00:00','180.174.48.11','1','0','0',NULL,'0','0','0','','','','','','15645973164','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('41','123@qq.com','123456','a0c034df289073365ff1c5e367543989','','','0','0000-00-00','0.00','0.00','0','0','0','1407804922','1407832873','0000-00-00 00:00:00','110.228.108.198','3','0','0','9585','0','0','0','','','','','','150232565889','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('42','a111111@qq.com','a111111','6846860684f05029abccc09a53cd66f1','','','0','0000-00-00','0.00','0.00','0','0','0','1407830763','1407830763','0000-00-00 00:00:00','112.25.201.74','1','0','0',NULL,'0','0','0','','','','','','13581351244','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('43','bgggggg@qq.cn','bgggggg','6d2404ac48fa7e1dc1220cdf449032b8','','','0','0000-00-00','0.00','0.00','0','0','0','1407837919','1407837919','0000-00-00 00:00:00','175.2.122.4','1','0','0',NULL,'0','0','0','','','','','','13422222223','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('44','942186675@qq.com','yzd2530863','00ff23680fa6ae08e7e1487c0b31d17c','','','0','0000-00-00','0.00','0.00','0','0','0','1408099863','1408099863','0000-00-00 00:00:00','115.44.124.28','1','0','0',NULL,'0','0','0','','','','','','15971047714','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('45','1233@2123.sd','12333','4297f44b13955235245b2497399d7a93','','','0','0000-00-00','0.00','0.00','0','0','0','1408119852','1408119852','0000-00-00 00:00:00','111.204.254.3','1','0','0',NULL,'0','0','0','','','','','','123123123123','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('46','essl@126.com','testttt','cacec053fc79640adb9f3b44fae23e90','','','0','0000-00-00','0.00','0.00','0','0','0','1408415214','1408415214','0000-00-00 00:00:00','60.10.97.66','1','0','0',NULL,'0','0','0','','','','','','12910000000','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('47','yanzheng@qq.com','yanzheng','d305300c54c579d43e63b104fae7c52c','','','0','0000-00-00','0.00','0.00','0','0','0','1408431916','1408431916','0000-00-00 00:00:00','59.108.32.210','1','0','0',NULL,'0','0','0','','','','','','13555555555','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('49','ttx@qq.com','kks5415','49e6a34bded272aa2b41e12530f71b9a','','','0','0000-00-00','0.00','0.00','0','0','0','1408830375','1408830375','0000-00-00 00:00:00','119.181.19.98','1','0','0',NULL,'0','0','0','','','','','','15092622216','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('50','cqzx55@163.com','cqzx55','acc1dc6f2ebe4d7ef6f7ceb2f456c26e','','','0','0000-00-00','0.00','0.00','0','0','0','1409119989','1409119989','0000-00-00 00:00:00','183.228.6.207','1','0','0',NULL,'0','0','0','','','','','','1388888888','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('51','1111@123.com','1111','1bbd886460827015e5d605ed44252251','','','0','0000-00-00','0.00','0.00','0','0','0','1409128897','1409128897','0000-00-00 00:00:00','49.71.241.223','1','0','0',NULL,'0','0','0','','','','','','11111111111','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('52','sadsadsa@qq.com','asdsadsa','1a18886587c2efa7b720554ff646d482','','','0','0000-00-00','0.00','0.00','0','0','0','1409378901','1409378901','0000-00-00 00:00:00','223.81.197.243','1','0','0',NULL,'0','0','0','','','','','','13888888888','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('53','123456@qq.com','hhggz','e10adc3949ba59abbe56e057f20f883e','','','0','0000-00-00','0.00','0.00','0','0','0','1409452041','1409452041','0000-00-00 00:00:00','123.126.23.2','1','0','0',NULL,'0','0','0','','','','','','13912345611','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('54','','weixin349','0591a033579a5dd4a317c3abdcacfcf1','','','0','0000-00-00','0.00','0.00','60','0','0','0','1409731832','0000-00-00 00:00:00','114.239.197.54','1','0','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL);");
E_D("replace into `ecs_users` values('55','','weixin350','9d3d8d05f49915daaa7e57fca819c9e1','','','0','0000-00-00','0.00','0.00','0','0','0','0','0','0000-00-00 00:00:00','','0','0','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL);");

require("../../inc/footer.php");
?>