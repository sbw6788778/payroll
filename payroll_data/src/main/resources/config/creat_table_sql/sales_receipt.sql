/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:48:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sales_receipt
-- ----------------------------
DROP TABLE IF EXISTS `sales_receipt`;
CREATE TABLE `sales_receipt` (
  `EmpId` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `Amount` int(255) DEFAULT NULL COMMENT '销售数量',
  `Date` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`EmpId`),
  CONSTRAINT `sales_receipt_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `employee` (`EmpId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售记录';
