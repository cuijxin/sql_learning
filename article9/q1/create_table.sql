USE LNTU;

DROP TABLE IF EXISTS  Student;

CREATE TABLE IF NOT EXISTS `Student`
(
    `sno` VARCHAR(4) NOT NULL COMMENT '学生编号',
    `sname` VARCHAR(128) NOT NULL COMMENT '学生姓名',
    `dname` VARCHAR(128) NOT NULL COMMENT '系名称',
    `ssex` VARCHAR(2),
    `cno` INT,
    `mark` DECIMAL(3, 1),
    `type` VARCHAR(8)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO Student VALUES('9701', '刘建国', '管理工程', '男', 4, 82.5, '必修');
INSERT INTO Student VALUES('9701', '刘建国', '管理工程', '男', 10, 70, '选修');
INSERT INTO Student VALUES('9701', '刘建国', '管理工程', '男', 1, 78.5, '选修');
INSERT INTO Student VALUES('9702', '李春', '环境工程', '女', 5, 63, '必修');
INSERT INTO Student VALUES('9702', '李春', '环境工程', '女', 10, 58, '选修');
INSERT INTO Student VALUES('9703', '王天', '生物', '男', 5, 48.5, '必修');
INSERT INTO Student VALUES('9703', '王天', '生物', '男', 2, 86, '选修');
INSERT INTO Student VALUES('9704', '李华', '计算机', '女', 4, 76, '必修');
INSERT INTO Student VALUES('9704', '李华', '计算机', '女', 1, 92, '必修');
INSERT INTO Student VALUES('9704', '李华', '计算机', '女', 2, 89, '必修');
INSERT INTO Student VALUES('9704', '李华', '计算机', '女', 9, 80, '必修');
INSERT INTO Student VALUES('9704', '李华', '计算机', '女', 8, 70, '选修');
INSERT INTO Student VALUES('9705', '孙庆', '电子工程', '男', 8, 79, '必修');
INSERT INTO Student VALUES('9705', '孙庆', '电子工程', '男', 1, 59, '必修');
INSERT INTO Student VALUES('9705', '孙庆', '电子工程', '男', 11, 52, '必修');
INSERT INTO Student VALUES('9705', '孙庆', '电子工程', '男', 6, 68, '必修');
INSERT INTO Student VALUES('9706', '高伟', '机械工程', '男', 13, 93, '必修');
INSERT INTO Student VALUES('9706', '高伟', '机械工程', '男', 12, 88.5, '必修');
INSERT INTO Student VALUES('9706', '高伟', '机械工程', '男', 1, 78, '选修');
INSERT INTO Student VALUES('9706', '高伟', '机械工程', '男', 10, 76, '选修');