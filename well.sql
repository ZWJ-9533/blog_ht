-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: webll
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `creat_time` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `picture` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `cid` (`cid`) USING BTREE,
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'31个省区市首次无新增本土确诊病例，输入性风险增加','米锋介绍，当天，我国首次无新增本土确诊病例。湖北以外省份无新增死亡病例，重症病例减少2例，已连续7日无新增本土确诊病例。湖北除武汉外连续14日无新增本土确诊病例， 最近7日，境外输入确诊病例数占新增确诊病例总数的84.55%，国际疫情快速蔓延，带来的输入性风险增加','2020-03-19 23:38:43',1,1,30,100,'img/hero.jpg'),(2,'快讯！欧盟首席脱欧谈判官巴尼耶新冠肺炎检测呈阳性 ','【海外网快讯】 欧盟英国脱欧首席谈判代表巴尼耶(Michel Barnier)当地时间19日在其个人社交媒体账号上宣布，他的新冠肺炎检测结果呈阳性','2020-03-19 23:40:58',1,1,30,100,'img/hero.jpg'),(3,'辉瑞新冠疫苗分销将不包括中国？辉瑞回应：复星医药已提前合作','近期多家媒体报道，辉瑞与BioNTech SE两家公司已同意就共同开发和分销新冠疫苗签署意向书，但在标注中提到“不包括中国”。3月19日，辉瑞就此舆情回应。\r\n\r\n回应全文称：\r\n\r\n近日，辉瑞公司和BioNTech SE宣布，两家公司已就共同开发和分销一种潜在的基于mRNA的冠状病毒疫苗达成意向书，以预防COVID-19感染。在此之前，BioNTech已宣布与复星医药合作开发中国市场。因此，辉瑞与BioNTech的协议不包括中国市场。\r\n\r\n如果辉瑞与BioNTech的合作最终创造出一种安全有效的疫苗，其目的和意图是确保全球范围内获得疫苗。鉴于形势的严峻性以及COVID-19在全球的蔓延速度，我们仍在努力解决细节问题，我们致力于为中国以及全球的患者提供获得优质药物和疫苗的机会。','2020-03-19 23:46:13',1,1,30,100,'img/hero.jpg'),(4,'教育部：中小学高校错时错峰开学 疫情没有得到基本控制前不开学','《通知》要求，要综合考虑区域疫情风险等级、交通状况、应急准备、学校人群密度、学龄阶段特点等，做好中小学（含幼儿园、中等职业学校）错区域、错层次、错时开学方案。在制定具体返校方案时，可安排高三、初三等毕业班学生先返校。原则上高三年级实行省域同步、初三年级同一市域同步。','2020-03-01 18:01:59',2,4,60,120,'img/featured-pic-1.jpeg'),(5,'中经观点：越是面对风险挑战，越要抓好民生 ','自1月23日离汉通道封闭以来，湖北省和武汉市广大民众响应防疫号召，“宅”在家中。随着小区封闭式管理、公共区域管控、应急交通保障等防疫措施快速落地，部分群众的日常生活确实受到一定影响。这些诉求从日常生活中来看，大体可以概括为几方面，比如希望菜价能便宜点，希望老人、婴幼儿的生活物资更有保障；希望其他疾病的买药看病需求能得到满足；希望特殊群体、边缘群体的生活得到保障；希望社区加强排查和消杀工作，等等。这些都是正常的民生需求。','2020-02-13 18:03:58',3,4,20,90,'img/featured-pic-1.jpeg'),(6,'前瞻：湖人欲赛季4连杀鹈鹕 快船盼复仇残阵76人','在刚刚客场输给灰熊的比赛中，湖人全场打得有些漫不经心，全场仅仅拿下本赛季单场最低得分的88分，7连胜就此被终结，湖人本赛季客场对阵西部球队的18连胜纪录也被终结。另外，湖人的篮板球和三分球也是输球主要原因，篮板球51-60落后灰熊，三分球更是36投9中，命中率只有可怜的25%。值得一提的是，湖人本赛季背靠背第二场战绩为7胜0负，明日客场背靠背对阵鹈鹕，勒布朗-詹姆斯也表示，他们要打得更好。另外，安东尼-戴维斯在与灰熊比赛时一度回到更衣室处理肘部酸痛情况，不过并无大碍。戴维斯过去三次对阵旧主鹈鹕，场均贡献36分和12个篮板','2020-03-01 18:05:38',4,3,100,200,'img/featured-pic-1.jpeg'),(7,'吴奇隆与小16岁娇妻现身机场，网友：四爷的裤子都要撑破了','吴奇隆与刘诗诗因戏结缘，最后两个人步入了婚姻的殿堂，近日，两个人现身机场，两个人一路手拉手十分的甜蜜。然而从图中看，两个人的身材都有些发福，最明显的就是吴奇隆，身穿紧身衣的他把身材展现的淋漓尽致，然而这条牛仔裤穿上显得更加的尴尬。有些网友更是调侃：四爷的裤子都要撑破了。两个人机场一路热聊，十分的幸福','2020-02-19 18:07:59',3,2,50,150,'img/featured-pic-1.jpeg'),(8,'华为 P40 Pro 正面亮屏照曝光：多挖孔，四曲面屏幕 ','IT之家3月1日消息 此前华为已经宣布将在3月26日于法国巴黎发布全新的P40系列手机，华为P40的设计和配置是大家关心的，在配置上，华为P40将支持自研的Wi-Fi 6+技术，现在华为P40 Pro的外观设计再一次曝光，而且这一次正面亮屏照也安排上了。\r\n\r\nIT之家根据爆料的图片发现，华为P40 Pro的前置摄像头挖孔似乎有点长，据说有多个前置摄像头，甚至包括3D ToF传感器。华为P40 Pro的屏幕还采用了四曲面的设计','2020-03-01 18:09:41',2,5,150,130,'img/featured-pic-1.jpeg'),(9,'最后拼图到位！湖人阵容更新：首发5人无变化，一人地位受威胁？','维特斯在为热火效力的首个赛季就有非常出色的表现，他场均能得到15.4分和42.4%投篮命中率（三分命中率能打出职业生涯新高的39.5%）。\r\n\r\n尽管维特斯为热火效力的结果确实不尽人意，但制造他在2017-18赛季期间能有39.8%三分命中率还是非常出色的表现。在2020年交易截止日前，热火将维特斯送到灰熊，而灰熊方面在2月9日放弃维特斯。','2020-03-18 17:44:21',4,3,200,100,'img/hero.jpg'),(10,'渐成超巨！塔图姆连续5场30+，刷新队史纪录，欧文还真降不住他 ','又是一场30+，对于如今的塔图姆来说，单场30分的表演已经成为一种常态。上一场因生病缺阵，3月5日凯尔特人客场挑战骑士，塔图姆迅速迎来回归。中断一场比赛，没有中断塔图姆灼热的手感，他全场出战40分钟，24投11中，三分球10中5砍下了32分9板6次助攻2次抢断和1次盖帽。','2020-03-04 17:47:35',2,3,250,100,'img/hero.jpg'),(11,'新冠肺炎会像流感一样每年来？钟南山团队专家解读 ','理论上是有这个可能性的。”程璘令教授告诉健康时报记者，不过大家也不必过度惶恐，新型冠状病毒疫苗已经开始研发，预计今年年底之前很可能会投入市场，疫苗的出现能够有效防控大规模疫情的发生。\r\n\r\n程璘令说，相较于SARS病毒，新冠病毒的致死率其实更低，前者致死率高达9%-10%，后者致死率约为1.4%，因此，新冠病毒确实有长期存在的可能性。SARS病毒致病性强、致死率高，容易把宿主杀死，病毒自身也不容易长期存活。而新冠病毒致病性相对低，理论上讲，是有可能转成慢性疾病。','2020-03-04 17:49:14',3,4,100,60,'img/hero.jpg'),(12,'持上亿房产收租百万,老公继承200亿家业任CEO,嫁给爱情还有二胎的全智贤真赢家 ','据百度百科显示，崔俊赫的外祖母与母亲是韩国知名服装设计师，父亲则是钢铁业的CEO，同时也是知名金融资产管理公司的大股东，公司在2014年就拥有3.4万亿韩元（约合人民币200亿）的流动资金。','2020-03-06 17:50:38',2,2,150,100,'img/hero.jpg'),(13,' 吴尊自曝英年早婚，与妻子青梅竹马相爱24年，诠释偶像式爱情故事','吴尊夫妇曝光了一个猛料，原来吴尊在2004年的12月份就结婚了，距今为止他们已携手度过了15年。此次，吴尊林丽莹自曝结婚时间，并晒出结婚证，让不少人大为吃惊。毕竟那个时候的吴尊还未出道，他还是个花样少年就已经英年早婚，而且吴尊出道走红后依旧保持对妻子的忠诚，不被花花世界所影响，实力彰显好男人的一面惹人羡。','2020-03-19 17:53:10',4,2,100,300,'img/hero.jpg'),(14,'OPPO Enco Free无线耳机傲粉版图赏：超低延时+AI降噪','不久前，OPPO正式发布了旗下首款真无线蓝牙耳机OPPO Enco Free。在发布会上，OPPO官方宣布了三款配色：恬白、隐黑和傲粉。其中备受时尚女性青睐的傲粉色，在3月2日正式开售，售价699元。\r\n\r\nOPPO Enco Free耳机单只重量为4.6g，内含3种耳帽尺寸，2种佩戴方式,实现半入耳与浅入耳式的佩戴方式。同时，OPPO Enco Free 配备有专门的充电盒，官方称，配合充电盒其可以支持 25 个小时的音乐播放时长。对支持ColorOS7.0以上版本的OPPO手机，支持开盖即连。\r\n\r\n硬件方面， OPPO Enco Free搭载了行业领先的双ARM内核架构蓝牙芯片，采用最新的蓝牙双路传输方式，还加入了独创的左右耳信息纠错能力，可以减少蓝牙重传次数，进一步降低声音延时','2020-03-14 17:55:24',5,5,30,30,'img/featured-pic-1.jpeg'),(15,'三星 Galaxy Z Flip 体验：11999 元，史上最贵「化妆镜」？','尽管去年已经有多款折叠屏手机被推向市场，但由于数量少、价格高的缘故，其依旧是手机中的「少数派」，日常生活中很难见到。继去年接连发布了 Galaxy Fold 以及 W20 两款折叠屏手机之后，最近三星折叠屏手机家族又迎来了一个新成员——Galaxy Z Flip。\r\n\r\n从命名上也可以看到，Galaxy Z Flip 并没有被划归到 Fold 下，而是作为一个独立的产品序列。另外，区别于去年发布的两款折叠屏手机，它采用了和摩托罗拉 Razer 2019 一样的纵向翻折设计，因此产品形态以及应用场景也都相应有所变化。\r\n\r\n引入玻璃材质，可折叠挖孔屏\r\n\r\n首先来看大家普遍比较关注的屏幕部分。了解 Galaxy Fold 的朋友应该知道，为了能够实现屏幕可弯折，当时其采用了聚酰亚胺薄膜材质。到了 Galaxy Z Flip 这里一个比较大的变化在于，这次三星引入了 UTG（Ultra Thin Glass）超薄玻璃技术。','2020-03-04 17:56:31',5,5,200,30,'img/hero.jpg'),(16,NULL,NULL,'2020-03-19 00:20:41',2,3,NULL,NULL,NULL),(17,'aaa','我爱你','2020-03-20 19:43:32',5,2,135,151,'D:\\python1909\\blog_ht\\static\\upload\\timg (1).jpg'),(18,'今晚打老虎','今晚打老虎','2020-03-19 22:21:58',2,2,135,127,'D:\\python1909\\blog_ht\\static\\upload\\timg (1).jpg'),(19,NULL,NULL,'2020-03-19 23:35:38',2,2,123,139,'D:\\python1909\\blog_ht\\static\\upload\\timg (1).jpg'),(20,NULL,NULL,'2020-03-19 23:36:56',1,1,132,118,'D:\\python1909\\blog_ht\\static\\upload\\timg (1).jpg'),(21,NULL,NULL,'2020-03-19 23:39:16',5,4,121,140,'D:\\python1909\\blog_ht\\static\\upload\\timg (1).jpg'),(22,'','','2020-03-19 22:28:10',2,5,142,119,'D:\\python1909\\blog_ht\\static\\upload\\timg (1).jpg');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add article',6,'add_article'),(22,'Can change article',6,'change_article'),(23,'Can delete article',6,'delete_article'),(24,'Can view article',6,'view_article'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add tag',9,'add_tag'),(34,'Can change tag',9,'change_tag'),(35,'Can delete tag',9,'delete_tag'),(36,'Can view tag',9,'view_tag'),(37,'Can add mark',10,'add_mark'),(38,'Can change mark',10,'change_mark'),(39,'Can delete mark',10,'delete_mark'),(40,'Can view mark',10,'view_mark');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'新闻类',3),(2,'娱乐类',3),(3,'体育类',3),(4,'实事类',3),(5,'科学类',3);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_uid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_uid` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(6,'App03','article'),(7,'App03','category'),(10,'App03','mark'),(9,'App03','tag'),(8,'App03','user'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-17 13:21:09.823816'),(2,'contenttypes','0002_remove_content_type_name','2020-03-17 13:21:09.982393'),(3,'auth','0001_initial','2020-03-17 13:21:10.120023'),(4,'auth','0002_alter_permission_name_max_length','2020-03-17 13:21:10.548705'),(5,'auth','0003_alter_user_email_max_length','2020-03-17 13:21:10.553691'),(6,'auth','0004_alter_user_username_opts','2020-03-17 13:21:10.562668'),(7,'auth','0005_alter_user_last_login_null','2020-03-17 13:21:10.569647'),(8,'auth','0006_require_contenttypes_0002','2020-03-17 13:21:10.572639'),(9,'auth','0007_alter_validators_add_error_messages','2020-03-17 13:21:10.578623'),(10,'auth','0008_alter_user_username_max_length','2020-03-17 13:21:10.584607'),(11,'auth','0009_alter_user_last_name_max_length','2020-03-17 13:21:10.591590'),(12,'auth','0010_alter_group_name_max_length','2020-03-17 13:21:10.669408'),(13,'auth','0011_update_proxy_permissions','2020-03-17 13:21:10.675366'),(14,'App03','0001_initial','2020-03-17 13:21:11.105215'),(15,'admin','0001_initial','2020-03-17 13:21:12.068722'),(16,'admin','0002_logentry_remove_auto_add','2020-03-17 13:21:12.309108'),(17,'admin','0003_logentry_add_action_flag_choices','2020-03-17 13:21:12.320112'),(18,'sessions','0001_initial','2020-03-17 13:21:12.362964');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1fnwf80eshid2g6y7rptk2veofd7wobg','OWM5NWQ3NmY0NDliODkxMGZlMjhjYTljMTliYzkyYjJjYjVkMzM4MTp7ImNvZGUiOiI1Njg1In0=','2020-03-31 20:06:35.249127'),('6pd5k14unvdsaf8aepj1vwp2d8nryalm','YTM3YmIzMWZmZTAzYzI0YzQ5YzEwNzJmM2NkMjkwMGRjMjU4ZjNkOTp7ImNvZGUiOiI5ODc1IiwidXNlcm5hbWUiOiJtYWh1YXRlbmciLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzNkNDViZGZiMmRkNTU0MzcyYmU3MmI2NDdhOGU0ZGQ2ZmMxN2QyZiJ9','2020-04-05 15:39:19.200929'),('t68qp7zjta1qcvpr27ii8smiiaran0k9','YTkzNmY2NGJmZjk1YjBlZGRkMmEwNmQ0OGRhMzhmNDczY2U0NDJhZjp7ImNvZGUiOiI3MDMyIiwidXNlcm5hbWUiOiJtYWh1YXRlbmciLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzNkNDViZGZiMmRkNTU0MzcyYmU3MmI2NDdhOGU0ZGQ2ZmMxN2QyZiJ9','2020-04-02 10:53:42.765668');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mark` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(10000) DEFAULT NULL,
  `creat_time` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `uid` (`uid`) USING BTREE,
  CONSTRAINT `mark_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` VALUES (1,'楼主厉害，楼主好厉害','2020-03-01 17:48:25',1),(2,'前排吃瓜','2020-02-28 17:56:45',2),(3,'我要给你生猴子','2020-03-26 17:57:31',3),(4,'爱你你好11','2020-03-20 23:14:18',4),(5,'起飞','2020-01-25 17:58:14',2),(6,'a1高闪来一个','2020-03-18 20:08:15',1),(7,'冲冲冲','2020-03-03 20:08:19',4),(8,'我气你','2020-02-05 20:08:22',2),(9,'秋梨膏','2020-03-06 20:08:27',3),(10,'水贴大军','2020-03-07 20:08:32',3),(11,'sss','2020-01-15 20:08:35',2),(12,'rere','2020-03-18 20:08:43',4),(13,'w','2020-04-17 20:08:46',1),(14,'q','2020-03-10 20:08:51',2);
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(100) NOT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tname` (`tname`) USING BTREE,
  KEY `aid` (`aid`) USING BTREE,
  CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `article` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'开心',1),(2,'难受',2),(3,'性福',3),(4,'痛哭',4),(5,'悲伤',5);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `passwd` varchar(128) NOT NULL,
  `username` varchar(30) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `portrait` varchar(3000) DEFAULT NULL,
  `regtime` datetime(6) DEFAULT NULL,
  `isforbid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('pbkdf2_sha256$150000$iDfz0SayY0ao$SZxogOw6AVmPcLDDHel+bQeceHPnUC2+YUoefhqEFuE=',NULL,0,'','',0,1,'2020-03-17 19:21:49.874831',2,'','wuyifang','15678951563','','D:\\python1909\\blog_ht\\static\\upload\\timg.jpg','2020-03-14 00:00:00.000000',NULL),('!8bxwgwpXOyAj3RJachu9rA5mCVwu7eLU1qnfQewQ',NULL,0,'','',0,1,'2020-03-17 19:37:59.476382',3,'fx9533','luhan',NULL,'',NULL,'2020-03-14 00:00:00.000000',NULL),('pbkdf2_sha256$150000$w2FRafjmNItk$BL3o8WtvjBHMS8J6Kulck+Pg5Rk8+f0u6QRmXgLTLmY=','2020-03-22 15:39:19.195943',0,'','',0,1,'2020-03-17 19:38:41.344664',4,'fx9533','mahuateng',NULL,'',NULL,'2020-03-14 00:00:00.000000',NULL),('!Ey5AwTupGWbRrDAS1nSVBvjvcEg4RJqVf2ZlcbHx',NULL,0,'w','s',0,1,'2020-03-17 22:00:57.000000',5,'fx7788','uzi',NULL,NULL,NULL,'2020-03-17 22:01:12.000000',NULL),('!aBdpspRakJ4631nAAtL6lv4onSc3Uf1lso1aErDn',NULL,0,'','',0,1,'2020-03-21 22:16:35.292383',6,'FX9533','mafeifei','15207596393','sasas@qq.com',NULL,'2020-03-14 00:00:00.000000',NULL),('!8CHHp4rRm4vejrhowWmMMXNr8U7W4W8PF93enCi9',NULL,0,'','',0,1,'2020-03-21 22:19:57.890094',7,'fx9533','pgone','17329791566','sasas@qq.com',NULL,'2020-03-14 00:00:00.000000',NULL),('!3HtNfQULWxrfrmvP81shaBq20DZOJ8fG4ImCTHFH',NULL,0,'','',0,1,'2020-03-21 22:41:34.784105',8,'fx9533','lubenwei','17329791566','sasas@qq.com',NULL,'2020-03-14 00:00:00.000000',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_groups_user_id_group_id_40beef00_uniq` (`user_id`,`group_id`),
  KEY `user_groups_group_id_b76f8aba_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_groups_group_id_b76f8aba_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_groups_user_id_abaea130_fk_user_uid` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_permissions`
--

DROP TABLE IF EXISTS `user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_permissions_user_id_permission_id_7dc6e2e0_uniq` (`user_id`,`permission_id`),
  KEY `user_user_permission_permission_id_9deb68a3_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_user_permission_permission_id_9deb68a3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_user_permissions_user_id_ed4a47ea_fk_user_uid` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_permissions`
--

LOCK TABLES `user_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-23 22:43:38
