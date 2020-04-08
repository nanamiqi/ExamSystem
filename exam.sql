/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : exam

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 07/04/2020 18:46:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exam_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (2, '002', '我的考试', '答案.txt', '7', '2020-03-18 12:32:28');
INSERT INTO `answer` VALUES (3, '002', '我的考试', '答案1.txt', '7', '2020-06-18 12:33:55');
INSERT INTO `answer` VALUES (4, '003', 'OS', 'R-CNN.pdf', '6602928', '2020-03-14 17:11:15');
INSERT INTO `answer` VALUES (5, '001', 'aaa', '2020xxx.doc', '155136', '2020-03-14 17:31:54');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `e_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `e_starttime` datetime(0) NULL DEFAULT NULL,
  `e_teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_autostart` tinyint(10) NULL DEFAULT NULL,
  `e_isend` tinyint(10) NULL DEFAULT NULL,
  `e_file` tinyint(10) NULL DEFAULT NULL,
  `e_clear` tinyint(10) NULL DEFAULT NULL,
  `e_isstart` tinyint(10) NULL DEFAULT NULL,
  `e_examination` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`e_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('操作系统', '2020-03-14 17:08:32', 'teacher1', 1, 1, 0, 1, 1, 'Fast R-CNN.pdf');
INSERT INTO `exam` VALUES ('数据结构', '2020-04-05 12:00:43', 'teacher1', 0, 0, 0, 1, 0, '2019年数据结构期末考试');
INSERT INTO `exam` VALUES ('编译原理', '2020-03-23 08:00:48', 'teacher2', 0, 1, 0, 1, 1, '2020年编译原理考试题');
INSERT INTO `exam` VALUES ('计算机组成原理', '2020-03-14 17:29:35', 'admin', 0, 1, 0, 0, 1, 'GoogLeNet.pdf');
INSERT INTO `exam` VALUES ('计算机网络', '2020-02-18 12:00:29', 'teacher2', 0, 1, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_class` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_exam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_submit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stu_id`, `stu_exam`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('001', 'aaa', '2', '编译原理', '0:0:0:0:0:0:0:1', NULL);
INSERT INTO `student` VALUES ('001', 'aaa', '2', '计算机组成原理', '0:0:0:0:0:0:0:1', NULL);
INSERT INTO `student` VALUES ('002', 'bbb', '1', '数据结构', '1.194.187.3', NULL);
INSERT INTO `student` VALUES ('003', 'xxx', '1', '操作系统', '0:0:0:0:0:0:0:1', NULL);
INSERT INTO `student` VALUES ('003', 'ccc', '1', '数据结构', '0:0:0:0:0:0:0:1', NULL);
INSERT INTO `student` VALUES ('004', 'ddd', '1', '计算机网络', NULL, NULL);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `t_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_manager` tinyint(10) NULL DEFAULT NULL,
  PRIMARY KEY (`t_username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1);
INSERT INTO `teacher` VALUES ('teacher1', '8d788385431273d11e8b43bb78f3aa41', 'teacher1', 0);
INSERT INTO `teacher` VALUES ('teacher2', '8d788385431273d11e8b43bb78f3aa41', 'teacher2', 0);

SET FOREIGN_KEY_CHECKS = 1;
