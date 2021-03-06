#创建数据库
#DROP DATABASE mgsearch
CREATE DATABASE IF NOT EXISTS `mgsearch`;
USE mgsearch;

#创建表
DROP TABLE IF EXISTS `xxx`;
CREATE TABLE `xxx` (
  `标识` int(11) DEFAULT NULL,
  `姓名` varchar(20) DEFAULT NULL,
  `价格` double DEFAULT NULL,
  `标签` varchar(50) DEFAULT NULL,
  `出生日期` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `死亡日期` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `手机号` varchar(20) DEFAULT NULL,
  `邮箱地址` varchar(50) DEFAULT NULL,
  `银行卡号` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#插入数据
INSERT INTO xxx VALUES(1,'sxl',10.012345,'thin','2015-02-13 17:11:42','2014-09-03 08:07:12','18500972851','zhangren1989@gmail.com','6221883740011744751');
INSERT INTO xxx VALUES(2,'lk',10.012345,'fat','2015-02-13 17:11:42','2014-10-09 08:34:12','18806025472','zhangren@360.com','6013820600005153582');
INSERT INTO xxx VALUES(3,'subo',12.09743,'thin','2015-02-13 17:11:42','2014-10-20 00:09:09','13621189167','xueluowuhen.2007@163.com','6214830104025472');
INSERT INTO xxx VALUES(4,'xzx',13.09743,'thin','2015-02-13 17:11:42','2014-10-20 00:09:09','15626453859','zhangtiantian@360.cn','6222020200107507234');


