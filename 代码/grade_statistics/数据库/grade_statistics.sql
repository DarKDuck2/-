﻿# Host: localhost  (Version: 5.5.53)
# Date: 2021-05-24 20:23:41
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '1.超级管理员 其他.班级管理员',
  `a_username` varchar(10) NOT NULL DEFAULT '' COMMENT '用户名',
  `a_password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码 长度6-18 (MD5加密)',
  `a_mark` varchar(20) DEFAULT '' COMMENT '备注',
  `a_classid` varchar(30) DEFAULT NULL COMMENT '可管理班级（id）多个班级id可用,隔开',
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

#
# Data for table "admin"
#

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','0192023a7bbd73250516f069df18b500','超级管理员','0'),(2,'lihong','e10adc3949ba59abbe56e057f20f883e','李红','1,3,4'),(11,'wanglei','e10adc3949ba59abbe56e057f20f883e','王磊','1,4'),(12,'zhuhuihui','2a26e88922437cd963e8980650c87d70','朱辉辉','2,5');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

#
# Structure for table "class_"
#

DROP TABLE IF EXISTS `class_`;
CREATE TABLE `class_` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) NOT NULL DEFAULT '' COMMENT '班级名称',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='班级表';

#
# Data for table "class_"
#

/*!40000 ALTER TABLE `class_` DISABLE KEYS */;
INSERT INTO `class_` VALUES (1,'学通班'),(2,'智达班'),(3,'新创班'),(4,'佳学班'),(5,'新文班'),(6,'新源班'),(7,'科文班'),(8,'一诺班'),(9,'明博班'),(10,'晓智班'),(11,'致远班');
/*!40000 ALTER TABLE `class_` ENABLE KEYS */;

#
# Structure for table "student"
#

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_realname` varchar(5) NOT NULL DEFAULT '' COMMENT '姓名',
  `s_number` int(11) DEFAULT NULL COMMENT '学号',
  `s_sex` int(11) NOT NULL DEFAULT '0' COMMENT '性别	1.男，2.女',
  `s_class` int(11) NOT NULL DEFAULT '0' COMMENT '所属班级id',
  `s_chinese` int(11) NOT NULL DEFAULT '0' COMMENT '语文成绩',
  `s_math` int(11) NOT NULL DEFAULT '0' COMMENT '数学成绩',
  `s_english` int(11) NOT NULL DEFAULT '0' COMMENT '外语成绩',
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COMMENT='学生信息表';

