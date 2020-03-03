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

 Date: 26/12/2019 21:24:33
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
INSERT INTO `admin` VALUES (2, '邹伟红', 'admin', 'admin');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `intro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (2, '信息科学与工程学院', '医学信息工程、计算机科学与技术、信息管理与信息系统');
INSERT INTO `college` VALUES (8, '人文与管理学院', '英语、应用心理学、市场营销、公共事业管理');
INSERT INTO `college` VALUES (9, '中医学院', '中医学（“5+3”一体化，本硕连读）、中医学');
INSERT INTO `college` VALUES (11, '医学院', '临床医学、医学检验、口腔医学、医学影像学');
INSERT INTO `college` VALUES (12, '药学院', '药学、药物制剂、中药学、中药资源与开发、制药工程、食品科学与工程、生物工程');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `record_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'JavaEE实用教程', 2, '80015001', '介绍MVC设计思想，包括JSP+Servet+Java Bean，以及Spring+Spring MVC+MyBatis的框架整合开发。');
INSERT INTO `course` VALUES (3, 'SQLServer 2016技术', 2, '80015002', '掌握微软SQLServer 2016数据库的使用以及触发器等开发');
INSERT INTO `course` VALUES (5, '英语高级写作技巧', 8, '70010002', '基于英语写作基础，进阶教授英语写作高级技巧，锻炼学生写作能力。');
INSERT INTO `course` VALUES (6, '中医学基础', 9, '70010003', '《中医学基础》是1974年上海科技出版社出版的图书，作者是北京中医学院。本书着重阐述了中医脏象、经络所体现的人体生理、病理，以及病因、诊断、辨证、防治等基本理论。');
INSERT INTO `course` VALUES (7, '中医诊断学', 12, '70010004', '中医诊断学是根据中医学的理论，研究诊察病情、判断病种、辨别证候的基础理论、基本知识和基本技能的一门学科。');
INSERT INTO `course` VALUES (9, '数据结构与算法', 2, '80015005', '计算机课程的重要基础课程');
INSERT INTO `course` VALUES (10, '中医诊断学', 9, '70010004', '中医诊断学是根据中医学的理论，研究诊察病情、判断病种、辨别证候的基础理论、基本知识和基本技能的一门学科。');

-- ----------------------------
-- Table structure for course_file
-- ----------------------------
DROP TABLE IF EXISTS `course_file`;
CREATE TABLE `course_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `pay_coin` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT 0,
  `record_time` datetime(0) NULL DEFAULT NULL,
  `teacher_id` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_file
-- ----------------------------
INSERT INTO `course_file` VALUES (11, '中医学基础(一).pptx', 50, 6, '2019-11-28 03:41:10', 6);
INSERT INTO `course_file` VALUES (12, '中医学基础.docx', 40, 6, '2019-11-28 03:42:27', 6);
INSERT INTO `course_file` VALUES (13, '数据库设计.docx', 30, 1, '2019-12-23 21:30:04', 6);
INSERT INTO `course_file` VALUES (14, '2017级《Java EE应用开发》项目答辩须知.docx', 20, 1, '2019-12-25 23:51:59', 7);
INSERT INTO `course_file` VALUES (15, '2017级《Java EE应用开发》项目答辩须知.docx', 100, 1, '2019-12-26 20:29:55', 6);
INSERT INTO `course_file` VALUES (16, '中医诊断学(一).docx', 12, 7, '2019-12-26 20:38:03', 6);

-- ----------------------------
-- Table structure for course_video
-- ----------------------------
DROP TABLE IF EXISTS `course_video`;
CREATE TABLE `course_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pay_coin` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NOT NULL DEFAULT 0,
  `record_time` datetime(0) NULL DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_video
-- ----------------------------
INSERT INTO `course_video` VALUES (16, '中医学基础(一).mp4', 20, 6, '2019-11-28 10:17:36', 6);
INSERT INTO `course_video` VALUES (18, 'Web开发技术 00_00_00-00_02_00.mp4', 20, 1, '2019-11-28 10:22:10', 6);
INSERT INTO `course_video` VALUES (19, '中医诊断学(一).mp4', 99, 1, '2019-12-25 23:58:48', 7);
INSERT INTO `course_video` VALUES (20, '中医诊断学(一).mp4', 100, 7, '2019-12-26 20:37:16', 6);

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
INSERT INTO `discuss` VALUES (4, '在大学英语六级考试中，看图写作文的语言组织思路是什么？', '大学六级考试作文部分越来越重视看图写作文技巧的考察，从读懂图中所说含义到架构构思，再到具体撰写，应该遵循怎样的思路？', 6, '2019-11-23 16:29:12', 5);
INSERT INTO `discuss` VALUES (5, 'JavaEE期末考试复习', 'JavaEE期末考试复习要点：....', 6, '2019-12-26 20:31:55', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discuss_post
-- ----------------------------
INSERT INTO `discuss_post` VALUES (1, 'I Love China', 4, 3, '2019-12-26 20:04:45');
INSERT INTO `discuss_post` VALUES (2, 'I love China', 5, 3, '2019-12-26 20:32:19');

-- ----------------------------
-- Table structure for file_expense
-- ----------------------------
DROP TABLE IF EXISTS `file_expense`;
CREATE TABLE `file_expense`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `pay_coin` int(11) NULL DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `record_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_expense
-- ----------------------------
INSERT INTO `file_expense` VALUES (1, 11, 50, 3, '2019-12-19 18:47:23');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '关于《杏林网校》的启用通知', '请学院老师、学生注意，由我校开发的《杏林网校》已经上线，今后将实现在平台上进行资料上传', '2019-11-19 21:06:40');
INSERT INTO `notice` VALUES (5, ' 中医学诊断课程上线', '由药学院推出的中医学诊断课程已经上线，欢迎同学们来学习', '2019-11-28 11:16:11');
INSERT INTO `notice` VALUES (6, '杏林网校上线啦！', 'Hello World！', '2019-12-15 21:03:34');

