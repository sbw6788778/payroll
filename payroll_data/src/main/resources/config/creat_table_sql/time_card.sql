/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:48:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for time_card
-- ----------------------------
DROP TABLE IF EXISTS `time_card`;
CREATE TABLE `time_card` (
  `EmpId` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `Hours` double DEFAULT NULL COMMENT '每天的工作时长',
  `Date` datetime DEFAULT NULL COMMENT '工作日期',
  PRIMARY KEY (`EmpId`),
  CONSTRAINT `time_card_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `employee` (`EmpId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小时工的时间表';
