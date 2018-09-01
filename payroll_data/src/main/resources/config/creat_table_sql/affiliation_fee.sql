/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:47:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for affiliation_fee
-- ----------------------------
DROP TABLE IF EXISTS `affiliation_fee`;
CREATE TABLE `affiliation_fee` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '工会编号',
  `Durs` double(255,0) NOT NULL COMMENT '每月应收的工会费',
  PRIMARY KEY (`Id`),
  CONSTRAINT `affiliation_fee_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `affiliationid_map` (`AffiliationId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工会会费';
