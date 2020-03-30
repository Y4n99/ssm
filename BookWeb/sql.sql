CREATE DATABASE bookdb;

USE bookdb;

CREATE TABLE books(
bookid INT(11) AUTO_INCREMENT PRIMARY KEY,
bookName VARCHAR(30) NOT NULL COMMENT '书名',
bookAuthor VARCHAR(30) NOT NULL COMMENT '作者',
bookPublish VARCHAR(100) NOT NULL COMMENT '出版社',
bookPage INT(6) NOT NULL COMMENT '页数',
bookPrice DOUBLE NOT NULL COMMENT '价格',
createDate DATE NOT NULL COMMENT '添加时间'
)COMMENT '图书表' ENGINE=INNODB DEFAULT CHARSET='utf8';

INSERT INTO books VALUE(NULL,'Java核心','哈哈','机械出版社',678,333.00,'2020-03-24');
INSERT INTO books VALUE(NULL,'Java与模式','呵呵','电子出版社',118,617.00,'2020-03-24');
INSERT INTO books VALUE(NULL,'TCP/IP详解','嘻嘻','机械出版社',778,403.00,'2020-03-24');
INSERT INTO books VALUE(NULL,'Java核心2','哈哈','电子出版社',628,333.00,'2020-03-24');
INSERT INTO books VALUE(NULL,'Java入门','嘿嘿','机械出版社',708,103.00,'2020-03-24');
