<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_weixin_user`;");
E_C("CREATE TABLE `ecs_weixin_user` (
  `uid` int(7) NOT NULL auto_increment,
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
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=351 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_weixin_user` values('348','0','of5p2t4y2oU5CEzWNGXNdZVnX2Q4','','0','','','','','','0','','3','weixin348','1005023937');");
E_D("replace into `ecs_weixin_user` values('349','0','obBzUjjfy5bQpa2P1YGL8aWxa4d4','','0','','','','','','0','','3','weixin349','');");
E_D("replace into `ecs_weixin_user` values('350','0','obBzUjkhfu2jI9i38el5mOohCFT4','','0','','','','','','0','','3','weixin350','');");

require("../../inc/footer.php");
?>