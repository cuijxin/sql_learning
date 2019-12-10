-- use mysql_demo; 

-- show global variables like 'wait_timeout';
-- set global wait_timeout=28800;  
-- DROP TABLE IF EXISTS `test_user`;
-- CREATE TABLE `test_user` (
--   `id` bigint(20)  PRIMARY key not null AUTO_INCREMENT,
--   `username` varchar(11) DEFAULT NULL,
--   `gender` varchar(2) DEFAULT NULL,
--   `password` varchar(100) DEFAULT NULL
-- ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

call myproc();

-- alter table test_user engine=InnoDB; 
-- select id,username,gender,password from test_user where id=12000000
-- select id,username,gender,password from test_user where username='12000000'

-- select id, username, gender from 
-- 	test_user where id IN(10009801, 12000001, 11000000, 90302, 18790, 8976900);

-- explain select count(*) from test_user;

-- ALTER TABLE `test_user` ADD INDEX index_name(username);