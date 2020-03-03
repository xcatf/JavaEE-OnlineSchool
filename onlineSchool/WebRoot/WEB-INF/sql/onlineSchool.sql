/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : onlineschool

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 27/11/2019 22:52:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '管理员', 'admin', 'admin');
INSERT INTO `admin` VALUES (2, '邹伟红', 'xor', 'qwemnb');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `intro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (2, '计算机科学与技术', '计算机科学与技术');
INSERT INTO `college` VALUES (3, '信息管理学院', '信息管理学院，信息管理与信息系统');
INSERT INTO `college` VALUES (8, '外国语言学院', '集成英语、俄语、法语、日语、韩语、西班牙语、德语等主流外语语种');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `college_id` int(11) NOT NULL DEFAULT 0,
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `intro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'Java Web 程序设计', 2, '80015001', '介绍MVC设计思想，包括JSP+Servet+Java Bean，以及Spring MVC+MyBatis的框架整合开发。');
INSERT INTO `course` VALUES (3, 'SQLServer 2016技术', 2, '80015002', '掌握微软SQLServer 2016数据库的使用以及触发器等开发');
INSERT INTO `course` VALUES (5, '英语高级写作技巧', 8, '70010002', '基于英语写作基础，进阶教授英语写作高级技巧，锻炼学生写作能力。');

-- ----------------------------
-- Table structure for course_file
-- ----------------------------
DROP TABLE IF EXISTS `course_file`;
CREATE TABLE `course_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `course_id` int(11) NULL DEFAULT 0,
  `record_time` datetime(0) NULL DEFAULT NULL,
  `teacher_id` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_file
-- ----------------------------
INSERT INTO `course_file` VALUES (8, 'Spring MVC教程.pptx', 1, '2019-11-26 16:10:05', 6);

-- ----------------------------
-- Table structure for course_video
-- ----------------------------
DROP TABLE IF EXISTS `course_video`;
CREATE TABLE `course_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT 0,
  `record_time` datetime(0) NULL DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_video
-- ----------------------------
INSERT INTO `course_video` VALUES (13, 'Web开发技术 00_00_00-00_02_00.mp4', 1, '2019-11-26 16:10:18', 6);

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `record_time` datetime(0) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discuss
-- ----------------------------
INSERT INTO `discuss` VALUES (4, '在大学英语六级考试中，看图写作文的语言组织思路是什么？', '大学六级考试作文部分越来越重视看图写作文技巧的考察，从读懂图中所说含义到架构构思，再到具体撰写，应该遵循怎样的思路？', 1, '2018-03-31 22:52:37', 5);
INSERT INTO `discuss` VALUES (5, 'Java多线程', '欢迎同学们参与讨论', 1, '2019-11-19 21:12:40', 1);

-- ----------------------------
-- Table structure for discuss_post
-- ----------------------------
DROP TABLE IF EXISTS `discuss_post`;
CREATE TABLE `discuss_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discuss_id` int(11) NOT NULL DEFAULT 0,
  `student_id` int(11) NOT NULL DEFAULT 0,
  `record_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discuss_post
-- ----------------------------
INSERT INTO `discuss_post` VALUES (1, 'dsdsadsadsadsadsasa肥肥的是非得失', 1, 1, '2018-03-30 22:21:08');
INSERT INTO `discuss_post` VALUES (2, 'dsdsadsadsadsadsasa肥肥的是非得失', 1, 1, '2018-03-30 22:22:30');
INSERT INTO `discuss_post` VALUES (3, 'dsdsadsadsadsadsasa肥肥的是非得失', 1, 1, '2018-03-30 22:23:34');
INSERT INTO `discuss_post` VALUES (4, '地方范德萨发范德萨发斯蒂芬大萨达的范德萨', 1, 1, '2018-03-31 22:31:41');
INSERT INTO `discuss_post` VALUES (6, '看图写作文应当从图中人物或事物关系开始，理解图中所描述的事是关于生活、工作、旅行、哲学等等，搞清楚这些才是理解图文的重要步骤！！！', 4, 1, '2018-03-31 23:00:15');
INSERT INTO `discuss_post` VALUES (7, '请问Java多线程的概念是什么？', 5, 2, '2019-11-19 21:15:48');
INSERT INTO `discuss_post` VALUES (8, '6222', 5, 3, '2019-11-24 21:01:40');
INSERT INTO `discuss_post` VALUES (9, '打卡', 4, 3, '2019-11-27 01:13:46');
INSERT INTO `discuss_post` VALUES (10, 'Ajax', 4, 3, '2019-11-27 20:07:40');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `record_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '关于《杏林网校》的启用通知', '请学院老师、学生注意，由我校开发的《大学生学习平台》已经上线，今后将实现在平台上进行资料上传', '2019-11-19 21:06:40');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `college_id` int(11) NOT NULL DEFAULT 0,
  `telphone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_card_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT 0,
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (3, '邹伟红', '201701020223', 2, '18574792421', '432524200001122517', 0, 'xor', 'qwemnb');

-- ----------------------------
-- Table structure for student_task
-- ----------------------------
DROP TABLE IF EXISTS `student_task`;
CREATE TABLE `student_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `record_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_task
-- ----------------------------
INSERT INTO `student_task` VALUES (1, 1, 2, 20, '2018-03-31 20:28:53');
INSERT INTO `student_task` VALUES (2, 1, 2, 60, '2018-03-31 22:40:56');
INSERT INTO `student_task` VALUES (3, 1, 4, 60, '2018-03-31 23:00:57');
INSERT INTO `student_task` VALUES (4, 2, 2, 20, '2019-11-18 22:44:15');
INSERT INTO `student_task` VALUES (5, 3, 4, 20, '2019-11-21 16:51:16');
INSERT INTO `student_task` VALUES (6, 3, 2, 10, '2019-11-26 15:57:31');
INSERT INTO `student_task` VALUES (7, 3, 4, 0, '2019-11-26 15:57:54');
INSERT INTO `student_task` VALUES (8, 3, 2, 20, '2019-11-26 22:02:00');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL DEFAULT 0,
  `course_id` int(11) NOT NULL DEFAULT 0,
  `record_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES (2, 1, 1, '2018-03-29 22:23:24');
