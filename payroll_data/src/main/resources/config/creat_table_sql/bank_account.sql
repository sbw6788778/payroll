/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:47:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bank_account
-- ----------------------------
DROP TABLE IF EXISTS `bank_account`;
CREATE TABLE `bank_account` (
  `Empid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `Bank` varchar(255) NOT NULL COMMENT '银行',
  `Account` varchar(255) NOT NULL COMMENT '银行账号',
  PRIMARY KEY (`Empid`),
  CONSTRAINT `bank_account_ibfk_1` FOREIGN KEY (`Empid`) REFERENCES `employee` (`EmpId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工资支付类型为打到银行账号';
