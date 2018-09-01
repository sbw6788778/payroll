/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:46:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_login_message
-- ----------------------------
DROP TABLE IF EXISTS `admin_login_message`;
CREATE TABLE `admin_login_message` (
  `Id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `Username` varchar(255) DEFAULT NULL COMMENT '管理员名',
  `Password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员用';