INSERT INTO `task` VALUES (3, 1, 3, '2018-03-31 22:28:09');
INSERT INTO `task` VALUES (4, 1, 5, '2018-03-31 22:55:35');

-- ----------------------------
-- Table structure for task_question
-- ----------------------------
DROP TABLE IF EXISTS `task_question`;
CREATE TABLE `task_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `item_a` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `item_b` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `item_c` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `item_d` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `answer` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_question
-- ----------------------------
INSERT INTO `task_question` VALUES (3, 'MVC三层模式中，C指的是哪一层？', '控制层', '模型层', '视图层', '以上都不是', 'A', 2, 10);
INSERT INTO `task_question` VALUES (4, '以下关于重定向forward说法正确的是？', '重定向时URL不变而且不可传递参数', '重定向时URL会变而且不可传递参数', '重定向时URL不变而且可传递参数', '重定向时URL会变而且可传递参数', 'C', 2, 10);
INSERT INTO `task_question` VALUES (5, '以下关于Http Session会话的说法正确的是？', 'Session对象保存于磁盘中', 'Session存在于服务器内存中', 'Session存在于服务器数据库中', 'session存在于客户端浏览器中', 'B', 2, 10);
INSERT INTO `task_question` VALUES (6, '在MySQL脚本中，查询第一条数据的写法正确的是？', 'LIMIT 1', 'LIMIT 0', 'TOP 1', 'FIRST', 'A', 2, 10);
INSERT INTO `task_question` VALUES (8, '而我却二无群二', '而为全额', '而为全额', '而我却二无群', '企鹅窝群二', 'A', 3, 10);
INSERT INTO `task_question` VALUES (9, 'What’s the mean on the earth road ?', 'YES OR NO', 'NO', 'YES', 'BOTH YES', 'B', 4, 20);
INSERT INTO `task_question` VALUES (10, 'How much dose the sheep on the moution ?', 'Three sheeps in the house.', 'No sheep in the house.', 'Much sheep in the door.', 'Both Wrong', 'C', 4, 10);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT 0,
  `college_id` int(11) NOT NULL DEFAULT 0,
  `telphone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_card_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (3, '32', 0, 2, '323', '232', '323', '3232', '232', 1);
INSERT INTO `teacher` VALUES (4, 'wewq', 0, 2, 'eqwewqe', 'wqewqeq', 'qweqwe', 'ewqe', 'ewqewq', 1);
INSERT INTO `teacher` VALUES (5, '21321', 1, 2, '321312', '321312', '321312', '312321', '32131', 3);
INSERT INTO `teacher` VALUES (6, '邹伟红', 0, 9, '18574792421', '43252420000112517', 'xor', 'qwemnb', '123456', 3);

SET FOREIGN_KEY_CHECKS = 1;
