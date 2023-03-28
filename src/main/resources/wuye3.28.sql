/*
 Navicat Premium Data Transfer

 Source Server         : 主机MySQL
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : wuye

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 28/03/2023 11:36:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL COMMENT '管理员',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机',
  `sex` int DEFAULT NULL COMMENT '性别',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` (`id`, `username`, `password`, `phone`, `sex`, `email`) VALUES (1, '赛事哥', '123456', '18004041026', 0, '645702818@qq.com');
INSERT INTO `admin` (`id`, `username`, `password`, `phone`, `sex`, `email`) VALUES (2, '傻笑男', '123456', NULL, NULL, 'admin');
INSERT INTO `admin` (`id`, `username`, `password`, `phone`, `sex`, `email`) VALUES (3, '美羊羊', '123456', NULL, NULL, 'admin@qq.com');
COMMIT;

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` int DEFAULT NULL COMMENT '0：电梯；1：楼梯',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of building
-- ----------------------------
BEGIN;
INSERT INTO `building` (`id`, `name`, `type`) VALUES (1, 'A', 0);
INSERT INTO `building` (`id`, `name`, `type`) VALUES (2, 'B', 0);
INSERT INTO `building` (`id`, `name`, `type`) VALUES (3, 'C', 1);
INSERT INTO `building` (`id`, `name`, `type`) VALUES (4, 'D', 1);
COMMIT;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '停车位名称',
  `type` int DEFAULT NULL COMMENT '地面或者地下',
  `status` int DEFAULT NULL COMMENT '是否为空',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of car
-- ----------------------------
BEGIN;
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (1, '车位1', 0, 1);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (2, '车位2', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (3, '车位3', 0, 1);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (4, '车位4', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (5, '车位5', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (6, '车位6', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (7, '车位7', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (8, '车位8', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (9, '车位9', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (10, '车位10', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (11, '车位11', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (12, '车位12', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (13, '车位13', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (14, '车位14', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (15, '车位15', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (16, '车位16', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (17, '车位17', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (18, '车位18', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (19, '车位19', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (20, '车位20', 1, 1);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (21, '车位21', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (22, '车位22', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (23, '车位23', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (24, '车位24', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (25, '车位25', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (26, '车位26', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (27, '车位27', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (28, '车位28', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (29, '车位29', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (30, '车位30', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (31, '车位31', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (32, '车位32', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (33, '车位33', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (34, '车位34', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (35, '车位35', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (36, '车位36', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (37, '车位37', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (38, '车位38', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (39, '车位39', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (40, '车位40', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (41, '车位41', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (42, '车位42', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (43, '车位43', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (44, '车位44', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (45, '车位45', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (46, '车位46', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (47, '车位47', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (48, '车位48', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (49, '车位49', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (50, '车位50', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (51, '车位51', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (52, '车位52', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (53, '车位53', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (54, '车位54', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (55, '车位55', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (56, '车位56', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (57, '车位57', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (58, '车位58', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (59, '车位59', 1, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (60, '车位60', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '公告标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '公告内容',
  `createBy` int DEFAULT NULL COMMENT '创建者',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int DEFAULT NULL COMMENT '修改者',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int DEFAULT NULL COMMENT '是否展示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `create` (`createBy`) USING BTREE,
  KEY `update` (`updateBy`) USING BTREE,
  CONSTRAINT `create` FOREIGN KEY (`createBy`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `update` FOREIGN KEY (`updateBy`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`id`, `title`, `content`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`) VALUES (1, '公告一', '测试一下', 1, '2020-03-03 09:39:46', 1, '2023-03-27 22:34:11', 1);
INSERT INTO `notice` (`id`, `title`, `content`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`) VALUES (2, '公告二', '再测试以下', 1, '2020-03-03 09:40:06', 1, '2020-03-03 01:59:44', 1);
INSERT INTO `notice` (`id`, `title`, `content`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`) VALUES (4, '公告三', '浣熊先生免费赠送60元优惠券', 1, '2023-03-27 22:31:55', NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of payment
-- ----------------------------
BEGIN;
INSERT INTO `payment` (`id`, `name`) VALUES (1, '水电');
INSERT INTO `payment` (`id`, `name`) VALUES (2, '煤气');
INSERT INTO `payment` (`id`, `name`) VALUES (3, '物业');
INSERT INTO `payment` (`id`, `name`) VALUES (4, '停车费');
COMMIT;

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否解决',
  `time` datetime DEFAULT NULL COMMENT '创建时间',
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `5` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of repair
-- ----------------------------
BEGIN;
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (1, '测试1', 1, '0', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (2, '测试2', 2, '1', '2020-03-03 03:34:40', '完美解决');
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (3, '测试3', 3, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (4, '测试4', 4, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (5, '测试5', 5, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (6, '测试6', 6, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (7, '测试7', 7, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (8, '测试8', 8, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (9, '测试9', 9, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (10, '测试10', 10, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (11, '测试11', 11, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (12, '测试12', 12, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (13, '测试13', 13, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (14, '测试14', 14, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (15, '测试15', 15, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (16, '测试16', 16, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (17, '测试17', 17, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (18, '测试18', 18, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (19, '测试19', 19, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (20, '测试20', 20, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (21, '测试21', 21, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (22, '测试22', 22, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (23, '测试23', 23, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (24, '测试24', 24, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (25, '测试25', 25, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (26, '测试26', 26, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (27, '测试27', 27, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (28, '测试28', 28, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (29, '测试29', 29, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (30, '测试30', 30, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (31, '测试31', 31, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (32, '测试32', 32, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (33, '测试33', 33, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (34, '测试34', 34, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (35, '测试35', 35, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (36, '测试36', 36, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (37, '测试37', 37, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (38, '测试38', 38, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (39, '测试39', 39, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (40, '测试40', 40, '1', '2020-03-03 03:34:40', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (41, '我要维修水龙头。', 1, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '房屋名称',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '房屋面积',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否为空',
  `danyuan_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `danyuan` (`danyuan_id`) USING BTREE,
  CONSTRAINT `danyuan` FOREIGN KEY (`danyuan_id`) REFERENCES `unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of room
-- ----------------------------
BEGIN;
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (50, '101', '97', '1', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (51, '102', '96', '1', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (52, '201', '96', '1', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (53, '202', '96', '1', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (54, '301', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (55, '302', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (56, '401', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (57, '402', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (58, '501', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (59, '502', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (60, '601', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (61, '602', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (62, '101', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (63, '102', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (64, '201', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (65, '202', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (66, '301', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (67, '302', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (68, '401', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (69, '402', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (70, '501', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (71, '502', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (72, '601', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (73, '602', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (74, '101', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (75, '102', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (76, '201', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (77, '202', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (78, '301', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (79, '302', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (80, '401', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (81, '402', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (82, '501', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (83, '502', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (84, '601', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (85, '602', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (86, '101', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (87, '102', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (88, '201', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (89, '202', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (90, '301', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (91, '302', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (92, '401', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (93, '402', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (94, '501', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (95, '502', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (96, '601', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (97, '602', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (98, '101', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (99, '102', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (100, '201', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (101, '202', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (102, '301', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (103, '302', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (104, '401', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (105, '402', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (106, '501', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (107, '502', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (108, '601', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (109, '602', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (110, '101', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (111, '102', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (112, '201', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (113, '202', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (114, '301', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (115, '302', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (116, '401', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (117, '402', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (118, '501', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (119, '502', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (120, '601', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (121, '602', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (122, '101', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (123, '102', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (124, '201', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (125, '202', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (126, '301', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (127, '302', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (128, '401', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (129, '402', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (130, '501', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (131, '502', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (132, '601', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (133, '602', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (134, '101', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (135, '102', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (136, '201', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (137, '202', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (138, '301', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (139, '302', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (140, '401', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (141, '402', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (142, '501', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (143, '502', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (144, '601', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `danyuan_id`) VALUES (145, '602', '96', '0', 8);
COMMIT;

-- ----------------------------
-- Table structure for tousu
-- ----------------------------
DROP TABLE IF EXISTS `tousu`;
CREATE TABLE `tousu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `6` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tousu
-- ----------------------------
BEGIN;
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (1, '测试1', 1, 1, '2020-03-03 03:34:48', '已经解决了');
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (2, '测试2', 2, 1, '2020-03-03 03:34:48', '213e131');
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (3, '测试3', 3, 0, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (4, '测试4', 4, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (5, '测试5', 5, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (6, '测试6', 6, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (7, '测试7', 7, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (8, '测试8', 8, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (9, '测试9', 9, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (10, '测试10', 10, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (11, '测试11', 11, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (12, '测试12', 12, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (13, '测试13', 13, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (14, '测试14', 14, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (15, '测试15', 15, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (16, '测试16', 16, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (17, '测试17', 17, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (18, '测试18', 18, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (19, '测试19', 19, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (20, '测试20', 20, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (21, '测试21', 21, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (22, '测试22', 22, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (23, '测试23', 23, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (24, '测试24', 24, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (25, '测试25', 25, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (26, '测试26', 26, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (27, '测试27', 27, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (28, '测试28', 28, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (29, '测试29', 29, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (30, '测试30', 30, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (31, '测试31', 31, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (32, '测试32', 32, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (33, '测试33', 33, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (34, '测试34', 34, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (35, '测试35', 35, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (36, '测试36', 36, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (37, '测试37', 37, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (38, '测试38', 38, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (39, '测试39', 39, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (40, '测试40', 40, 1, '2020-03-03 03:34:48', NULL);
INSERT INTO `tousu` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (42, '我要投诉！！', 1, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `building_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `building` (`building_id`) USING BTREE,
  CONSTRAINT `building` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of unit
-- ----------------------------
BEGIN;
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (1, 'A1单元', 1);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (2, 'A2单元', 1);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (3, 'B1单元', 2);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (4, 'B2单元', 2);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (5, 'C1单元', 3);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (6, 'C2单元', 3);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (7, 'D1单元', 4);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (8, 'D2单元', 4);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (9, 'D3单元', 4);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `sex` int DEFAULT NULL COMMENT '性别',
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`,`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `sex`, `status`) VALUES (1, '1', '123456', '17805052221', 1, 1);
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `sex`, `status`) VALUES (83, '王泓宇', '123456', '18004041026', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for user_car
-- ----------------------------
DROP TABLE IF EXISTS `user_car`;
CREATE TABLE `user_car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `inTime` datetime DEFAULT NULL,
  `outTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `2` (`car_id`) USING BTREE,
  KEY `1` (`user_id`) USING BTREE,
  CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `2` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_car
-- ----------------------------
BEGIN;
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (1, 1, 1, '2020-03-03 19:37:44', '2020-03-03 19:37:54');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (3, 1, 4, '2020-03-04 04:37:44', '2020-03-04 04:38:37');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (4, 1, 3, '2020-03-04 04:38:37', '2020-03-04 04:41:53');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (5, 1, 1, '2020-03-04 04:41:53', '2020-03-04 04:44:12');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (6, 1, 3, '2020-03-04 04:44:12', '2020-03-04 05:23:24');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (7, 1, 1, '2020-03-04 05:25:22', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_payment
-- ----------------------------
DROP TABLE IF EXISTS `user_payment`;
CREATE TABLE `user_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `11` (`user_id`) USING BTREE,
  KEY `12` (`payment_id`) USING BTREE,
  CONSTRAINT `11` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `12` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_payment
-- ----------------------------
BEGIN;
INSERT INTO `user_payment` (`id`, `user_id`, `payment_id`, `value`, `time`, `status`) VALUES (1, 1, 1, '100', '2020-03-04 05:47:03', 1);
INSERT INTO `user_payment` (`id`, `user_id`, `payment_id`, `value`, `time`, `status`) VALUES (2, 1, 3, '1100', '2020-03-04 07:49:42', 1);
INSERT INTO `user_payment` (`id`, `user_id`, `payment_id`, `value`, `time`, `status`) VALUES (3, 1, 2, '100', '2020-03-04 12:11:42', 0);
COMMIT;

-- ----------------------------
-- Table structure for user_room
-- ----------------------------
DROP TABLE IF EXISTS `user_room`;
CREATE TABLE `user_room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '用户',
  `room_id` int DEFAULT NULL COMMENT '房屋',
  `inTime` datetime DEFAULT NULL COMMENT '入住时间',
  `outTime` datetime DEFAULT NULL COMMENT '离去时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `3` (`user_id`) USING BTREE,
  KEY `4` (`room_id`) USING BTREE,
  CONSTRAINT `4` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_room
-- ----------------------------
BEGIN;
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (1, 1, 50, '2020-03-03 20:16:05', '2020-03-04 05:21:10');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (2, 2, 51, '2020-03-03 20:16:13', '2020-03-04 05:25:06');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (3, 3, 52, '2020-03-04 04:10:23', '2020-03-04 12:10:54');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (4, 1, 53, '2020-03-04 04:13:28', '2020-03-04 04:44:25');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (5, 4, 50, '2020-03-04 04:13:43', '2020-03-04 08:43:42');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (6, 1, 54, '2020-03-04 04:44:25', '2020-03-04 05:23:27');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (7, 2, 51, '2020-03-04 05:25:14', NULL);
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (8, 1, 50, '2020-03-04 05:25:18', '2020-03-04 08:44:30');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (9, 4, 53, '2020-03-04 08:44:26', NULL);
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (10, 1, 50, '2020-03-04 08:44:34', NULL);
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (11, 3, 52, '2020-03-04 12:11:12', NULL);
COMMIT;

-- ----------------------------
-- Procedure structure for add_gu_memory
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_gu_memory`;
delimiter ;;
CREATE PROCEDURE `add_gu_memory`()
BEGIN  
  DECLARE i INT DEFAULT 1;
	SET i = 2;
    WHILE (i <= 60 ) DO
			INSERT into `car`(`name`,`type`,`status` ) VALUEs (CONCAT('车位',i),0,0);
			set i=i+1;
    END WHILE;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
