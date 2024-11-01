/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmv0143
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmv0143` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmv0143`;

/*Table structure for table `chengjichaxun` */

DROP TABLE IF EXISTS `chengjichaxun`;

CREATE TABLE `chengjichaxun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `chengji` int(11) DEFAULT NULL COMMENT '成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='成绩查询';

/*Data for the table `chengjichaxun` */

insert  into `chengjichaxun`(`id`,`addtime`,`xuehao`,`xingming`,`kemu`,`leixing`,`chengji`) values (91,'2021-05-18 16:53:37','学号1','姓名1','科目1','专业必修',1);
insert  into `chengjichaxun`(`id`,`addtime`,`xuehao`,`xingming`,`kemu`,`leixing`,`chengji`) values (92,'2021-05-18 16:53:37','学号2','姓名2','科目2','专业必修',2);
insert  into `chengjichaxun`(`id`,`addtime`,`xuehao`,`xingming`,`kemu`,`leixing`,`chengji`) values (93,'2021-05-18 16:53:37','学号3','姓名3','科目3','专业必修',3);
insert  into `chengjichaxun`(`id`,`addtime`,`xuehao`,`xingming`,`kemu`,`leixing`,`chengji`) values (94,'2021-05-18 16:53:37','学号4','姓名4','科目4','专业必修',4);
insert  into `chengjichaxun`(`id`,`addtime`,`xuehao`,`xingming`,`kemu`,`leixing`,`chengji`) values (95,'2021-05-18 16:53:37','学号5','姓名5','科目5','专业必修',5);
insert  into `chengjichaxun`(`id`,`addtime`,`xuehao`,`xingming`,`kemu`,`leixing`,`chengji`) values (96,'2021-05-18 16:53:37','学号6','姓名6','科目6','专业必修',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmv0143/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmv0143/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmv0143/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaozhigonghao` varchar(200) NOT NULL COMMENT '教职工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `guoji` varchar(200) DEFAULT NULL COMMENT '国籍',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaozhigonghao` (`jiaozhigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaozhigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`xueyuan`,`kemu`,`guoji`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (21,'2021-05-18 16:53:37','教师1','123456','教师姓名1','男','学院1','科目1','国籍1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmv0143/upload/jiaoshi_zhaopian1.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaozhigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`xueyuan`,`kemu`,`guoji`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (22,'2021-05-18 16:53:37','教师2','123456','教师姓名2','男','学院2','科目2','国籍2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmv0143/upload/jiaoshi_zhaopian2.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaozhigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`xueyuan`,`kemu`,`guoji`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (23,'2021-05-18 16:53:37','教师3','123456','教师姓名3','男','学院3','科目3','国籍3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmv0143/upload/jiaoshi_zhaopian3.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaozhigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`xueyuan`,`kemu`,`guoji`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (24,'2021-05-18 16:53:37','教师4','123456','教师姓名4','男','学院4','科目4','国籍4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmv0143/upload/jiaoshi_zhaopian4.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaozhigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`xueyuan`,`kemu`,`guoji`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (25,'2021-05-18 16:53:37','教师5','123456','教师姓名5','男','学院5','科目5','国籍5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmv0143/upload/jiaoshi_zhaopian5.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaozhigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`xueyuan`,`kemu`,`guoji`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (26,'2021-05-18 16:53:37','教师6','123456','教师姓名6','男','学院6','科目6','国籍6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmv0143/upload/jiaoshi_zhaopian6.jpg');

/*Table structure for table `jiaoshipingjiao` */

DROP TABLE IF EXISTS `jiaoshipingjiao`;

CREATE TABLE `jiaoshipingjiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaozhigonghao` varchar(200) DEFAULT NULL COMMENT '教职工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `guoji` varchar(200) DEFAULT NULL COMMENT '国籍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='教师评教';

/*Data for the table `jiaoshipingjiao` */

insert  into `jiaoshipingjiao`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`xingbie`,`kemu`,`shouji`,`xueyuan`,`guoji`) values (41,'2021-05-18 16:53:37','教职工号1','教师姓名1','性别1','科目1','手机1','学院1','国籍1');
insert  into `jiaoshipingjiao`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`xingbie`,`kemu`,`shouji`,`xueyuan`,`guoji`) values (42,'2021-05-18 16:53:37','教职工号2','教师姓名2','性别2','科目2','手机2','学院2','国籍2');
insert  into `jiaoshipingjiao`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`xingbie`,`kemu`,`shouji`,`xueyuan`,`guoji`) values (43,'2021-05-18 16:53:37','教职工号3','教师姓名3','性别3','科目3','手机3','学院3','国籍3');
insert  into `jiaoshipingjiao`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`xingbie`,`kemu`,`shouji`,`xueyuan`,`guoji`) values (44,'2021-05-18 16:53:37','教职工号4','教师姓名4','性别4','科目4','手机4','学院4','国籍4');
insert  into `jiaoshipingjiao`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`xingbie`,`kemu`,`shouji`,`xueyuan`,`guoji`) values (45,'2021-05-18 16:53:37','教职工号5','教师姓名5','性别5','科目5','手机5','学院5','国籍5');
insert  into `jiaoshipingjiao`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`xingbie`,`kemu`,`shouji`,`xueyuan`,`guoji`) values (46,'2021-05-18 16:53:37','教职工号6','教师姓名6','性别6','科目6','手机6','学院6','国籍6');

