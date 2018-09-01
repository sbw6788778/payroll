/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:47:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for affiliationid_map
-- ----------------------------
DROP TABLE IF EXISTS `affiliationid_map`;
CREATE TABLE `affiliationid_map` (
  `EmpId` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `AffiliationId` bigint(10) unsigned NOT NULL COMMENT '工会编号',
  PRIMARY KEY (`EmpId`),
  KEY `EmpId` (`EmpId`),
  KEY `AffiliationId` (`AffiliationId`),
  CONSTRAINT `affiliationid_map_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `employee` (`EmpId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='工会id和员工id的映射表';
