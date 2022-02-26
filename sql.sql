CREATE DATABASE ssmbuild;
USE ssmbuild;
CREATE TABLE `books`(
    `bookID` INT NOT NULL AUTO_INCREMENT COMMENT '书id',
    `bookName` VARCHAR(100) NOT NULL COMMENT '书名',
    `bookCounts` INT NOT NULL COMMENT '数量',
    `detail` VARCHAR(200) NOT NULL COMMENT '描述',
    KEY `bookID`(`bookID`)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO `books`(`bookID`,`bookName`,`bookCounts`,`detail`)VALUES
(1,'Java',1,'从入门到放弃'),
(2,'MySQL',10,'从删库到跑路'),
(3,'Linux',5,'从进门到进牢');

CREATE TABLE `user`(
    `userID` INT NOT NULL AUTO_INCREMENT,
    `userName` VARCHAR(100) NOT NULL,
    `userPassword` VARCHAR(100) NOT NULL,
    `userAge` INT NOT NULL COMMENT '年龄',
    `userGender` VARCHAR(10) NOT NULL,
    KEY `userID`(`userID`)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO `user`(`userID`,`userName`,`userPassword`,`userAge`,`userGender`)VALUES
(1,'admin','admin',18,'男'),
(2,'张三','123456',18,'男'),
(3,'李四','123456',18,'男'),
(4,'王五','123456',18,'男');