/*Table structure for table `jiaoshixiangqing` */

DROP TABLE IF EXISTS `jiaoshixiangqing`;

CREATE TABLE `jiaoshixiangqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshimingcheng` varchar(200) DEFAULT NULL COMMENT '教室名称',
  `suochudidian` varchar(200) DEFAULT NULL COMMENT '所处地点',
  `kerongrenshu` int(11) DEFAULT NULL COMMENT '可容人数',
  `youwukongdiao` varchar(200) DEFAULT NULL COMMENT '有无空调',
  `youwutouying` varchar(200) DEFAULT NULL COMMENT '有无投影',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='教室详情';

/*Data for the table `jiaoshixiangqing` */

insert  into `jiaoshixiangqing`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (81,'2021-05-18 16:53:37','教室名称1','所处地点1',1,'有','有');
insert  into `jiaoshixiangqing`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (82,'2021-05-18 16:53:37','教室名称2','所处地点2',2,'有','有');
insert  into `jiaoshixiangqing`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (83,'2021-05-18 16:53:37','教室名称3','所处地点3',3,'有','有');
insert  into `jiaoshixiangqing`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (84,'2021-05-18 16:53:37','教室名称4','所处地点4',4,'有','有');
insert  into `jiaoshixiangqing`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (85,'2021-05-18 16:53:37','教室名称5','所处地点5',5,'有','有');
insert  into `jiaoshixiangqing`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (86,'2021-05-18 16:53:37','教室名称6','所处地点6',6,'有','有');

/*Table structure for table `jiaoshixinxi` */

DROP TABLE IF EXISTS `jiaoshixinxi`;

CREATE TABLE `jiaoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshimingcheng` varchar(200) DEFAULT NULL COMMENT '教室名称',
  `suochudidian` varchar(200) DEFAULT NULL COMMENT '所处地点',
  `kerongrenshu` int(11) DEFAULT NULL COMMENT '可容人数',
  `youwukongdiao` varchar(200) DEFAULT NULL COMMENT '有无空调',
  `youwutouying` varchar(200) DEFAULT NULL COMMENT '有无投影',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='教室信息';

/*Data for the table `jiaoshixinxi` */

insert  into `jiaoshixinxi`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (121,'2021-05-18 16:53:37','教室名称1','所处地点1',1,'有','有');
insert  into `jiaoshixinxi`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (122,'2021-05-18 16:53:37','教室名称2','所处地点2',2,'有','有');
insert  into `jiaoshixinxi`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (123,'2021-05-18 16:53:37','教室名称3','所处地点3',3,'有','有');
insert  into `jiaoshixinxi`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (124,'2021-05-18 16:53:37','教室名称4','所处地点4',4,'有','有');
insert  into `jiaoshixinxi`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (125,'2021-05-18 16:53:37','教室名称5','所处地点5',5,'有','有');
insert  into `jiaoshixinxi`(`id`,`addtime`,`jiaoshimingcheng`,`suochudidian`,`kerongrenshu`,`youwukongdiao`,`youwutouying`) values (126,'2021-05-18 16:53:37','教室名称6','所处地点6',6,'有','有');

/*Table structure for table `kebiaochaxun` */

DROP TABLE IF EXISTS `kebiaochaxun`;

