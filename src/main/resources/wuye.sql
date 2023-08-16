/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云服务器
 Source Server Type    : MySQL
 Source Server Version : 50650
 Source Host           : 59.110.8.151:3306
 Source Schema         : wuye

 Target Server Type    : MySQL
 Target Server Version : 50650
 File Encoding         : 65001

 Date: 13/08/2023 09:49:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL COMMENT '管理员',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物业管理人员' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '管理猿', '123456', '18004041026', 0, '645702818@qq.com');
INSERT INTO `admin` VALUES (2, '喜羊羊', '123456', '13704147606', 0, 'admin@163.com');
INSERT INTO `admin` VALUES (3, '美羊羊', '123456', '18004041526', 0, 'admin@qq.com');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT '0：电梯；1：楼梯',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '楼栋管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES (1, 'A', 0);
INSERT INTO `building` VALUES (2, 'B', 0);
INSERT INTO `building` VALUES (3, 'C', 1);
INSERT INTO `building` VALUES (4, 'D', 1);

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停车位名称',
  `type` int(11) NULL DEFAULT NULL COMMENT '地面或者地下',
  `status` int(11) NULL DEFAULT NULL COMMENT '是否为空',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车位管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, '车位1', 0, 0);
INSERT INTO `car` VALUES (2, '车位2', 0, 1);
INSERT INTO `car` VALUES (3, '车位3', 0, 1);
INSERT INTO `car` VALUES (4, '车位4', 0, 1);
INSERT INTO `car` VALUES (5, '车位5', 0, 0);
INSERT INTO `car` VALUES (6, '车位6', 0, 1);
INSERT INTO `car` VALUES (7, '车位7', 0, 0);
INSERT INTO `car` VALUES (8, '车位8', 0, 0);
INSERT INTO `car` VALUES (9, '车位9', 0, 0);
INSERT INTO `car` VALUES (10, '车位10', 0, 0);
INSERT INTO `car` VALUES (11, '车位11', 0, 0);
INSERT INTO `car` VALUES (12, '车位12', 0, 0);
INSERT INTO `car` VALUES (13, '车位13', 0, 0);
INSERT INTO `car` VALUES (14, '车位14', 0, 0);
INSERT INTO `car` VALUES (15, '车位15', 0, 0);
INSERT INTO `car` VALUES (16, '车位16', 0, 0);
INSERT INTO `car` VALUES (17, '车位17', 0, 0);
INSERT INTO `car` VALUES (18, '车位18', 0, 0);
INSERT INTO `car` VALUES (19, '车位19', 0, 0);
INSERT INTO `car` VALUES (20, '车位20', 1, 1);
INSERT INTO `car` VALUES (21, '车位21', 1, 1);
INSERT INTO `car` VALUES (22, '车位22', 1, 0);
INSERT INTO `car` VALUES (23, '车位23', 1, 0);
INSERT INTO `car` VALUES (24, '车位24', 1, 0);
INSERT INTO `car` VALUES (25, '车位25', 1, 0);
INSERT INTO `car` VALUES (26, '车位26', 1, 0);
INSERT INTO `car` VALUES (27, '车位27', 1, 0);
INSERT INTO `car` VALUES (28, '车位28', 1, 0);
INSERT INTO `car` VALUES (29, '车位29', 1, 0);
INSERT INTO `car` VALUES (30, '车位30', 1, 0);
INSERT INTO `car` VALUES (31, '车位31', 1, 0);
INSERT INTO `car` VALUES (32, '车位32', 1, 0);
INSERT INTO `car` VALUES (33, '车位33', 1, 0);
INSERT INTO `car` VALUES (34, '车位34', 1, 0);
INSERT INTO `car` VALUES (35, '车位35', 1, 0);
INSERT INTO `car` VALUES (36, '车位36', 1, 0);
INSERT INTO `car` VALUES (37, '车位37', 1, 0);
INSERT INTO `car` VALUES (38, '车位38', 1, 0);
INSERT INTO `car` VALUES (39, '车位39', 1, 0);
INSERT INTO `car` VALUES (40, '车位40', 1, 0);
INSERT INTO `car` VALUES (41, '车位41', 1, 0);
INSERT INTO `car` VALUES (42, '车位42', 1, 0);
INSERT INTO `car` VALUES (43, '车位43', 1, 0);
INSERT INTO `car` VALUES (44, '车位44', 1, 0);
INSERT INTO `car` VALUES (45, '车位45', 1, 0);
INSERT INTO `car` VALUES (46, '车位46', 1, 0);
INSERT INTO `car` VALUES (47, '车位47', 1, 0);
INSERT INTO `car` VALUES (48, '车位48', 1, 0);
INSERT INTO `car` VALUES (49, '车位49', 1, 0);
INSERT INTO `car` VALUES (50, '车位50', 1, 0);
INSERT INTO `car` VALUES (51, '车位51', 1, 0);
INSERT INTO `car` VALUES (52, '车位52', 1, 0);
INSERT INTO `car` VALUES (53, '车位53', 1, 0);
INSERT INTO `car` VALUES (54, '车位54', 1, 0);
INSERT INTO `car` VALUES (55, '车位55', 1, 0);
INSERT INTO `car` VALUES (56, '车位56', 1, 0);
INSERT INTO `car` VALUES (57, '车位57', 1, 0);
INSERT INTO `car` VALUES (58, '车位58', 1, 0);
INSERT INTO `car` VALUES (59, '车位59', 1, 0);
INSERT INTO `car` VALUES (60, '车位60', 1, 0);