-- ----------------------------
-- Table structure for recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `recharge_record`;
CREATE TABLE `recharge_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `recharge_coin` int(11) NOT NULL,
  `record_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recharge_record
-- ----------------------------
INSERT INTO `recharge_record` VALUES (4, 3, 200, '2019-11-28 03:41:10');
INSERT INTO `recharge_record` VALUES (5, 3, 256, '2019-12-25 22:19:44');
INSERT INTO `recharge_record` VALUES (6, 3, 10, '2019-12-25 22:22:06');
INSERT INTO `recharge_record` VALUES (7, 3, 30, '2019-12-26 20:16:38');
INSERT INTO `recharge_record` VALUES (8, 3, 200, '2019-12-26 20:27:25');
INSERT INTO `recharge_record` VALUES (9, 4, 1000, '2019-12-26 20:34:59');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `college_id` int(11) NOT NULL DEFAULT 0,
  `coin` int(11) NULL DEFAULT NULL,
  `telphone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_card_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT 0,
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 306 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (3, '张三', '201701020250', 8, 2440, '18574792421', '424332200701092597', 0, 'login1', '123456');
INSERT INTO `student` VALUES (4, '李四', '201701020201', 2, 1300, '18574792411', '43253917800112521', 0, 'stu4', 'aaaaaa');
INSERT INTO `student` VALUES (8, '小李', '201701020250', 2, 43, '15774798524', '431712199811115041', 0, 'xiaoli', '123456');
INSERT INTO `student` VALUES (9, '学生3', '201701020201', 2, 34, '18574792411', '43253917800112521', 0, 'stu1', 'bbbbbb');
INSERT INTO `student` VALUES (10, '学生4', '201701020201', 9, 23, '18574792411', '43253917800112521', 0, 'stu1', 'aaaaaaaaaaaaaa');
INSERT INTO `student` VALUES (12, '学生5', '201701020201', 11, 45, '18574792411', '43253917800112521', 0, 'stu3', 'qwertyui');
INSERT INTO `student` VALUES (13, '学生6', '201701020201', 11, 45, '18574792411', '43253917800112521', 0, 'stu3', 'qwertyui');
INSERT INTO `student` VALUES (14, '学生7', '201701020201', 11, 45, '18574792411', '43253917800112521', 0, 'stu3', 'qwertyui');
INSERT INTO `student` VALUES (15, '学生8', '2201701020251', 2, 100, '18574792421', '424332200701092599', 0, 'stu8', '123456');
INSERT INTO `student` VALUES (261, '马皓媛', '80016001', 2, 0, '18219220923', '72292319991291', 1, 'stu0001', '123456.0');
INSERT INTO `student` VALUES (262, '高荣泽', '80016002', 2, 0, '18219220920', '72292319991292', 1, 'stu0002', '123456.0');
INSERT INTO `student` VALUES (263, '郑文进', '80016003', 2, 0, '18219220921', '72292319991293', 0, 'stu0003', '123456.0');
INSERT INTO `student` VALUES (264, '李玉怀', '80016004', 2, 0, '18219220922', '72292319991294', 0, 'stu0004', '123456.0');
INSERT INTO `student` VALUES (265, '刘斐', '80016005', 2, 0, '18219220924', '72292319991295', 0, 'stu0005', '123456.0');
INSERT INTO `student` VALUES (266, '胡敏', '80016006', 2, 0, '18219220925', '72292319991296', 1, 'stu0006', '123456.0');
INSERT INTO `student` VALUES (267, '晏建勋', '80016007', 2, 0, '18219220926', '72292319991297', 1, 'stu0007', '123456.0');
INSERT INTO `student` VALUES (268, '刘子桥', '80016008', 2, 0, '18219220927', '72292319991298', 1, 'stu0008', '123456.0');
INSERT INTO `student` VALUES (269, '童莎莎', '80016009', 2, 0, '18219220928', '72292319991299', 1, 'stu0009', '123456.0');
INSERT INTO `student` VALUES (270, '刘迎丽', '80016010', 2, 0, '18219220929', '72292319991300', 1, 'stu0010', '123456.0');
INSERT INTO `student` VALUES (271, '徐梦颖', '80016011', 2, 0, '18219220920', '72292319991301', 1, 'stu0011', '123456.0');
INSERT INTO `student` VALUES (272, '谢洁', '80016012', 2, 0, '18219220910', '72292319991302', 1, 'stu0012', '123456.0');
INSERT INTO `student` VALUES (273, '杨全荣', '80016013', 2, 0, '18219220911', '72292319991302', 0, 'stu0013', '123456.0');
INSERT INTO `student` VALUES (274, '张海军', '80016014', 2, 0, '18219220912', '72292319991303', 0, 'stu0014', '123456.0');
INSERT INTO `student` VALUES (275, '罗涛', '80016015', 2, 0, '18219220913', '72292319991304', 0, 'stu0015', '123456.0');
INSERT INTO `student` VALUES (276, '唐静', '80016016', 2, 0, '18219220914', '72292319991305', 0, 'stu0016', '123456.0');
INSERT INTO `student` VALUES (277, '罗日鸿', '80016017', 2, 0, '18219220915', '72292319991306', 0, 'stu0017', '123456.0');
INSERT INTO `student` VALUES (278, '何熊辉', '80016018', 2, 0, '18219220916', '72292319991307', 0, 'stu0018', '123456.0');
INSERT INTO `student` VALUES (279, '李世阳', '80016019', 2, 0, '18219220917', '72292319991308', 0, 'stu0019', '123456.0');
INSERT INTO `student` VALUES (280, '邹伟红', '80016020', 2, 0, '18219220918', '72292319991309', 0, 'stu0020', '123456.0');
INSERT INTO `student` VALUES (281, '刘佩儒', '80016021', 2, 0, '18219220913', '72292319991298', 0, 'stu0021', '123456.0');
INSERT INTO `student` VALUES (282, '肖诗隆', '80016022', 2, 0, '18219220913', '72292319991299', 0, 'stu0022', '123456.0');
INSERT INTO `student` VALUES (283, '杜成剑', '80016023', 2, 0, '18219220912', '72292319991300', 0, 'stu0023', '123456.0');
INSERT INTO `student` VALUES (284, '钟理', '80016024', 2, 0, '18219220912', '72292319991301', 0, 'stu0024', '123456.0');
INSERT INTO `student` VALUES (285, '代文韬', '80016025', 2, 0, '18219220911', '72292319991302', 0, 'stu0025', '123456.0');
INSERT INTO `student` VALUES (286, '易翰文', '80016026', 2, 0, '18219220911', '72292319991302', 0, 'stu0026', '123456.0');
INSERT INTO `student` VALUES (287, '李曾浩', '80016027', 2, 0, '18219220910', '72292319991303', 0, 'stu0027', '123456.0');
INSERT INTO `student` VALUES (288, '张海东', '80016028', 2, 0, '18219220909', '72292319991304', 0, 'stu0028', '123456.0');
INSERT INTO `student` VALUES (289, '刘镇国', '80016029', 2, 0, '18219220909', '72292319991305', 0, 'stu0029', '123456.0');
INSERT INTO `student` VALUES (290, '杨广', '80016030', 2, 0, '18219220908', '72292319991306', 0, 'stu0030', '123456.0');
INSERT INTO `student` VALUES (291, '贺辉', '80016031', 2, 0, '18219220908', '72292319991307', 0, 'stu0031', '123456.0');
INSERT INTO `student` VALUES (292, '黄晓军', '80016032', 2, 0, '18219220907', '72292319991308', 0, 'stu0032', '123456.0');
INSERT INTO `student` VALUES (293, '许嘉毅', '80016033', 2, 0, '18219220907', '72292319991309', 0, 'stu0033', '123456.0');
INSERT INTO `student` VALUES (294, '王荣杰', '80016034', 2, 0, '18219220906', '72292319991298', 0, 'stu0034', '123456.0');
INSERT INTO `student` VALUES (295, '钟子元', '80016035', 2, 0, '18219220905', '72292319991299', 0, 'stu0035', '123456.0');
INSERT INTO `student` VALUES (296, '张林', '80016036', 2, 0, '18219220905', '72292319991300', 0, 'stu0036', '123456.0');
INSERT INTO `student` VALUES (297, '杨某坤', '80016037', 2, 0, '18219220904', '72292319991301', 0, 'stu0037', '123456.0');
INSERT INTO `student` VALUES (298, '汪秋怡', '80016038', 2, 0, '18219220904', '72292319991302', 1, 'stu0038', '123456.0');
INSERT INTO `student` VALUES (299, '葛鸿飞', '80016039', 2, 0, '18219220903', '72292319991302', 0, 'stu0039', '123456.0');
INSERT INTO `student` VALUES (300, '赵栗淮', '80016040', 2, 0, '18219220902', '72292319991303', 1, 'stu0040', '123456.0');
INSERT INTO `student` VALUES (301, '刘少丹', '80016041', 2, 0, '18219220902', '72292319991304', 1, 'stu0041', '123456.0');
INSERT INTO `student` VALUES (302, '何娟', '80016042', 2, 0, '18219220901', '72292319991305', 1, 'stu0042', '123456.0');
INSERT INTO `student` VALUES (303, '喻良杰', '80016043', 2, 0, '18219220901', '72292319991306', 0, 'stu0043', '123456.0');
INSERT INTO `student` VALUES (304, '夏一伟', '80016044', 2, 0, '18219220900', '72292319991307', 0, 'stu0044', '123456.0');
INSERT INTO `student` VALUES (305, '张灿', '80016045', 2, 0, '18219220900', '72292319991308', 0, 'stu0045', '123456.0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_task
-- ----------------------------
INSERT INTO `student_task` VALUES (1, 1, 2, 20, '2018-03-31 20:28:53');
INSERT INTO `student_task` VALUES (2, 1, 2, 60, '2018-03-31 22:40:56');
INSERT INTO `student_task` VALUES (3, 1, 4, 60, '2018-03-31 23:00:57');
INSERT INTO `student_task` VALUES (4, 2, 2, 20, '2019-11-18 22:44:15');
INSERT INTO `student_task` VALUES (9, 3, 5, 0, '2019-11-28 03:55:16');
INSERT INTO `student_task` VALUES (10, 3, 3, 0, '2019-12-26 18:50:05');
INSERT INTO `student_task` VALUES (13, 3, 5, 0, '2019-12-26 20:19:23');
INSERT INTO `student_task` VALUES (14, 3, 6, 20, '2019-12-26 20:31:22');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES (3, 7, 3, '2019-12-18 22:28:09');
INSERT INTO `task` VALUES (4, 7, 5, '2019-12-19 22:55:35');
INSERT INTO `task` VALUES (5, 6, 6, '2019-12-22 20:46:11');
INSERT INTO `task` VALUES (6, 6, 1, '2019-12-20 21:49:20');

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_question
-- ----------------------------
INSERT INTO `task_question` VALUES (3, 'MVC三层模式中，C指的是哪一层？', '控制层', '模型层', '视图层', '以上都不是', 'A', 2, 10);
INSERT INTO `task_question` VALUES (4, '以下关于重定向forward说法正确的是？', '重定向时URL不变而且不可传递参数', '重定向时URL会变而且不可传递参数', '重定向时URL不变而且可传递参数', '重定向时URL会变而且可传递参数', 'C', 2, 10);
INSERT INTO `task_question` VALUES (5, '以下关于Http Session会话的说法正确的是？', 'Session对象保存于磁盘中', 'Session存在于服务器内存中', 'Session存在于服务器数据库中', 'session存在于客户端浏览器中', 'B', 2, 10);
INSERT INTO `task_question` VALUES (6, '在MySQL脚本中，查询第一条数据的写法正确的是？', 'LIMIT 1', 'LIMIT 0', 'TOP 1', 'FIRST', 'A', 2, 10);
INSERT INTO `task_question` VALUES (9, 'What’s the mean on the earth road ?', 'YES OR NO', 'NO', 'YES', 'BOTH YES', 'B', 4, 20);
INSERT INTO `task_question` VALUES (10, 'How much dose the sheep on the moution ?', 'Three sheeps in the house.', 'No sheep in the house.', 'Much sheep in the door.', 'Both Wrong', 'C', 4, 10);
INSERT INTO `task_question` VALUES (11, '面色黧黑,肌肤甲错,腹部青筋暴露,舌紫暗，为瘀血内阻于?', '肝', '心', '脾', '胃', 'A', 5, 20);
INSERT INTO `task_question` VALUES (14, '以下哪个HIbernate主键生成策略是实现主键按数值顺序递增的', 'increment', 'Identity', 'sequence ', 'native', 'A', 6, 20);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (6, '张三丰', 0, 2, '18574792420', '43252420000114521', 'teacher1', '123456', '201701021201');
INSERT INTO `teacher` VALUES (7, '李四', 0, 2, '18574792410', '43253917800112520', 'tch3', 'tch3', '1');
INSERT INTO `teacher` VALUES (109, '魏秋月', 1, 2, '18219220923', '62292319991231', 'tech0001', '123456.0', '80016001');
INSERT INTO `teacher` VALUES (110, '陈忠和', 0, 2, '18219220920', '62292319991232', 'tech0002', '123456.0', '80016002');
INSERT INTO `teacher` VALUES (111, '刘伟', 1, 2, '18219220921', '62292319991233', 'tech0003', '123456.0', '80016003');
INSERT INTO `teacher` VALUES (112, '张嘉译', 0, 2, '18219220922', '62292319991234', 'tech0004', '123456.0', '80016004');
INSERT INTO `teacher` VALUES (113, '刘文泽', 0, 2, '18219220924', '62292319991235', 'tech0005', '123456.0', '80016005');
INSERT INTO `teacher` VALUES (114, '蔡伟忠', 0, 2, '18219220925', '62292319991236', 'tech0006', '123456.0', '80016001');
INSERT INTO `teacher` VALUES (115, '杨晓华', 1, 2, '18219220926', '62292319991237', 'tech0007', '123456.0', '80016002');
INSERT INTO `teacher` VALUES (116, '陈涛', 1, 2, '18219220927', '62292319991238', 'tech0008', '123456.0', '80016003');
INSERT INTO `teacher` VALUES (117, '王欢', 0, 2, '18219220928', '62292319991239', 'tech0009', '123456.0', '80016004');
INSERT INTO `teacher` VALUES (118, '钟成军', 1, 2, '18219220929', '62292319991230', 'tech0010', '123456.0', '80016005');
INSERT INTO `teacher` VALUES (119, '吴雨薇', 1, 2, '18219220920', '62292319991211', 'tech0011', '123456.0', '80016001');
INSERT INTO `teacher` VALUES (120, '何中华', 1, 2, '18219220910', '62292319991212', 'tech0012', '123456.0', '80016002');
INSERT INTO `teacher` VALUES (121, '齐昌瑞', 0, 2, '18219220911', '62292319991213', 'tech0013', '123456.0', '80016003');
INSERT INTO `teacher` VALUES (122, '赵卫华', 1, 2, '18219220912', '62292319991214', 'tech0014', '123456.0', '80016004');
INSERT INTO `teacher` VALUES (123, '赵成东', 0, 2, '18219220913', '62292319991215', 'tech0015', '123456.0', '80016005');
INSERT INTO `teacher` VALUES (124, '李志轩', 1, 2, '18219220914', '62292319991216', 'tech0016', '123456.0', '80016001');
INSERT INTO `teacher` VALUES (125, '杨轩', 1, 2, '18219220915', '62292319991217', 'tech0017', '123456.0', '80016002');
INSERT INTO `teacher` VALUES (126, '李云伟', 1, 2, '18219220916', '62292319991218', 'tech0018', '123456.0', '80016003');
INSERT INTO `teacher` VALUES (127, '张秋霞', 1, 2, '18219220917', '62292319991219', 'tech0019', '123456.0', '80016004');
INSERT INTO `teacher` VALUES (128, '杨文丽', 1, 2, '18219220918', '62292319991220', 'tech0020', '123456.0', '80016005');

-- ----------------------------
-- Table structure for video_expense
-- ----------------------------
DROP TABLE IF EXISTS `video_expense`;
CREATE TABLE `video_expense`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `record_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