CREATE TABLE `kebiaochaxun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangkexingqi` varchar(200) DEFAULT NULL COMMENT '上课星期',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `suoshujieshu` varchar(200) DEFAULT NULL COMMENT '所属节数',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshimingcheng` varchar(200) DEFAULT NULL COMMENT '教室名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='课表查询';

/*Data for the table `kebiaochaxun` */

insert  into `kebiaochaxun`(`id`,`addtime`,`shangkexingqi`,`kemu`,`suoshujieshu`,`jiaoshixingming`,`jiaoshimingcheng`) values (71,'2021-05-18 16:53:37','星期一','科目1','第一节','教师姓名1','教室名称1');
insert  into `kebiaochaxun`(`id`,`addtime`,`shangkexingqi`,`kemu`,`suoshujieshu`,`jiaoshixingming`,`jiaoshimingcheng`) values (72,'2021-05-18 16:53:37','星期一','科目2','第一节','教师姓名2','教室名称2');
insert  into `kebiaochaxun`(`id`,`addtime`,`shangkexingqi`,`kemu`,`suoshujieshu`,`jiaoshixingming`,`jiaoshimingcheng`) values (73,'2021-05-18 16:53:37','星期一','科目3','第一节','教师姓名3','教室名称3');
insert  into `kebiaochaxun`(`id`,`addtime`,`shangkexingqi`,`kemu`,`suoshujieshu`,`jiaoshixingming`,`jiaoshimingcheng`) values (74,'2021-05-18 16:53:37','星期一','科目4','第一节','教师姓名4','教室名称4');
insert  into `kebiaochaxun`(`id`,`addtime`,`shangkexingqi`,`kemu`,`suoshujieshu`,`jiaoshixingming`,`jiaoshimingcheng`) values (75,'2021-05-18 16:53:37','星期一','科目5','第一节','教师姓名5','教室名称5');
insert  into `kebiaochaxun`(`id`,`addtime`,`shangkexingqi`,`kemu`,`suoshujieshu`,`jiaoshixingming`,`jiaoshimingcheng`) values (76,'2021-05-18 16:53:37','星期一','科目6','第一节','教师姓名6','教室名称6');

/*Table structure for table `pingjiaoxiangqing` */

DROP TABLE IF EXISTS `pingjiaoxiangqing`;

CREATE TABLE `pingjiaoxiangqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaozhigonghao` varchar(200) DEFAULT NULL COMMENT '教职工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `jutipingjia` longtext COMMENT '具体评价',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='评教详情';

/*Data for the table `pingjiaoxiangqing` */

insert  into `pingjiaoxiangqing`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`pingfen`,`jutipingjia`,`xuehao`,`xingming`) values (51,'2021-05-18 16:53:37','教职工号1','教师姓名1','科目1','A','具体评价1','学号1','姓名1');
insert  into `pingjiaoxiangqing`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`pingfen`,`jutipingjia`,`xuehao`,`xingming`) values (52,'2021-05-18 16:53:37','教职工号2','教师姓名2','科目2','A','具体评价2','学号2','姓名2');
insert  into `pingjiaoxiangqing`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`pingfen`,`jutipingjia`,`xuehao`,`xingming`) values (53,'2021-05-18 16:53:37','教职工号3','教师姓名3','科目3','A','具体评价3','学号3','姓名3');
insert  into `pingjiaoxiangqing`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`pingfen`,`jutipingjia`,`xuehao`,`xingming`) values (54,'2021-05-18 16:53:37','教职工号4','教师姓名4','科目4','A','具体评价4','学号4','姓名4');
insert  into `pingjiaoxiangqing`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`pingfen`,`jutipingjia`,`xuehao`,`xingming`) values (55,'2021-05-18 16:53:37','教职工号5','教师姓名5','科目5','A','具体评价5','学号5','姓名5');
insert  into `pingjiaoxiangqing`(`id`,`addtime`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`pingfen`,`jutipingjia`,`xuehao`,`xingming`) values (56,'2021-05-18 16:53:37','教职工号6','教师姓名6','科目6','A','具体评价6','学号6','姓名6');

/*Table structure for table `renwutijiao` */

DROP TABLE IF EXISTS `renwutijiao`;

CREATE TABLE `renwutijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `renwuleixing` varchar(200) DEFAULT NULL COMMENT '任务类型',
  `jiaozhigonghao` varchar(200) DEFAULT NULL COMMENT '教职工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `renwutijiao` varchar(200) DEFAULT NULL COMMENT '任务提交',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='任务提交';

/*Data for the table `renwutijiao` */

