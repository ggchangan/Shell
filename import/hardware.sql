CREATE DATABASE IF NOT EXISTS `mghardware`;
USE mghardware;

#创建表
DROP TABLE IF EXISTS `hardware`;
CREATE TABLE hardware (
    id int,
    hardwareId varchar(20),
    valid boolean,
    userId int
);

#插入数据
INSERT INTO hardware VALUES(55,'xxmmGG',false, 99);
