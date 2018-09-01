/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:48:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for union_service_fee
-- ----------------------------
DROP TABLE IF EXISTS `union_service_fee`;
CREATE TABLE `union_service_fee` (
  `AffiliationId` bigint(20) unsigned NOT NULL COMMENT '工会id',
  `Amount` varchar(255) DEFAULT NULL COMMENT '工会服务费',
  `Date` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`AffiliationId`),
  CONSTRAINT `union_service_fee_ibfk_1` FOREIGN KEY (`AffiliationId`) REFERENCES `affiliationid_map` (`AffiliationId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工会额外服务费';