#
# Data for table "student"
#

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (256,'赵季惠',202011,1,1,0,0,0),(257,'赵季琇',202012,2,1,0,0,0),(258,'王飞兰',202013,2,1,0,0,0),(259,'张博超',202014,1,1,0,0,0),(260,'赵孟绿',202015,2,1,0,0,0),(261,'张念梦',202016,2,1,0,0,0),(262,'张鲸',202017,1,1,0,0,0),(263,'李语',202018,1,1,0,0,0),(264,'李清晖',202019,1,1,0,0,0),(265,'赵季采',202020,2,1,0,0,0),(266,'王夏兰',202021,2,1,0,0,0),(267,'赵叔默',202022,1,1,0,0,0),(268,'张天曼',202023,2,1,0,0,0),(269,'张麦冬',202024,2,1,0,0,0),(270,'李飞雪',202025,1,1,0,0,0),(271,'赵孟吟',202026,1,1,0,0,0),(272,'赵叔珠',202027,1,1,0,0,0),(273,'赵季榆',202028,2,1,0,0,0),(274,'张永昌',202029,2,1,0,0,0),(275,'张易云',202030,1,1,0,0,0),(276,'张韫素',202031,2,1,0,0,0),(277,'张彦红',202032,2,1,0,0,0),(278,'张依瑶',202033,1,1,0,0,0),(279,'王幻',202034,1,1,0,0,0),(280,'李玉宸',202035,1,1,0,0,0),(281,'李钧',202036,2,1,0,0,0),(282,'张幻',202037,2,1,0,0,0),(283,'王琪',202038,1,1,0,0,0),(284,'张高驰',202039,2,1,0,0,0),(285,'赵叔轩',202040,2,1,0,0,0),(286,'赵季臻',202041,1,1,0,0,0),(287,'张白亦',202042,1,1,0,0,0),(288,'张绿海',202043,1,1,0,0,0),(289,'李小楠',202044,2,1,0,0,0),(290,'李皓君',202045,2,1,0,0,0),(291,'赵季隽',202046,1,1,0,0,0),(292,'王汉',202047,2,1,0,0,0),(293,'赵季歌',202048,2,1,0,0,0),(294,'张升荣',202049,1,1,0,0,0),(295,'张骊泓',202050,1,1,0,0,0),(296,'李静晨',202051,1,1,0,0,0),(297,'赵叔辰',202052,2,1,0,0,0),(298,'赵孟夏',202053,2,1,0,0,0),(299,'赵季卓',202054,1,1,0,0,0),(300,'张凝雨',202055,2,1,0,0,0),(301,'张芳洁',202056,2,2,0,0,0),(302,'张安和',202057,1,2,0,0,0),(303,'张健',202058,1,2,0,0,0),(304,'张冬易',202059,1,2,0,0,0),(305,'王新林',202060,2,2,0,0,0),(306,'李寻雪',202061,2,2,0,0,0),(307,'李优瑗',202062,1,2,0,0,0),(308,'赵孟瑶',202063,2,2,0,0,0),(309,'赵仲纳',202064,2,2,0,0,0),(310,'赵伯斌',202065,1,2,0,0,0),(311,'李忆柏',202066,1,2,0,0,0),(312,'张彬',202067,1,2,0,0,0),(313,'赵仲多',202068,2,2,0,0,0),(314,'张芷若',202069,2,2,0,0,0),(315,'张丹烟',202070,1,2,0,0,0),(316,'李凝蝶',202071,2,2,0,0,0),(317,'赵仲蕙',202072,2,2,0,0,0),(318,'张浩言',202073,1,2,0,0,0),(319,'赵季琭',202074,1,2,0,0,0),(320,'张若兰',202075,1,2,0,0,0),(321,'张宏邈',202076,2,2,0,0,0),(322,'王承教',202077,2,2,0,0,0),(323,'赵季江',202078,1,2,0,0,0),(324,'赵叔娜',202079,2,2,0,0,0),(325,'赵叔宜',202080,2,2,0,0,0),(326,'张沛白',202081,1,2,0,0,0),(327,'张颜骏',202082,1,2,0,0,0),(328,'张问萍',202083,1,2,0,0,0),(329,'张佳美',202084,2,2,0,0,0),(330,'张晨欣',202085,2,2,0,0,0),(331,'王嘉懿',202086,1,2,0,0,0),(332,'王婉静',202087,2,2,0,0,0),(333,'李思博',202088,2,2,0,0,0),(334,'张慕梅',202089,1,2,0,0,0),(335,'张巧蕊',202090,1,2,0,0,0),(336,'张以晴',202091,1,2,0,0,0),(337,'赵仲曦',202092,2,2,0,0,0),(338,'赵孟彗',202093,2,2,0,0,0),(339,'张红旭',202094,1,2,0,0,0),(340,'赵孟棠',202095,2,2,0,0,0),(341,'张明旭',202096,2,2,0,0,0),(342,'张子蕙',202097,1,2,0,0,0),(343,'赵叔学',202098,1,2,0,0,0),(344,'张流如',202099,1,2,0,0,0),(345,'张绮晴',202100,2,3,100,86,87),(346,'王子琪',202101,2,3,88,95,75),(347,'张洛妃',202102,1,3,87,94,74),(348,'张飞捷',202103,2,3,86,93,73),(349,'李小溪',202104,2,3,85,92,72),(350,'赵伯侠',202105,1,3,84,91,71),(351,'赵仲济',202106,1,3,83,90,70),(352,'张听枫',202107,1,3,82,89,86),(353,'张谷槐',202108,2,3,81,88,85),(354,'李寻巧',202109,2,3,80,87,84),(355,'赵季畅',202110,1,3,89,96,76),(356,'赵孟润',202111,2,3,90,97,77),(357,'赵叔量',202112,2,3,99,85,86),(358,'张韶敏',202113,1,3,98,84,85),(359,'张金鹏',202114,1,3,97,83,84),(360,'张晨',202115,1,3,96,82,83),(361,'王英豪',202116,2,3,95,81,82),(362,'赵季穰',202117,2,3,94,80,81),(363,'赵叔芝',202118,1,3,93,100,80),(364,'赵孟闲',202119,2,3,92,99,79),(365,'赵孟绮',202120,2,3,91,98,78),(366,'赵仲聪',202121,1,3,79,86,83),(367,'赵季阳',202122,1,3,78,85,82),(368,'赵叔琪',202123,1,3,77,84,70),(369,'赵仲载',202124,2,3,75,55,69),(370,'张香巧',202125,2,3,74,54,68),(371,'张昕珏',202126,1,3,73,53,70),(372,'张谷秋',202127,2,3,72,52,69),(373,'张映冬',202128,2,3,61,51,68),(374,'张辉',202129,1,3,60,50,67),(375,'张伟懋',202130,1,3,59,49,66),(376,'张睿彤',202131,1,3,58,48,65),(377,'张晴霞',202132,2,3,57,47,64),(378,'张昌燎',202133,2,3,76,56,70),(379,'张怀薇',202134,1,3,77,74,71),(380,'王兴庆',202135,2,3,76,83,80),(381,'王悦心',202136,2,3,75,82,79),(382,'李清昶',202137,1,3,74,81,78),(383,'李采枫',202138,1,3,73,80,77),(384,'张觅山',202139,1,3,72,79,76),(385,'张元枫',202140,2,3,71,78,75),(386,'赵伯天',202141,2,3,80,77,74),(387,'赵仲辉',202142,1,3,79,76,73),(388,'张淳美',202143,2,3,78,75,72),(389,'张骞',202144,2,3,56,46,63),(390,'王吹',202145,1,4,0,0,0),(391,'王天菱',202146,1,4,0,0,0),(392,'张良材',202147,1,4,0,0,0),(393,'张娴婉',202148,2,4,0,0,0),(394,'赵季胜',202149,2,4,0,0,0),(395,'赵仲悌',202150,1,4,0,0,0),(396,'张蕴美',202151,2,4,0,0,0),(397,'王鸿晖',202152,2,4,0,0,0),(398,'赵季濮',202153,1,4,0,0,0),(399,'赵叔环',202154,1,4,0,0,0),(400,'赵季韵',202155,1,4,0,0,0),(401,'张旋',202156,2,4,0,0,0),(402,'张光亮',202157,2,4,0,0,0),(403,'张空',202158,1,4,0,0,0),(404,'张淑穆',202159,2,4,0,0,0),(405,'张青雪',202160,2,4,0,0,0),(406,'张傲安',202161,1,4,0,0,0),(407,'王高格',202162,1,4,0,0,0),(408,'李访风',202163,1,4,0,0,0),(409,'赵仲琪',202164,2,4,0,0,0),(410,'赵叔叡',202165,2,4,0,0,0),(411,'李慕梅',202166,1,4,0,0,0),(412,'张易梦',202167,2,4,0,0,0),(413,'赵仲恩',202168,2,4,0,0,0),(414,'张苑博',202169,1,4,0,0,0),(415,'张凡霜',202170,1,4,0,0,0),(416,'张鸿羽',202171,1,4,0,0,0),(417,'张迎天',202172,2,4,0,0,0),(418,'张芳馨',202173,2,4,0,0,0),(419,'赵孟华',202174,1,4,0,0,0),(420,'赵季飞',202175,2,4,0,0,0),(421,'张馨欣',202176,2,4,0,0,0),(422,'王清一',202177,1,4,0,0,0),(423,'赵伯锋',202178,1,4,0,0,0),(424,'赵伯欣',202179,1,4,0,0,0),(425,'赵季心',202180,2,4,0,0,0),(426,'赵仲默',202181,2,4,0,0,0),(427,'张运浩',202182,1,4,0,0,0),(428,'张元槐',202183,2,4,0,0,0),(429,'张半香',202184,2,4,0,0,0),(430,'张望雅',202185,1,4,0,0,0),(431,'张寒香',202186,1,4,0,0,0),(432,'王远悦',202187,1,4,0,0,0),(433,'李秋芸',202188,2,4,0,0,0),(434,'赵季瀚',202189,2,4,0,0,0),(435,'李香卉',202190,1,4,0,0,0),(436,'张寄风',202191,2,4,0,0,0),(437,'赵季枫',202192,2,5,0,0,0),(438,'赵叔多',202193,1,5,0,0,0),(439,'张爰',202194,1,5,0,0,0),(440,'张兴安',202195,1,5,0,0,0),(441,'李咏',202196,2,5,0,0,0),(442,'王姣丽',202197,2,5,0,0,0),(443,'李嘉怡',202198,1,5,0,0,0),(444,'张含桃',202199,2,5,0,0,0),(445,'赵孟珊',202200,2,5,0,0,0),(446,'赵孟会',202201,1,5,0,0,0),(447,'张夜雪',202202,1,5,0,0,0),(448,'王问筠',202203,1,5,0,0,0),(449,'赵孟雅',202204,2,5,0,0,0),(450,'赵伯荫',202205,2,5,0,0,0),(451,'赵仲齐',202206,1,5,0,0,0),(452,'张思琪',202207,2,5,0,0,0),(453,'张琼',202208,2,5,0,0,0),(454,'张烨霖',202209,1,5,0,0,0),(455,'张凝琴',202210,1,5,0,0,0),(456,'张多思',202211,1,5,0,0,0),(457,'王高卓',202212,2,5,0,0,0),(458,'王优乐',202213,2,5,0,0,0),(459,'李歌飞',202214,1,5,0,0,0),(460,'张恬美',202215,2,5,0,0,0),(461,'赵孟亭',202216,2,5,0,0,0),(462,'赵季湛',202217,1,5,0,0,0),(463,'赵仲茗',202218,1,5,0,0,0),(464,'张兴贤',202219,1,5,0,0,0),(465,'张觅双',202220,2,5,0,0,0),(466,'张咸英',202221,2,5,0,0,0),(467,'张顺美',202222,1,5,0,0,0),(468,'李如容',202223,2,5,0,0,0),(469,'赵孟凡',202224,2,5,0,0,0),(470,'李音',202225,1,5,0,0,0),(471,'赵伯柏',202226,1,5,0,0,0),(472,'张怡然',202227,1,5,0,0,0),(473,'张访梦',202228,2,5,0,0,0),(474,'赵孟晨',202229,2,5,0,0,0),(475,'赵孟芙',202230,1,5,0,0,0),(476,'赵仲栋',202231,2,5,0,0,0),(477,'赵孟妮',202232,2,5,0,0,0),(478,'张学民',202233,1,5,0,0,0),(479,'张以旋',202234,1,5,0,0,0),(480,'张维运',202235,1,5,0,0,0),(481,'张晨涛',202236,2,5,0,0,0),(482,'张弘伟',202237,2,5,0,0,0),(483,'王夏',202238,1,6,0,0,0),(484,'李昆纬',202239,2,6,0,0,0),(485,'赵仲晗',202240,2,6,0,0,0),(486,'赵季健',202241,1,6,0,0,0),(487,'赵仲飒',202242,1,6,0,0,0),(488,'赵季易',202243,1,6,0,0,0),(489,'张高义',202244,2,6,0,0,0),(490,'张香卉',202245,2,6,0,0,0),(491,'王博学',202246,1,6,0,0,0),(492,'张黎明',202247,2,6,0,0,0),(493,'王韵梅',202248,2,6,0,0,0),(494,'赵伯祯',202249,1,6,0,0,0),(495,'张月明',202250,1,6,0,0,0),(496,'赵仲盼',202251,1,6,0,0,0),(497,'张泽雨',202252,2,6,0,0,0),(498,'张霞飞',202253,2,6,0,0,0),(499,'李清嘉',202254,1,6,0,0,0),(500,'赵仲朗',202255,2,6,0,0,0),(501,'赵仲英',202256,2,6,0,0,0),(502,'赵叔怿',202257,1,6,0,0,0),(503,'张曼云',202258,1,6,0,0,0),(504,'张刚毅',202259,1,6,0,0,0),(505,'张敏',202260,2,6,0,0,0),(506,'张骞尧',202261,2,6,0,0,0),(507,'张兰月',202262,1,6,0,0,0),(508,'王若云',202263,2,6,0,0,0),(509,'李思松',202264,2,6,0,0,0),(510,'李海超',202265,1,6,0,0,0);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