insert  into `renwutijiao`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`xuehao`,`xingming`,`renwutijiao`,`sfsh`,`shhf`) values (111,'2021-05-18 16:53:37','任务名称1','任务类型1','教职工号1','教师姓名1','学号1','姓名1','','是','');
insert  into `renwutijiao`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`xuehao`,`xingming`,`renwutijiao`,`sfsh`,`shhf`) values (112,'2021-05-18 16:53:37','任务名称2','任务类型2','教职工号2','教师姓名2','学号2','姓名2','','是','');
insert  into `renwutijiao`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`xuehao`,`xingming`,`renwutijiao`,`sfsh`,`shhf`) values (113,'2021-05-18 16:53:37','任务名称3','任务类型3','教职工号3','教师姓名3','学号3','姓名3','','是','');
insert  into `renwutijiao`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`xuehao`,`xingming`,`renwutijiao`,`sfsh`,`shhf`) values (114,'2021-05-18 16:53:37','任务名称4','任务类型4','教职工号4','教师姓名4','学号4','姓名4','','是','');
insert  into `renwutijiao`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`xuehao`,`xingming`,`renwutijiao`,`sfsh`,`shhf`) values (115,'2021-05-18 16:53:37','任务名称5','任务类型5','教职工号5','教师姓名5','学号5','姓名5','','是','');
insert  into `renwutijiao`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`xuehao`,`xingming`,`renwutijiao`,`sfsh`,`shhf`) values (116,'2021-05-18 16:53:37','任务名称6','任务类型6','教职工号6','教师姓名6','学号6','姓名6','','是','');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-18 16:53:37');

/*Table structure for table `wangshangxuanke` */

DROP TABLE IF EXISTS `wangshangxuanke`;

CREATE TABLE `wangshangxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `jiaozhigonghao` varchar(200) DEFAULT NULL COMMENT '教职工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiaoshimingcheng` varchar(200) DEFAULT NULL COMMENT '教室名称',
  `shangkeshijian` datetime DEFAULT NULL COMMENT '上课时间',
  `shangkeshizhang` varchar(200) DEFAULT NULL COMMENT '上课时长',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='网上选课';

/*Data for the table `wangshangxuanke` */

insert  into `wangshangxuanke`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`shangkeshizhang`) values (31,'2021-05-18 16:53:37','课程编号1','课程名称1','教职工号1','教师姓名1','科目1','13823888881','教室名称1','2021-05-18 16:53:37','上课时长1');
insert  into `wangshangxuanke`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`shangkeshizhang`) values (32,'2021-05-18 16:53:37','课程编号2','课程名称2','教职工号2','教师姓名2','科目2','13823888882','教室名称2','2021-05-18 16:53:37','上课时长2');
insert  into `wangshangxuanke`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`shangkeshizhang`) values (33,'2021-05-18 16:53:37','课程编号3','课程名称3','教职工号3','教师姓名3','科目3','13823888883','教室名称3','2021-05-18 16:53:37','上课时长3');
insert  into `wangshangxuanke`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`shangkeshizhang`) values (34,'2021-05-18 16:53:37','课程编号4','课程名称4','教职工号4','教师姓名4','科目4','13823888884','教室名称4','2021-05-18 16:53:37','上课时长4');
insert  into `wangshangxuanke`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`shangkeshizhang`) values (35,'2021-05-18 16:53:37','课程编号5','课程名称5','教职工号5','教师姓名5','科目5','13823888885','教室名称5','2021-05-18 16:53:37','上课时长5');
insert  into `wangshangxuanke`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaozhigonghao`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`shangkeshizhang`) values (36,'2021-05-18 16:53:37','课程编号6','课程名称6','教职工号6','教师姓名6','科目6','13823888886','教室名称6','2021-05-18 16:53:37','上课时长6');

/*Table structure for table `xiaoyuanrenwu` */

DROP TABLE IF EXISTS `xiaoyuanrenwu`;

CREATE TABLE `xiaoyuanrenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `renwuleixing` varchar(200) DEFAULT NULL COMMENT '任务类型',
  `jiaozhigonghao` varchar(200) DEFAULT NULL COMMENT '教职工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `renwuxiangqing` longtext COMMENT '任务详情',
  `renwufujian` varchar(200) DEFAULT NULL COMMENT '任务附件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='校园任务';

/*Data for the table `xiaoyuanrenwu` */

