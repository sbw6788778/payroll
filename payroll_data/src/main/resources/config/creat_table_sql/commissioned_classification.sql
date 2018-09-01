/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:47:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commissioned_classification
-- ----------------------------
DROP TABLE IF EXISTS `commissioned_classification`;
CREATE TABLE `commissioned_classification` (
  `EmpId` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `BasePay` double(45,0) NOT NULL COMMENT '每月基础工资',
  `CommissionRate` double(45,0) NOT NULL COMMENT '提成比例',
  PRIMARY KEY (`EmpId`),
  CONSTRAINT `commissioned_classification_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `employee` (`EmpId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='绩效工的表';
