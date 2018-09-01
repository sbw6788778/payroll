/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:48:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for salaried_classification
-- ----------------------------
DROP TABLE IF EXISTS `salaried_classification`;
CREATE TABLE `salaried_classification` (
  `EmpId` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `MonthlyPay` double(255,0) DEFAULT NULL COMMENT '每月工资',
  PRIMARY KEY (`EmpId`),
  CONSTRAINT `salaried_classification_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `employee` (`EmpId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每月固定工资员工表';
