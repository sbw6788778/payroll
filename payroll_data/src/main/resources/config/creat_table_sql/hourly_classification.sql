/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:47:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hourly_classification
-- ----------------------------
DROP TABLE IF EXISTS `hourly_classification`;
CREATE TABLE `hourly_classification` (
  `EmpId` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `HourlyRate` double(45,0) NOT NULL COMMENT '每小时的工资',
  PRIMARY KEY (`EmpId`),
  CONSTRAINT `hourly_classification_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `employee` (`EmpId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小时工的表';
