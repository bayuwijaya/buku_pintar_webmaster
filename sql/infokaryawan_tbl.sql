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

 Date: 08/02/2021 17:38:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for infokaryawan
-- ----------------------------
DROP TABLE IF EXISTS `infokaryawan`;
CREATE TABLE `infokaryawan`  (
  `nama` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `marga` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `umur` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kota` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of infokaryawan
-- ----------------------------
INSERT INTO `infokaryawan` VALUES ('Retno', 'Julaika', '99982', '26', 'Yogyakarta', 'Yogyakarta');
INSERT INTO `infokaryawan` VALUES ('Marven', 'Pagaribuan', '88232', '32', 'Semarang', 'Jawa Tengah');
INSERT INTO `infokaryawan` VALUES ('MeryA', 'Andani', '88233', '32', 'Bantul', 'Yogyakarta');
INSERT INTO `infokaryawan` VALUES ('Salim', 'Gunawan', '98002', '42', 'Kudus', 'JawaTengah');
INSERT INTO `infokaryawan` VALUES ('Sugiarto', 'Lumbono', '92001', '23', 'Pekalongan', 'JawaTengah');
INSERT INTO `infokaryawan` VALUES ('Andi', 'Priyanto', '22322', '35', 'Tegal', 'JawaTengah');
INSERT INTO `infokaryawan` VALUES ('Mery', 'Lestari', '32326', '52', 'Purwokerto', 'JawaTengah');
INSERT INTO `infokaryawan` VALUES ('Erika', 'Waluyo', '32327', '60', 'Temanggung', 'JawaTengah');
INSERT INTO `infokaryawan` VALUES ('Lumintu', 'Rahayu', '32380', '22', 'Parakan', 'JawaTengah');

SET FOREIGN_KEY_CHECKS = 1;