-- ----------------------------
-- Table structure for complain
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `6`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投诉单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of complain
-- ----------------------------
INSERT INTO `complain` VALUES (1, '为什么垃圾没有人倒！', 2, 0, '2023-04-13 10:58:45', NULL);
INSERT INTO `complain` VALUES (2, '为什么时间还没设置好了？', 2, 1, '2023-05-16 07:18:13', '时间设置好了！');
INSERT INTO `complain` VALUES (3, '为什么大门从来不关？', 2, 0, '2023-05-18 08:22:49', NULL);
INSERT INTO `complain` VALUES (4, '为什么幼儿园那么吵！', 2, 1, '2023-05-20 20:57:52', '已经沟通');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `createBy` int(11) NULL DEFAULT NULL COMMENT '创建者',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) NULL DEFAULT NULL COMMENT '修改者',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '是否展示(0:展示，1:不展示)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `create`(`createBy`) USING BTREE,
  INDEX `update`(`updateBy`) USING BTREE,
  CONSTRAINT `create` FOREIGN KEY (`createBy`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `update` FOREIGN KEY (`updateBy`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知（公告）' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '公告一', '垃圾分类进万家，津采纷呈靠大家！', 1, '2023-03-03 09:39:46', 1, '2023-06-02 01:21:39', 0);
INSERT INTO `notice` VALUES (2, '公告二', '公共区域禁止吸烟！', 1, '2023-03-03 09:40:06', 1, '2023-06-02 01:21:42', 0);
INSERT INTO `notice` VALUES (3, '公告三', '请节约用电使用空调，推荐温度26℃-28℃即可。', 1, '2023-05-16 11:21:04', 1, '2023-05-16 20:05:13', 0);

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '缴费单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (1, '水电');
INSERT INTO `payment` VALUES (2, '煤气');
INSERT INTO `payment` VALUES (3, '物业');
INSERT INTO `payment` VALUES (4, '停车费');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否解决',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `5`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES (1, '门锁损耗，不能正常开关。', 2, '1', '2023-05-16 11:00:38', '门锁已经更换，请注意查收');
INSERT INTO `repair` VALUES (2, '水管破裂，造成漏水', 2, '0', '2023-05-16 10:47:56', NULL);
INSERT INTO `repair` VALUES (3, '楼道灯不亮，影响行走安全', 2, '1', '2023-05-18 08:00:41', '路灯问题已解决');
INSERT INTO `repair` VALUES (4, '为什么垃圾没有人倒！', 2, '1', '2023-05-18 08:29:31', '垃圾倾倒成功');
INSERT INTO `repair` VALUES (5, '燃气表故障，无法正常使用燃气', 2, '0', '2023-05-20 09:16:48', NULL);
INSERT INTO `repair` VALUES (6, '室内电路出现问题，导致无法使用电器', 2, '0', '2023-05-20 09:22:02', NULL);
INSERT INTO `repair` VALUES (7, '卫生间马桶堵塞，需要清理', 2, '0', '2023-05-20 09:57:21', NULL);
INSERT INTO `repair` VALUES (8, '防盗门铰链松动，容易造成安全隐患', 2, '0', '2023-05-20 09:59:21', NULL);
INSERT INTO `repair` VALUES (9, '车库门打不开，车辆无法驶出', 2, '0', '2023-05-20 10:17:20', NULL);
INSERT INTO `repair` VALUES (10, '大门损坏', 2, '0', '2023-06-02 11:17:51', NULL);

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋名称',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋面积',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为空(0空房)',
  `unit_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `danyuan`(`unit_id`) USING BTREE,
  CONSTRAINT `danyuan` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房屋' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, '101', '300', '0', 1);
INSERT INTO `room` VALUES (2, '102', '96', '1', 1);
INSERT INTO `room` VALUES (3, '201', '96', '1', 1);
INSERT INTO `room` VALUES (4, '202', '96', '1', 1);
INSERT INTO `room` VALUES (5, '301', '96', '1', 1);
INSERT INTO `room` VALUES (6, '302', '96', '0', 1);
INSERT INTO `room` VALUES (7, '401', '96', '0', 1);
INSERT INTO `room` VALUES (8, '402', '96', '0', 1);
INSERT INTO `room` VALUES (9, '501', '96', '0', 1);
INSERT INTO `room` VALUES (10, '502', '96', '0', 1);
INSERT INTO `room` VALUES (11, '601', '96', '0', 1);
INSERT INTO `room` VALUES (12, '602', '96', '0', 1);
INSERT INTO `room` VALUES (13, '101', '96', '0', 2);
INSERT INTO `room` VALUES (14, '102', '96', '0', 2);
INSERT INTO `room` VALUES (15, '201', '96', '0', 2);
INSERT INTO `room` VALUES (16, '202', '96', '0', 2);
INSERT INTO `room` VALUES (17, '301', '96', '0', 2);
INSERT INTO `room` VALUES (18, '302', '96', '0', 2);
INSERT INTO `room` VALUES (19, '401', '96', '0', 2);
INSERT INTO `room` VALUES (20, '402', '96', '0', 2);
INSERT INTO `room` VALUES (21, '501', '96', '0', 2);
INSERT INTO `room` VALUES (22, '502', '96', '0', 2);
INSERT INTO `room` VALUES (23, '601', '96', '0', 2);
INSERT INTO `room` VALUES (24, '602', '96', '0', 2);
INSERT INTO `room` VALUES (25, '101', '96', '0', 3);
INSERT INTO `room` VALUES (26, '102', '96', '0', 3);
INSERT INTO `room` VALUES (27, '201', '96', '0', 3);
INSERT INTO `room` VALUES (28, '202', '96', '0', 3);
INSERT INTO `room` VALUES (29, '301', '96', '0', 3);
INSERT INTO `room` VALUES (30, '302', '96', '0', 3);
INSERT INTO `room` VALUES (31, '401', '96', '0', 3);
INSERT INTO `room` VALUES (32, '402', '96', '0', 3);
INSERT INTO `room` VALUES (33, '501', '96', '0', 3);
INSERT INTO `room` VALUES (34, '502', '96', '0', 3);
INSERT INTO `room` VALUES (35, '601', '96', '0', 3);
INSERT INTO `room` VALUES (36, '602', '96', '0', 3);
INSERT INTO `room` VALUES (37, '101', '96', '0', 4);
INSERT INTO `room` VALUES (38, '102', '96', '0', 4);
INSERT INTO `room` VALUES (39, '201', '96', '0', 4);
INSERT INTO `room` VALUES (40, '202', '96', '0', 4);
INSERT INTO `room` VALUES (41, '301', '96', '0', 4);
INSERT INTO `room` VALUES (42, '302', '96', '0', 4);
INSERT INTO `room` VALUES (43, '401', '96', '0', 4);
INSERT INTO `room` VALUES (44, '402', '96', '0', 4);
INSERT INTO `room` VALUES (45, '501', '96', '0', 4);
INSERT INTO `room` VALUES (46, '502', '96', '0', 4);
INSERT INTO `room` VALUES (47, '601', '96', '0', 4);
INSERT INTO `room` VALUES (48, '602', '96', '0', 4);
INSERT INTO `room` VALUES (49, '101', '96', '0', 5);
INSERT INTO `room` VALUES (50, '102', '96', '0', 5);
INSERT INTO `room` VALUES (51, '201', '96', '0', 5);
INSERT INTO `room` VALUES (52, '202', '96', '0', 5);
INSERT INTO `room` VALUES (53, '301', '96', '0', 5);
INSERT INTO `room` VALUES (54, '302', '96', '0', 5);
INSERT INTO `room` VALUES (55, '401', '96', '0', 5);
INSERT INTO `room` VALUES (56, '402', '96', '0', 5);
INSERT INTO `room` VALUES (57, '501', '96', '0', 5);
INSERT INTO `room` VALUES (58, '502', '96', '0', 5);
INSERT INTO `room` VALUES (59, '601', '96', '0', 5);
INSERT INTO `room` VALUES (60, '602', '96', '0', 5);
INSERT INTO `room` VALUES (61, '101', '96', '0', 6);
INSERT INTO `room` VALUES (62, '102', '96', '0', 6);
INSERT INTO `room` VALUES (63, '201', '96', '0', 6);
INSERT INTO `room` VALUES (64, '202', '96', '0', 6);
INSERT INTO `room` VALUES (65, '301', '96', '0', 6);
INSERT INTO `room` VALUES (66, '302', '96', '0', 6);
INSERT INTO `room` VALUES (67, '401', '96', '0', 6);
INSERT INTO `room` VALUES (68, '402', '96', '0', 6);
INSERT INTO `room` VALUES (69, '501', '96', '0', 6);
INSERT INTO `room` VALUES (70, '502', '96', '0', 6);
INSERT INTO `room` VALUES (71, '601', '96', '0', 6);
INSERT INTO `room` VALUES (72, '602', '96', '0', 6);
INSERT INTO `room` VALUES (73, '101', '96', '0', 7);
INSERT INTO `room` VALUES (74, '102', '96', '0', 7);
INSERT INTO `room` VALUES (75, '201', '96', '0', 7);
INSERT INTO `room` VALUES (76, '202', '96', '0', 7);
INSERT INTO `room` VALUES (77, '301', '96', '0', 7);
INSERT INTO `room` VALUES (78, '302', '96', '0', 7);
INSERT INTO `room` VALUES (79, '401', '96', '0', 7);
INSERT INTO `room` VALUES (80, '402', '96', '0', 7);
INSERT INTO `room` VALUES (81, '501', '96', '0', 7);
INSERT INTO `room` VALUES (82, '502', '96', '0', 7);
INSERT INTO `room` VALUES (83, '601', '96', '0', 7);
INSERT INTO `room` VALUES (84, '602', '96', '0', 7);
INSERT INTO `room` VALUES (85, '101', '96', '0', 8);
INSERT INTO `room` VALUES (86, '102', '96', '0', 8);
INSERT INTO `room` VALUES (87, '201', '96', '0', 8);
INSERT INTO `room` VALUES (88, '202', '96', '0', 8);
INSERT INTO `room` VALUES (89, '301', '96', '0', 8);
INSERT INTO `room` VALUES (90, '302', '96', '0', 8);
INSERT INTO `room` VALUES (91, '401', '96', '0', 8);
INSERT INTO `room` VALUES (92, '402', '96', '0', 8);
INSERT INTO `room` VALUES (93, '501', '96', '0', 8);
INSERT INTO `room` VALUES (94, '502', '96', '0', 8);
INSERT INTO `room` VALUES (95, '601', '96', '0', 8);
INSERT INTO `room` VALUES (96, '602', '96', '0', 8);

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `building_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `building`(`building_id`) USING BTREE,
  CONSTRAINT `building` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单元' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES (1, 'A1单元', 1);
INSERT INTO `unit` VALUES (2, 'A2单元', 1);
INSERT INTO `unit` VALUES (3, 'B1单元', 2);
INSERT INTO `unit` VALUES (4, 'B2单元', 2);
INSERT INTO `unit` VALUES (5, 'C1单元', 3);
INSERT INTO `unit` VALUES (6, 'C2单元', 3);
INSERT INTO `unit` VALUES (7, 'D1单元', 4);
INSERT INTO `unit` VALUES (8, 'D2单元', 4);
INSERT INTO `unit` VALUES (9, 'D3单元', 4);
INSERT INTO `unit` VALUES (11, 'A3单元', 1);
INSERT INTO `unit` VALUES (12, 'A3单元', 1);
INSERT INTO `unit` VALUES (14, 'B3单元', 2);
INSERT INTO `unit` VALUES (15, 'B4单元', 2);
INSERT INTO `unit` VALUES (16, 'D4单元', 4);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别（0男1女）',
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `phone`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1892376579 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户（业主）' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '灰太狼', '123456', '17805052221', 1, 1);
INSERT INTO `user` VALUES (2, '王泓宇', '123456', '18004041026', 0, 1);
INSERT INTO `user` VALUES (3, '道伟', '123456', '11011001100', 0, 1);
INSERT INTO `user` VALUES (4, '贾伟强', '123456', '13119492637', 0, 1);
INSERT INTO `user` VALUES (5, '汤文龙', '123456', '13212009509', 0, 1);

-- ----------------------------
-- Table structure for user_car
-- ----------------------------
DROP TABLE IF EXISTS `user_car`;
CREATE TABLE `user_car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `car_id` int(11) NULL DEFAULT NULL,
  `inTime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `outTime` datetime(0) NULL DEFAULT NULL COMMENT '解除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `2`(`car_id`) USING BTREE,
  INDEX `1`(`user_id`) USING BTREE,
  CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `2` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车位分配记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_car
-- ----------------------------
INSERT INTO `user_car` VALUES (1, 1, 1, '2023-03-03 19:37:44', '2023-03-03 19:37:54');
INSERT INTO `user_car` VALUES (3, 1, 4, '2023-03-04 04:37:44', '2023-03-04 04:38:37');
INSERT INTO `user_car` VALUES (4, 1, 3, '2023-03-04 04:38:37', '2023-03-04 04:41:53');
INSERT INTO `user_car` VALUES (5, 1, 1, '2023-03-04 04:41:53', '2023-03-04 04:44:12');
INSERT INTO `user_car` VALUES (6, 1, 3, '2023-03-04 04:44:12', '2023-03-04 05:23:24');
INSERT INTO `user_car` VALUES (7, 2, 1, '2023-03-04 05:25:22', NULL);
INSERT INTO `user_car` VALUES (8, 4, 21, '2023-04-18 00:42:26', '2023-05-18 02:02:42');
INSERT INTO `user_car` VALUES (12, 3, 2, '2023-05-17 10:20:15', '2023-05-17 10:21:01');
INSERT INTO `user_car` VALUES (13, 5, 2, '2023-05-17 10:40:28', '2023-05-17 10:41:47');
INSERT INTO `user_car` VALUES (14, 5, 2, '2023-05-17 10:46:43', '2023-05-17 10:46:46');
INSERT INTO `user_car` VALUES (15, 5, 1, '2023-05-17 11:07:02', '2023-05-17 11:07:17');
INSERT INTO `user_car` VALUES (16, 3, 4, '2023-05-17 11:07:12', NULL);
INSERT INTO `user_car` VALUES (17, 4, 6, '2023-05-18 02:02:49', NULL);
INSERT INTO `user_car` VALUES (18, 5, 1, '2023-05-18 07:58:54', '2023-05-18 07:59:29');
INSERT INTO `user_car` VALUES (19, 5, 1, '2023-05-18 08:21:53', '2023-05-18 08:22:08');
INSERT INTO `user_car` VALUES (20, 5, 1, '2023-05-18 08:28:09', '2023-05-18 08:28:23');
INSERT INTO `user_car` VALUES (21, 5, 1, '2023-05-20 20:56:31', '2023-05-20 20:57:15');

-- ----------------------------
-- Table structure for user_payment
-- ----------------------------
DROP TABLE IF EXISTS `user_payment`;
CREATE TABLE `user_payment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `payment_id` int(11) NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `11`(`user_id`) USING BTREE,
  INDEX `12`(`payment_id`) USING BTREE,
  CONSTRAINT `11` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `12` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户缴费账单记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_payment
-- ----------------------------
INSERT INTO `user_payment` VALUES (1, 1, 1, '100', '2023-03-04 05:47:03', 1);
INSERT INTO `user_payment` VALUES (2, 1, 3, '1100', '2023-03-04 07:49:42', 1);
INSERT INTO `user_payment` VALUES (3, 1, 2, '100', '2023-03-04 12:11:42', 0);
INSERT INTO `user_payment` VALUES (4, 2, 4, '100', '2023-05-17 23:51:47', 0);

-- ----------------------------
-- Table structure for user_room
-- ----------------------------
DROP TABLE IF EXISTS `user_room`;
CREATE TABLE `user_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户',
  `room_id` int(11) NULL DEFAULT NULL COMMENT '房屋',
  `inTime` datetime(0) NULL DEFAULT NULL COMMENT '入住时间',
  `outTime` datetime(0) NULL DEFAULT NULL COMMENT '离去时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `3`(`user_id`) USING BTREE,
  INDEX `4`(`room_id`) USING BTREE,
  CONSTRAINT `4` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '将房屋分配给用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_room
-- ----------------------------
INSERT INTO `user_room` VALUES (1, 1, 1, '2023-01-03 20:16:05', '2023-01-04 05:21:10');
INSERT INTO `user_room` VALUES (2, 2, 2, '2023-02-03 20:16:13', '2023-02-04 05:25:06');
INSERT INTO `user_room` VALUES (3, 3, 3, '2023-03-04 04:10:23', '2023-03-04 12:10:54');
INSERT INTO `user_room` VALUES (4, 1, 4, '2023-03-04 04:13:28', '2023-03-04 04:44:25');
INSERT INTO `user_room` VALUES (5, 4, 1, '2023-03-04 04:13:43', '2023-03-04 08:43:42');
INSERT INTO `user_room` VALUES (6, 1, 5, '2023-03-04 04:44:25', '2023-03-04 05:23:27');
INSERT INTO `user_room` VALUES (7, 2, 2, '2023-03-04 05:25:14', '2023-05-17 08:49:34');
INSERT INTO `user_room` VALUES (8, 1, 1, '2023-03-04 05:25:18', '2023-03-04 08:44:30');
INSERT INTO `user_room` VALUES (9, 4, 4, '2023-03-04 08:44:26', NULL);
INSERT INTO `user_room` VALUES (10, 1, 1, '2023-03-04 08:44:34', '2023-04-18 00:41:52');
INSERT INTO `user_room` VALUES (11, 3, 3, '2023-03-04 12:11:12', '2023-05-17 00:14:13');
INSERT INTO `user_room` VALUES (14, 3, 5, '2023-05-17 00:14:13', NULL);
INSERT INTO `user_room` VALUES (15, 2, 3, '2023-05-17 08:49:34', NULL);
INSERT INTO `user_room` VALUES (16, 1892376578, 2, '2023-06-17 11:02:33', '2023-06-17 11:02:55');
INSERT INTO `user_room` VALUES (17, 1892376578, 1, '2023-05-17 11:06:52', '2023-05-17 11:07:15');

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
