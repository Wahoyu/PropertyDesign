/*
 Navicat Premium Data Transfer

 Source Server         : win虚拟机
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : 10.211.55.3:3306
 Source Schema         : wuye

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 17/08/2023 16:19:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL COMMENT '管理员',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='物业管理人员';

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` (`id`, `username`, `password`, `phone`, `sex`, `email`) VALUES (1, '管理猿', '123456', '13788889999', 0, 'guanliyuan@qq.com');
INSERT INTO `admin` (`id`, `username`, `password`, `phone`, `sex`, `email`) VALUES (2, '喜羊羊', '123456', '13700007777', 0, 'xiyangyang@qq.com');
INSERT INTO `admin` (`id`, `username`, `password`, `phone`, `sex`, `email`) VALUES (3, '美羊羊', '123456', '18011112222', 0, 'meiyangyang@qq.com');
COMMIT;

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0：电梯；1：楼梯',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='楼栋管理';

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '停车位名称',
  `type` int(11) DEFAULT NULL COMMENT '地面或者地下',
  `status` int(11) DEFAULT NULL COMMENT '是否为空',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='车位管理';

-- ----------------------------
-- Records of car
-- ----------------------------
BEGIN;
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (1, '车位1', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (2, '车位2', 0, 1);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (3, '车位3', 0, 1);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (4, '车位4', 0, 1);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (5, '车位5', 0, 0);
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (6, '车位6', 0, 1);
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
INSERT INTO `car` (`id`, `name`, `type`, `status`) VALUES (21, '车位21', 1, 1);
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
-- Table structure for complain
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `6` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='投诉单';

-- ----------------------------
-- Records of complain
-- ----------------------------
BEGIN;
INSERT INTO `complain` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (1, '为什么垃圾没有人倒！', 2, 0, '2023-04-13 10:58:45', NULL);
INSERT INTO `complain` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (2, '为什么时间还没设置好了？', 2, 1, '2023-05-16 07:18:13', '时间设置好了！');
INSERT INTO `complain` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (3, '为什么大门从来不关？', 2, 0, '2023-05-18 08:22:49', NULL);
INSERT INTO `complain` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (4, '为什么幼儿园那么吵！', 2, 1, '2023-05-20 20:57:52', '已经沟通');
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公告标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公告内容',
  `createBy` int(11) DEFAULT NULL COMMENT '创建者',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '修改者',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(11) DEFAULT NULL COMMENT '是否展示(0:展示，1:不展示)',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `create` (`createBy`) USING BTREE,
  KEY `update` (`updateBy`) USING BTREE,
  CONSTRAINT `create` FOREIGN KEY (`createBy`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `update` FOREIGN KEY (`updateBy`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='通知（公告）';

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`id`, `title`, `content`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`) VALUES (1, '公告一', '垃圾分类进万家，津采纷呈靠大家！', 1, '2023-03-03 09:39:46', 1, '2023-06-02 01:21:39', 0);
INSERT INTO `notice` (`id`, `title`, `content`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`) VALUES (2, '公告二', '公共区域禁止吸烟！', 1, '2023-03-03 09:40:06', 1, '2023-06-02 01:21:42', 0);
INSERT INTO `notice` (`id`, `title`, `content`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`) VALUES (3, '公告三', '请节约用电使用空调，推荐温度26℃-28℃即可。', 1, '2023-05-16 11:21:04', 1, '2023-05-16 20:05:13', 0);
COMMIT;

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='缴费单';

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否解决',
  `time` datetime DEFAULT NULL COMMENT '创建时间',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `5` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='报修单';

-- ----------------------------
-- Records of repair
-- ----------------------------
BEGIN;
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (1, '门锁损耗，不能正常开关。', 2, '1', '2023-05-16 11:00:38', '门锁已经更换，请注意查收');
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (2, '水管破裂，造成漏水', 2, '0', '2023-05-16 10:47:56', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (3, '楼道灯不亮，影响行走安全', 2, '1', '2023-05-18 08:00:41', '路灯问题已解决');
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (4, '为什么垃圾没有人倒！', 2, '1', '2023-05-18 08:29:31', '垃圾倾倒成功');
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (5, '燃气表故障，无法正常使用燃气', 2, '0', '2023-05-20 09:16:48', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (6, '室内电路出现问题，导致无法使用电器', 2, '0', '2023-05-20 09:22:02', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (7, '卫生间马桶堵塞，需要清理', 2, '0', '2023-05-20 09:57:21', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (8, '防盗门铰链松动，容易造成安全隐患', 2, '0', '2023-05-20 09:59:21', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (9, '车库门打不开，车辆无法驶出', 2, '0', '2023-05-20 10:17:20', NULL);
INSERT INTO `repair` (`id`, `content`, `user_id`, `status`, `time`, `result`) VALUES (10, '大门损坏', 2, '0', '2023-06-02 11:17:51', NULL);
COMMIT;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '房屋名称',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '房屋面积',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否为空(0空房)',
  `unit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `danyuan` (`unit_id`) USING BTREE,
  CONSTRAINT `danyuan` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='房屋';

-- ----------------------------
-- Records of room
-- ----------------------------
BEGIN;
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (1, '101', '300', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (2, '102', '96', '1', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (3, '201', '96', '1', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (4, '202', '96', '1', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (5, '301', '96', '1', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (6, '302', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (7, '401', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (8, '402', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (9, '501', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (10, '502', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (11, '601', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (12, '602', '96', '0', 1);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (13, '101', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (14, '102', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (15, '201', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (16, '202', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (17, '301', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (18, '302', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (19, '401', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (20, '402', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (21, '501', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (22, '502', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (23, '601', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (24, '602', '96', '0', 2);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (25, '101', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (26, '102', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (27, '201', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (28, '202', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (29, '301', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (30, '302', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (31, '401', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (32, '402', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (33, '501', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (34, '502', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (35, '601', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (36, '602', '96', '0', 3);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (37, '101', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (38, '102', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (39, '201', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (40, '202', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (41, '301', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (42, '302', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (43, '401', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (44, '402', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (45, '501', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (46, '502', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (47, '601', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (48, '602', '96', '0', 4);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (49, '101', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (50, '102', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (51, '201', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (52, '202', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (53, '301', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (54, '302', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (55, '401', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (56, '402', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (57, '501', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (58, '502', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (59, '601', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (60, '602', '96', '0', 5);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (61, '101', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (62, '102', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (63, '201', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (64, '202', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (65, '301', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (66, '302', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (67, '401', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (68, '402', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (69, '501', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (70, '502', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (71, '601', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (72, '602', '96', '0', 6);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (73, '101', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (74, '102', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (75, '201', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (76, '202', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (77, '301', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (78, '302', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (79, '401', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (80, '402', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (81, '501', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (82, '502', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (83, '601', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (84, '602', '96', '0', 7);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (85, '101', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (86, '102', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (87, '201', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (88, '202', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (89, '301', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (90, '302', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (91, '401', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (92, '402', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (93, '501', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (94, '502', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (95, '601', '96', '0', 8);
INSERT INTO `room` (`id`, `name`, `area`, `status`, `unit_id`) VALUES (96, '602', '96', '0', 8);
COMMIT;

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `building` (`building_id`) USING BTREE,
  CONSTRAINT `building` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='单元';

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
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (11, 'A3单元', 1);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (12, 'A3单元', 1);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (14, 'B3单元', 2);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (15, 'B4单元', 2);
INSERT INTO `unit` (`id`, `name`, `building_id`) VALUES (16, 'D4单元', 4);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `sex` int(11) DEFAULT NULL COMMENT '性别（0男1女）',
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`phone`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1892376579 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户（业主）';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `sex`, `status`) VALUES (1, '灰太狼', '123456', '17805052221', 1, 1);
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `sex`, `status`) VALUES (2, '王熊二', '123456', '18000000000', 0, 1);
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `sex`, `status`) VALUES (3, '王道伟', '123456', '11011001100', 0, 1);
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `sex`, `status`) VALUES (4, '贾强强', '123456', '11911991919', 0, 1);
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `sex`, `status`) VALUES (5, '汤达人', '123456', '12344556677', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for user_car
-- ----------------------------
DROP TABLE IF EXISTS `user_car`;
CREATE TABLE `user_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `inTime` datetime DEFAULT NULL COMMENT '添加时间',
  `outTime` datetime DEFAULT NULL COMMENT '解除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `2` (`car_id`) USING BTREE,
  KEY `1` (`user_id`) USING BTREE,
  CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `2` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='车位分配记录表';

-- ----------------------------
-- Records of user_car
-- ----------------------------
BEGIN;
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (1, 1, 1, '2023-03-03 19:37:44', '2023-03-03 19:37:54');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (3, 1, 4, '2023-03-04 04:37:44', '2023-03-04 04:38:37');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (4, 1, 3, '2023-03-04 04:38:37', '2023-03-04 04:41:53');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (5, 1, 1, '2023-03-04 04:41:53', '2023-03-04 04:44:12');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (6, 1, 3, '2023-03-04 04:44:12', '2023-03-04 05:23:24');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (7, 2, 1, '2023-03-04 05:25:22', NULL);
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (8, 4, 21, '2023-04-18 00:42:26', '2023-05-18 02:02:42');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (12, 3, 2, '2023-05-17 10:20:15', '2023-05-17 10:21:01');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (13, 5, 2, '2023-05-17 10:40:28', '2023-05-17 10:41:47');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (14, 5, 2, '2023-05-17 10:46:43', '2023-05-17 10:46:46');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (15, 5, 1, '2023-05-17 11:07:02', '2023-05-17 11:07:17');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (16, 3, 4, '2023-05-17 11:07:12', NULL);
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (17, 4, 6, '2023-05-18 02:02:49', NULL);
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (18, 5, 1, '2023-05-18 07:58:54', '2023-05-18 07:59:29');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (19, 5, 1, '2023-05-18 08:21:53', '2023-05-18 08:22:08');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (20, 5, 1, '2023-05-18 08:28:09', '2023-05-18 08:28:23');
INSERT INTO `user_car` (`id`, `user_id`, `car_id`, `inTime`, `outTime`) VALUES (21, 5, 1, '2023-05-20 20:56:31', '2023-05-20 20:57:15');
COMMIT;

-- ----------------------------
-- Table structure for user_payment
-- ----------------------------
DROP TABLE IF EXISTS `user_payment`;
CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `11` (`user_id`) USING BTREE,
  KEY `12` (`payment_id`) USING BTREE,
  CONSTRAINT `11` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `12` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户缴费账单记录表';

-- ----------------------------
-- Records of user_payment
-- ----------------------------
BEGIN;
INSERT INTO `user_payment` (`id`, `user_id`, `payment_id`, `value`, `time`, `status`) VALUES (1, 1, 1, '100', '2023-03-04 05:47:03', 1);
INSERT INTO `user_payment` (`id`, `user_id`, `payment_id`, `value`, `time`, `status`) VALUES (2, 1, 3, '1100', '2023-03-04 07:49:42', 1);
INSERT INTO `user_payment` (`id`, `user_id`, `payment_id`, `value`, `time`, `status`) VALUES (3, 1, 2, '100', '2023-03-04 12:11:42', 0);
INSERT INTO `user_payment` (`id`, `user_id`, `payment_id`, `value`, `time`, `status`) VALUES (4, 2, 4, '100', '2023-05-17 23:51:47', 0);
COMMIT;

-- ----------------------------
-- Table structure for user_room
-- ----------------------------
DROP TABLE IF EXISTS `user_room`;
CREATE TABLE `user_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户',
  `room_id` int(11) DEFAULT NULL COMMENT '房屋',
  `inTime` datetime DEFAULT NULL COMMENT '入住时间',
  `outTime` datetime DEFAULT NULL COMMENT '离去时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `3` (`user_id`) USING BTREE,
  KEY `4` (`room_id`) USING BTREE,
  CONSTRAINT `4` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='将房屋分配给用户';

-- ----------------------------
-- Records of user_room
-- ----------------------------
BEGIN;
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (1, 1, 1, '2023-01-03 20:16:05', '2023-01-04 05:21:10');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (2, 2, 2, '2023-02-03 20:16:13', '2023-02-04 05:25:06');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (3, 3, 3, '2023-03-04 04:10:23', '2023-03-04 12:10:54');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (4, 1, 4, '2023-03-04 04:13:28', '2023-03-04 04:44:25');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (5, 4, 1, '2023-03-04 04:13:43', '2023-03-04 08:43:42');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (6, 1, 5, '2023-03-04 04:44:25', '2023-03-04 05:23:27');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (7, 2, 2, '2023-03-04 05:25:14', '2023-05-17 08:49:34');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (8, 1, 1, '2023-03-04 05:25:18', '2023-03-04 08:44:30');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (9, 4, 4, '2023-03-04 08:44:26', NULL);
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (10, 1, 1, '2023-03-04 08:44:34', '2023-04-18 00:41:52');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (11, 3, 3, '2023-03-04 12:11:12', '2023-05-17 00:14:13');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (14, 3, 5, '2023-05-17 00:14:13', NULL);
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (15, 2, 3, '2023-05-17 08:49:34', NULL);
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (16, 1892376578, 2, '2023-06-17 11:02:33', '2023-06-17 11:02:55');
INSERT INTO `user_room` (`id`, `user_id`, `room_id`, `inTime`, `outTime`) VALUES (17, 1892376578, 1, '2023-05-17 11:06:52', '2023-05-17 11:07:15');
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
