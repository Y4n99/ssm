CREATE DATABASE bookdb;

USE bookdb;

CREATE TABLE books(
bookid INT(11) AUTO_INCREMENT PRIMARY KEY,
bookName VARCHAR(30) NOT NULL COMMENT '����',
bookAuthor VARCHAR(30) NOT NULL COMMENT '����',
bookPublish VARCHAR(100) NOT NULL COMMENT '������',
bookPage INT(6) NOT NULL COMMENT 'ҳ��',
bookPrice DOUBLE NOT NULL COMMENT '�۸�',
createDate DATE NOT NULL COMMENT '���ʱ��'
)COMMENT 'ͼ���' ENGINE=INNODB DEFAULT CHARSET='utf8';

INSERT INTO books VALUE(NULL,'Java����','����','��е������',678,333.00,'2020-03-24');
INSERT INTO books VALUE(NULL,'Java��ģʽ','�Ǻ�','���ӳ�����',118,617.00,'2020-03-24');
INSERT INTO books VALUE(NULL,'TCP/IP���','����','��е������',778,403.00,'2020-03-24');
INSERT INTO books VALUE(NULL,'Java����2','����','���ӳ�����',628,333.00,'2020-03-24');
INSERT INTO books VALUE(NULL,'Java����','�ٺ�','��е������',708,103.00,'2020-03-24');
