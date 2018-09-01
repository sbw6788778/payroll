/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:47:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for paycheck_address
-- ----------------------------
DROP TABLE IF EXISTS `paycheck_address`;
CREATE TABLE `paycheck_address` (
  `EmpId` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `Address` varchar(255) DEFAULT NULL COMMENT '支票邮寄地址',
  PRIMARY KEY (`EmpId`),
  CONSTRAINT `paycheck_address_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `employee` (`EmpId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工资支付方式为支票邮寄的表';
