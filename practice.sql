/*
 Navicat Premium Data Transfer

 Source Server         : he
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : practice

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 19/10/2020 22:50:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `enabled` tinyint(255) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '/', NULL, 1, '所有', '');
INSERT INTO `menu` VALUES (2, '/home', 1, 1, '所有管理', 'Home');
INSERT INTO `menu` VALUES (3, '/score/**', 2, 1, '成绩管理', 'Score');
INSERT INTO `menu` VALUES (4, '/admin/**', 2, 1, '基本信息', 'Information');
INSERT INTO `menu` VALUES (5, '/teacher/**', 2, 1, '教师管理', 'Teacher');
INSERT INTO `menu` VALUES (8, '/course/**', 2, 1, '计算机课程管理', 'Course');
INSERT INTO `menu` VALUES (9, '/foreigncourse/**', 2, 1, '外语课程管理', 'Foreigncourse');
INSERT INTO `menu` VALUES (6, '/home', 1, 1, '权限管理', 'Home');
INSERT INTO `menu` VALUES (7, '/user/**', 6, 1, '用户管理', 'UserManage');

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (1, 3, 1);
INSERT INTO `menu_role` VALUES (2, 4, 2);
INSERT INTO `menu_role` VALUES (3, 5, 3);
INSERT INTO `menu_role` VALUES (4, 7, 2);
INSERT INTO `menu_role` VALUES (5, 8, 2);
INSERT INTO `menu_role` VALUES (6, 9, 2);


-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nameZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_dba', '数据库管理员');
INSERT INTO `role` VALUES (2, 'ROLE_admin', '系统管理员');
INSERT INTO `role` VALUES (3, 'ROLE_user', '用户');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `located` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `graduated` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `record` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `inductiontime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hobby` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `weight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `height` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bloodtype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `married` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `political` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idtype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idnumber` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `major` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobilephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `adivise` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_copy
-- ----------------------------
DROP TABLE IF EXISTS `teacher_copy`;
CREATE TABLE `teacher_copy`  (
 `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `located` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `graduated` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `record` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `inductiontime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hobby` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `weight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `height` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bloodtype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `married` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `political` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idtype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idnumber` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `major` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobilephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `adivise` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher_copy
-- ----------------------------


-- ----------------------------
-- Table structure for teacher_count
-- ----------------------------
DROP TABLE IF EXISTS `teacher_count`;
CREATE TABLE `teacher_count`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher_count
-- ----------------------------
INSERT INTO `teacher_count` VALUES (1, 3);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher` varchar(20) DEFAULT NULL,
  `coursenature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `choose` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `point` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `introduce` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (NULL,'大数据基础与应用','计卫星','必修',NULL,'北京理工大学',3.5,'1、了解大数据在不同行业的应用现状；2、了解大数据人才需求及相关岗位类型；3、了解并掌握大数据基础知识，常用的大数据分析技术和工具；4、通过在线实践平台了解大数据系统构建的基本流程和方法。','2021-2-25','2021-6-30');
INSERT INTO `course` VALUES (NULL,'大数据技术导论','王国仁','必修',NULL,'北京理工大学',5.0,'本课程面向数据科学与大数据技术专业的本科生和对大数据技术感兴趣的学生讲授大数据的应用背景、大数据的应用价值、数据思维、基本概念、基本原理、相关技术和应用案例，让学生了解大数据分析、处理、和可视化的方法和过程，掌握数据分析的基本技术和方法，初步具备结合专业知识和行业知识进行大数据分析的思维意识。','2021-2-25','2021-6-30');
INSERT INTO `course` VALUES (NULL,'算法设计与分析','董咏析','选修',NULL,'北京航空航天大学',2.5,'帮助学生掌握算法的定义、性质和表示方法，能够熟练使用伪代码对算法进行描述; 
帮助学生掌握算法分析的理论工具，能够熟练采用渐近上界分析算法运行时间；
帮助学生掌握算法设计的常用方法，包括分而治之、动态规划、贪心策略；
帮助学生建立对简单计算问题的建模、分析、算法设计、算法优化和编程求解能力。','2021-2-25','2021-6-30');
INSERT INTO `course` VALUES (NULL,'Python语言程序设计','嵩天','必修',NULL,'北京理工大学',3.0,'本课程适合如下教学目标：

程序设计入门课：面向各层次各专业大学在校生、部分优秀高中生，作为程序设计入门课程
体系化编程基础：面向拟构建坚实编程能力的自学者，作为不断奋斗的参考在线课程
Python科目备考：面向全国计算机等级考试二级Python科目的备考考生，作为在线备考资源
再试一次的尝试：面向拟放弃计算机或编程学习的学习者，作为再试一次的课程资源，学不会这门课学再放弃不迟...','2021-2-25','2021-6-30');
INSERT INTO `course` VALUES (NULL,'数据结构与算法','林恒','选修',NULL,'电子科技大学',4.0,'通过对本课程的学习，能够解决非数值计算与工程应用问题，达到选择或设计恰当的逻辑结构、存储结构及相应的算法的水平，为学生进一步理论学习和解决实际工程应用问题打下坚实的基础。通过理论知识的系统学习与工程实验的操作，初步培养学生的计算思维能力、算法设计与分析能力、程序设计与编程实现能力、计算机系统的认知、分析、设计和运用能力、工程实践能力。','2021-2-25','2021-6-30');
INSERT INTO `course` VALUES (NULL,'软件工程基础','蓝天','必修',NULL,'北京邮电大学',4.5,'建立学生关于软件工程的基本概念, 了解软件工程的发展历史；

对软件工程基础知识、系统方法、技术标准等有一个基本了解；
能对复杂软件工程问题的解决方案进行分析，并尝试改进；
建立软件工程系统质量、环境、职业健康、安全的概念和服务意识，理解并遵守工程职业道德和规范。','2021-2-25','2021-6-30');

-- ----------------------------
-- Table structure for course_copy
-- ----------------------------
DROP TABLE IF EXISTS `course_copy`;
CREATE TABLE `course_copy`  (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher` varchar(20) DEFAULT NULL,
  `coursenature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `choose` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `point` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `introduce` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_copy
-- ----------------------------


-- ----------------------------
-- Table structure for course_count
-- ----------------------------
DROP TABLE IF EXISTS `course_count`;
CREATE TABLE `course_count`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_count
-- ----------------------------
INSERT INTO `course_count` VALUES (1, 3);


-- ----------------------------
-- Table structure for foreigncourse
-- ----------------------------
DROP TABLE IF EXISTS `foreigncourse`;
CREATE TABLE `foreigncourse`  (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher` varchar(20) DEFAULT NULL,
  `coursenature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `choose` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `point` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `introduce` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of foreigncourse
-- ----------------------------
INSERT INTO `foreigncourse` VALUES (NULL,'英语学术论文写作','薛锦','必修',NULL,'北京科技大学',3.5,'1）帮助学生获得论文写作选择和整理研究资料的能力，2）培养学生在学术论文中记笔记，在阅读后写评论，在论文写作的各个阶段发展学术写作技能，包括论文陈述、提纲、导论、文献综述、方法论和结论等。3）初步培养学生从事学术研究的思路和研究方法。','2021-2-25','2021-6-30');
INSERT INTO `foreigncourse` VALUES (NULL,'外国文学欣赏','卢迎伏','必修',NULL,'四川大学',5.0,'1、获取外国文学经典作品的基本常识及相关人文知识，提高作品阅读能力与审美能力。
2、涵养性情，领悟外国文学作品的独异魅力。','2021-2-25','2021-6-30');
INSERT INTO `foreigncourse` VALUES (NULL,'英汉修辞对比欣赏','辛志英','选修',NULL,'厦门大学',2.5,'1.引导学习者体会、感悟汉英两种语言的美，懂得如何从修辞策略的角度去欣赏语言，通过语言去发现美，感受美，创造美。2.通过英汉语修辞策略的对比分析和描写，帮助汉语学习者更好地了解中华文化，了解汉字、汉语、中华文化的美；帮助英语学习者提升英语水平，提高对英文经典作品的赏析能力，深入了解英语国家的历史和文化，帮助英汉两种语言的使用者更好地进行文化交际，进行更深层次的文化交流。','2021-2-25','2021-6-30');
INSERT INTO `foreigncourse` VALUES (NULL,'综合英语','李瑶','必修',NULL,'中南大学',3.0,'培养学习者的英语运用能力，增强跨文化意识和交际能力，发展批判性思维和提高综合文化素养，使他们在学习、生活和工作中有效使用英语，同时能用英语讲述中国文化，满足国家和个人发展需求。','2021-2-25','2021-6-30');
INSERT INTO `foreigncourse` VALUES (NULL,'二外日语','娜仁图雅','选修',NULL,'华中师范大学',4.0,'本课程的授课目标为：
1、 学习掌握日语五十音；
2、 熟练运用日常生活日语，完成不同场景下的对话；
3、 能够使用日语介绍自己、介绍大学、介绍自己的一天；
4、 可以去日本旅游、买东西，和日本人交谈；
5、 了解中日社会文化差异，减少日语交际中的失误。','2021-2-25','2021-6-30');
INSERT INTO `foreigncourse` VALUES (NULL,'基础法语','朱佚青','必修',NULL,'首都师范大学',4.5,'1.掌握法语语音规则，能够独立拼读单词并流畅朗读句子。2.基本掌握法语A1阶段语法。3.基本掌握基础阶段日常用语的表达。','2021-2-25','2021-6-30');
-- ----------------------------
-- Table structure for foreigncourse_copy
-- ----------------------------
DROP TABLE IF EXISTS `foreigncourse_copy`;
CREATE TABLE `foreigncourse_copy`  (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher` varchar(20) DEFAULT NULL,
  `coursenature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `choose` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `point` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `introduce` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endtime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of foreigncourse_copy
-- ----------------------------


-- ----------------------------
-- Table structure for foreigncourse_count
-- ----------------------------
DROP TABLE IF EXISTS `foreigncourse_count`;
CREATE TABLE `foreigncourse_count`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of foreigncourse_count
-- ----------------------------
INSERT INTO `foreigncourse_count` VALUES (1, 3);

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `coursename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `coursenature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `coursescore` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (NULL, '徐昊', '英语','必修',70);
INSERT INTO `score` VALUES (NULL, 'hello', '英语','必修',80);
INSERT INTO `score` VALUES (NULL, '哈哈', '英语','必修',90);

-- ----------------------------
-- Table structure for score_copy
-- ----------------------------
DROP TABLE IF EXISTS `score_copy`;
CREATE TABLE `score_copy`  (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `coursename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `coursenature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `coursescore` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of score_copy
-- ----------------------------

-- ----------------------------
-- Table structure for score_count
-- ----------------------------
DROP TABLE IF EXISTS `score_count`;
CREATE TABLE `score_count`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of score_count
-- ----------------------------
INSERT INTO `score_count` VALUES (1, 3);


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'userID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '住宅电话',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系地址',
  `enabled` tinyint(1) DEFAULT 1,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '超级管理员', '18568887789', '029-82881234', '哈尔滨', 1, 'admin', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', NULL);
INSERT INTO `user` VALUES (2, '徐昊', '18568123489', '029-82123434', '重庆', 1, 'xuhao', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', NULL);
INSERT INTO `user` VALUES (3, '老王', '18568123666', '029-82111555', '广州', 1, 'laowang', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', NULL);
INSERT INTO `user` VALUES (8, '老张', NULL, NULL, NULL, 1, 'laozhang', '$2a$10$lv5kCzOsIVXVrYSOxykyGOUPpW.AIJ9.rAIVk6EJ6nxOyFGVmC0Zq', NULL);
INSERT INTO `user` VALUES (9, '老李', NULL, NULL, NULL, 0, 'laoli', '$2a$10$s3.qcTY9tw9egA.UoyBZ8Oyi6.NVAW84P6mN.A8wcgzXJQho.Ck9i', NULL);
INSERT INTO `user` VALUES (10, '小程', NULL, NULL, NULL, 1, 'xiaocheng', '$2a$10$9WvViONP7a.VcId3ktgg.Odj.WJExpc./j/eSNv2bSa8nArwfGGY2', NULL);
INSERT INTO `user` VALUES (11, '哈哈哈', NULL, NULL, NULL, 1, 'hhh', '$2a$10$30.wi4mGO6.wWgG2TEVw/O5glfMG1TWpgeEi7xK5Y5GvrQglQlH86', NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (2, 1, 2);
INSERT INTO `user_role` VALUES (3, 2, 2);
INSERT INTO `user_role` VALUES (4, 3, 3);
INSERT INTO `user_role` VALUES (5, 1, 3);

SET FOREIGN_KEY_CHECKS = 1;
