CREATE DEFINER=`root`@`%` PROCEDURE `myproc`()
BEGIN
	declare num INT;
    set num=1; 
    while num <= 15000000 do 
		insert into test_user(username,gender,password) values(num,'保密',PASSWORD(num)); 
		set num=num+1;
	END while;
END