insert  into `xiaoyuanrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`shouji`,`renwuxiangqing`,`renwufujian`) values (61,'2021-05-18 16:53:37','任务名称1','作业','教职工号1','教师姓名1','13823888881','任务详情1','');
insert  into `xiaoyuanrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`shouji`,`renwuxiangqing`,`renwufujian`) values (62,'2021-05-18 16:53:37','任务名称2','作业','教职工号2','教师姓名2','13823888882','任务详情2','');
insert  into `xiaoyuanrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`shouji`,`renwuxiangqing`,`renwufujian`) values (63,'2021-05-18 16:53:37','任务名称3','作业','教职工号3','教师姓名3','13823888883','任务详情3','');
insert  into `xiaoyuanrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`shouji`,`renwuxiangqing`,`renwufujian`) values (64,'2021-05-18 16:53:37','任务名称4','作业','教职工号4','教师姓名4','13823888884','任务详情4','');
insert  into `xiaoyuanrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`shouji`,`renwuxiangqing`,`renwufujian`) values (65,'2021-05-18 16:53:37','任务名称5','作业','教职工号5','教师姓名5','13823888885','任务详情5','');
insert  into `xiaoyuanrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`jiaozhigonghao`,`jiaoshixingming`,`shouji`,`renwuxiangqing`,`renwufujian`) values (66,'2021-05-18 16:53:37','任务名称6','作业','教职工号6','教师姓名6','13823888886','任务详情6','');

/*Table structure for table `xuankexiangqing` */

DROP TABLE IF EXISTS `xuankexiangqing`;

CREATE TABLE `xuankexiangqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiaoshimingcheng` varchar(200) DEFAULT NULL COMMENT '教室名称',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='选课详情';

/*Data for the table `xuankexiangqing` */

insert  into `xuankexiangqing`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (101,'2021-05-18 16:53:37','课程编号1','课程名称1','教师姓名1','科目1','手机1','教室名称1','上课时间1','学号1','姓名1','是','');
insert  into `xuankexiangqing`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (102,'2021-05-18 16:53:37','课程编号2','课程名称2','教师姓名2','科目2','手机2','教室名称2','上课时间2','学号2','姓名2','是','');
insert  into `xuankexiangqing`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (103,'2021-05-18 16:53:37','课程编号3','课程名称3','教师姓名3','科目3','手机3','教室名称3','上课时间3','学号3','姓名3','是','');
insert  into `xuankexiangqing`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (104,'2021-05-18 16:53:37','课程编号4','课程名称4','教师姓名4','科目4','手机4','教室名称4','上课时间4','学号4','姓名4','是','');
insert  into `xuankexiangqing`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (105,'2021-05-18 16:53:37','课程编号5','课程名称5','教师姓名5','科目5','手机5','教室名称5','上课时间5','学号5','姓名5','是','');
insert  into `xuankexiangqing`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jiaoshixingming`,`kemu`,`shouji`,`jiaoshimingcheng`,`shangkeshijian`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (106,'2021-05-18 16:53:37','课程编号6','课程名称6','教师姓名6','科目6','手机6','教室名称6','上课时间6','学号6','姓名6','是','');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`xueyuan`,`banji`,`zhaopian`) values (11,'2021-05-18 16:53:37','学生1','123456','姓名1','男','年龄1','13823888881','773890001@qq.com','440300199101010001','学院1','班级1','http://localhost:8080/ssmv0143/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`xueyuan`,`banji`,`zhaopian`) values (12,'2021-05-18 16:53:37','学生2','123456','姓名2','男','年龄2','13823888882','773890002@qq.com','440300199202020002','学院2','班级2','http://localhost:8080/ssmv0143/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`xueyuan`,`banji`,`zhaopian`) values (13,'2021-05-18 16:53:37','学生3','123456','姓名3','男','年龄3','13823888883','773890003@qq.com','440300199303030003','学院3','班级3','http://localhost:8080/ssmv0143/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`xueyuan`,`banji`,`zhaopian`) values (14,'2021-05-18 16:53:37','学生4','123456','姓名4','男','年龄4','13823888884','773890004@qq.com','440300199404040004','学院4','班级4','http://localhost:8080/ssmv0143/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`xueyuan`,`banji`,`zhaopian`) values (15,'2021-05-18 16:53:37','学生5','123456','姓名5','男','年龄5','13823888885','773890005@qq.com','440300199505050005','学院5','班级5','http://localhost:8080/ssmv0143/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`xueyuan`,`banji`,`zhaopian`) values (16,'2021-05-18 16:53:37','学生6','123456','姓名6','男','年龄6','13823888886','773890006@qq.com','440300199606060006','学院6','班级6','http://localhost:8080/ssmv0143/upload/xuesheng_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
