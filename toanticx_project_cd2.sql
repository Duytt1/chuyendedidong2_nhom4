/*
 Navicat Premium Data Transfer

 Source Server         : Tic-Host
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : 103.221.220.11:3306
 Source Schema         : toanticx_project

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 30/03/2019 14:20:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tblbooks
-- ----------------------------
DROP TABLE IF EXISTS `tblbooks`;
CREATE TABLE `tblbooks`  (
  `IDBOOK` int(11) NOT NULL AUTO_INCREMENT,
  `IDUSER` int(11) NOT NULL,
  `IDHOUSE` int(11) NOT NULL,
  `CHECK_SEEN` int(11) NOT NULL,
  PRIMARY KEY (`IDBOOK`) USING BTREE,
  INDEX `tblBooks_fk0`(`IDUSER`) USING BTREE,
  INDEX `tblBooks_fk1`(`IDHOUSE`) USING BTREE,
  CONSTRAINT `tblBooks_fk0` FOREIGN KEY (`IDUSER`) REFERENCES `tblusers` (`IDUSER`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tblBooks_fk1` FOREIGN KEY (`IDHOUSE`) REFERENCES `tblhousers` (`IDHOUSE`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tblcomments
-- ----------------------------
DROP TABLE IF EXISTS `tblcomments`;
CREATE TABLE `tblcomments`  (
  `IDCOMMENT` int(11) NOT NULL AUTO_INCREMENT,
  `TEXT` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IDUSER` int(11) NOT NULL,
  `IDHOUSE` int(11) NOT NULL,
  `CREATED_AT` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`IDCOMMENT`) USING BTREE,
  INDEX `tblComments_fk0`(`IDUSER`) USING BTREE,
  INDEX `tblComments_fk1`(`IDHOUSE`) USING BTREE,
  CONSTRAINT `tblComments_fk0` FOREIGN KEY (`IDUSER`) REFERENCES `tblusers` (`IDUSER`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tblComments_fk1` FOREIGN KEY (`IDHOUSE`) REFERENCES `tblhousers` (`IDHOUSE`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tblfavorites
-- ----------------------------
DROP TABLE IF EXISTS `tblfavorites`;
CREATE TABLE `tblfavorites`  (
  `IDFAV` int(11) NOT NULL AUTO_INCREMENT,
  `IDUSER` int(11) NOT NULL,
  `IDHOUSE` int(11) NOT NULL,
  PRIMARY KEY (`IDFAV`) USING BTREE,
  INDEX `tblFavorites_fk0`(`IDUSER`) USING BTREE,
  INDEX `tblFavorites_fk1`(`IDHOUSE`) USING BTREE,
  CONSTRAINT `tblFavorites_fk0` FOREIGN KEY (`IDUSER`) REFERENCES `tblusers` (`IDUSER`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tblFavorites_fk1` FOREIGN KEY (`IDHOUSE`) REFERENCES `tblhousers` (`IDHOUSE`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tblhousers
-- ----------------------------
DROP TABLE IF EXISTS `tblhousers`;
CREATE TABLE `tblhousers`  (
  `IDHOUSE` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ADDRESS` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OBJECT` int(11) NOT NULL,
  `IMAGE` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESC` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CONTACT` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ACREAGE` float NOT NULL,
  `PRICE` float NOT NULL,
  `MAXPEO` int(11) NOT NULL,
  `CREATED_AT` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CHECK_UP` int(11) NOT NULL,
  `STATE` int(11) NOT NULL,
  `IDUNIT` int(11) NOT NULL,
  `IDUSER` int(11) NOT NULL,
  `LATLNG` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`IDHOUSE`) USING BTREE,
  INDEX `tblHousers_fk0`(`IDUNIT`) USING BTREE,
  INDEX `tblHousers_fk1`(`IDUSER`) USING BTREE,
  CONSTRAINT `tblHousers_fk0` FOREIGN KEY (`IDUNIT`) REFERENCES `tblunits` (`IDUNIT`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tblHousers_fk1` FOREIGN KEY (`IDUSER`) REFERENCES `tblusers` (`IDUSER`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tblinfoimages
-- ----------------------------
DROP TABLE IF EXISTS `tblinfoimages`;
CREATE TABLE `tblinfoimages`  (
  `IDIMAGE` int(11) NOT NULL AUTO_INCREMENT,
  `URL` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IDHOUSE` int(11) NOT NULL,
  PRIMARY KEY (`IDIMAGE`) USING BTREE,
  INDEX `tblInfoImages_fk0`(`IDHOUSE`) USING BTREE,
  CONSTRAINT `tblInfoImages_fk0` FOREIGN KEY (`IDHOUSE`) REFERENCES `tblhousers` (`IDHOUSE`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tblregisterposter
-- ----------------------------
DROP TABLE IF EXISTS `tblregisterposter`;
CREATE TABLE `tblregisterposter`  (
  `IDREGISTER` int(11) NOT NULL AUTO_INCREMENT,
  `IDUSER` int(11) NOT NULL,
  `CONFIRM` int(11) NOT NULL,
  PRIMARY KEY (`IDREGISTER`) USING BTREE,
  INDEX `tblRegisterPoster_fk0`(`IDUSER`) USING BTREE,
  CONSTRAINT `tblRegisterPoster_fk0` FOREIGN KEY (`IDUSER`) REFERENCES `tblusers` (`IDUSER`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tblunits
-- ----------------------------
DROP TABLE IF EXISTS `tblunits`;
CREATE TABLE `tblunits`  (
  `IDUNIT` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`IDUNIT`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblunits
-- ----------------------------
INSERT INTO `tblunits` VALUES (1, 'triệu/tháng');

-- ----------------------------
-- Table structure for tblusers
-- ----------------------------
DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE `tblusers`  (
  `IDUSER` int(11) NOT NULL AUTO_INCREMENT,
  `USER` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PASSWORD` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PHONE` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PERMISSION` int(11) NOT NULL,
  PRIMARY KEY (`IDUSER`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblusers
-- ----------------------------
INSERT INTO `tblusers` VALUES (15, '1', '1', '1', '1', 2);
INSERT INTO `tblusers` VALUES (16, '2', '2', '2', '2', 3);

SET FOREIGN_KEY_CHECKS = 1;
