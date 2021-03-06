/*
 Navicat Premium Data Transfer

 Source Server         : Q4_2020
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : bisnis

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 08/02/2021 17:38:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan`  (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `job_desk` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT NULL,
  `sallary` bigint(15) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES (2, 'Lara Croft', 'Sekretaris', 28, 1950000);
INSERT INTO `karyawan` VALUES (3, 'Bambang Gentolet', 'Programmer', 32, 4530000);
INSERT INTO `karyawan` VALUES (4, 'Dicky Sumilar', 'Programmer II', 45, 7502000);

SET FOREIGN_KEY_CHECKS = 1;
