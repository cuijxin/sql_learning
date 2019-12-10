USE LNTU;

DROP TABLE IF EXISTS  Course;

CREATE TABLE IF NOT EXISTS `Course`
(
    `cno` INT(11) NOT NULL COMMENT '课程编号',
    `cname` VARCHAR(128) NOT NULL COMMENT '课程名称',
    `ctime` INT NOT NULL COMMENT '课时',
    `scount` INT NOT NULL COMMENT '容纳人数',
    `ctest` DATE NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO Course VALUES(4, '应用数学基础', 48, 120, '2006-7-10');
INSERT INTO Course VALUES(5, '生物工程概论', 32, 80, '2006-7-8');
INSERT INTO Course VALUES(1, '计算机软件基础', 32, 70, '2006-7-8');
INSERT INTO Course VALUES(2, '计算机硬件基础', 24, 80, '2006-6-28');
INSERT INTO Course VALUES(8, '模拟电路设计', 28, 90, '2006-7-10');
INSERT INTO Course VALUES(7, '机械设计实践', 48, 68, '2006-7-14');
INSERT INTO Course VALUES(3, '生物化学', 32, 40, '2006-7-2');
INSERT INTO Course VALUES(9, '数据库设计', 16, 80, '2006-7-1');
INSERT INTO Course VALUES(6, '设计理论', 28, 45, '2006-6-30');
INSERT INTO Course VALUES(10, '计算机入门', 24, 150, '2006-6-29');
INSERT INTO Course VALUES(11, '数字电路设计基础', 30, 125, '2006-6-20');