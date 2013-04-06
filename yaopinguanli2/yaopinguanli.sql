/*
MySQL Data Transfer
Source Host: localhost
Source Database: yaopinguanli
Target Host: localhost
Target Database: yaopinguanli
Date: 2013/4/6 16:28:18
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for shebei
-- ----------------------------
DROP TABLE IF EXISTS `shebei`;
CREATE TABLE `shebei` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `shebei_name` varchar(128) default NULL,
  `shebei_xinghao` varchar(64) default NULL,
  `shebei_zherenren` varchar(64) default NULL,
  `shebei_anfangweizhi` varchar(256) default NULL,
  `shebei_zhuangtai` varchar(64) default NULL,
  `shebei_shengchanriqi` varchar(64) default NULL,
  `shebei_shuliang` int(16) default NULL,
  `shebei_lurushijian` varchar(64) default NULL,
  `shebei_lururen` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tushu
-- ----------------------------
DROP TABLE IF EXISTS `tushu`;
CREATE TABLE `tushu` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `tushu_name` varchar(256) default NULL,
  `tushu_zhonglei` varchar(64) default NULL,
  `tushu_zuozhe` varchar(128) default NULL,
  `tushu_chubanshijian` varchar(64) default NULL,
  `tushu_shuliang` int(16) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yaopin
-- ----------------------------
DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE `yaopin` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `yaopin_name` varchar(128) default NULL,
  `yaopin_guige` varchar(128) default NULL,
  `yaopin_cunfangweizhi` varchar(256) default NULL,
  `yaopin_shengchanshijian` varchar(64) default NULL,
  `yaopin_youxiaoshijian` varchar(64) default NULL,
  `yaopin_lurushijian` varchar(64) default NULL,
  `yaopin_beizhu` varchar(64) default NULL,
  `yaopin_fuzheren` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `shebei` VALUES ('1', '01256', '3', '4', '5', 'g', 'g', 'g', '5', 'g', '6');
INSERT INTO `tushu` VALUES ('1', '012545', 'h', 'h', 'h', 'h', '5');
INSERT INTO `yaopin` VALUES ('1', '01001', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `yaopin` VALUES ('2', '01202', '2', '2', '2', '2', '2', '2', '2', '2');
INSERT INTO `yaopin` VALUES ('3', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('4', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('5', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('6', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('7', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('8', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('9', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('10', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('11', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('12', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('13', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('14', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('15', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('16', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('17', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('18', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('19', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('20', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('21', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('22', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('23', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('24', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('25', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('26', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('27', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('28', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('29', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('30', '0512', 'xky', null, null, null, null, null, null, null);
INSERT INTO `yaopin` VALUES ('31', '0512', 'xky', null, null, null, null, null, null, null);
