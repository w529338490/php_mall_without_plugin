<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_group_goods`;");
E_C("CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8");
E_D("replace into `ecs_group_goods` values('1','3','3580.00','1');");
E_D("replace into `ecs_group_goods` values('1','5','1426.00','1');");
E_D("replace into `ecs_group_goods` values('1','4','3599.00','1');");
E_D("replace into `ecs_group_goods` values('1','2','3580.00','1');");
E_D("replace into `ecs_group_goods` values('14','11','4800.00','1');");
E_D("replace into `ecs_group_goods` values('14','12','4699.00','1');");
E_D("replace into `ecs_group_goods` values('2','1','4999.00','1');");

require("../../inc/footer.php");
?>