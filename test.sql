USE LNTU;
-- SELECT tname FROM Teacher;

-- SELECT DISTINCT tname FROM Teacher;

-- SELECT DISTINCT tname, sal, age FROM Teacher;

-- SELECT tname, tno, sal FROM Teacher ORDER BY tname;

-- SELECT tname, tno, sal FROM Teacher ORDER BY SAL;

-- SELECT tname, sal, age, tsex FROM Teacher ORDER BY tsex, sal;

-- SELECT tname, sal, age, tsex FROM Teacher ORDER BY 4, 3;

-- SELECT tname, sal, age, tsex FROM Teacher ORDER BY 4, 3 DESC;

-- SELECT tname, dname, age, tsex FROM Teacher WHERE dname='计算机' ORDER BY age;

-- SELECT tname, dname, age, tsex
-- FROM Teacher
-- WHERE age >= 40;

-- SELECT tname,dname,age,tsex 
-- FROM Teacher
-- WHERE dname <> '计算机'
-- ORDER BY dname;

-- SELECT tname, dname, age, tsex, sal
-- FROM Teacher
-- WHERE sal <>1200
-- ORDER BY sal; 

-- SELECT tname, dname, age, tsex 
-- FROM Teacher
-- WHERE age BETWEEN 30 AND 50
-- ORDER BY age;

-- SELECT tname, dname, age, tsex
-- FROM Teacher
-- WHERE dname BETWEEN '计算机' AND '生物'
-- ORDER BY age;

-- SELECT tname, sal, age, tsex
-- FROM Teacher
-- WHERE sal IS NOT NULL
-- ORDER BY sal;

-- SELECT tname, sal, age, tsex
-- FROM Teacher
-- WHERE sal <> NULL
-- ORDER BY sal;

-- SELECT * 
-- FROM Teacher 
-- WHERE 
-- age > 30 
-- AND 
-- tsex = '女'
-- ORDER BY age; 

-- SELECT * 
-- FROM Teacher
-- WHERE age > 30
-- AND tsex = '女'
-- AND dname = '计算机'
-- ORDER BY age;

-- SELECT tname, dname, sal
-- FROM Teacher
-- WHERE dname = '计算机'
-- OR dname = '生物'
-- ORDER BY dname;

-- SELECT *
-- FROM Teacher
-- WHERE sal > 1500
-- AND age < 45
-- ORDER BY sal;

-- SELECT tname, dname, sal
-- FROM Teacher
-- WHERE dname = '计算机'
-- OR dname = '生物'
-- AND sal > 1000
-- ORDER BY sal;

-- SELECT tname, dname, sal
-- FROM Teacher
-- WHERE (dname = '计算机' OR dname = '生物')
-- AND sal > 1000
-- ORDER BY sal;

-- SELECT tname, dname, age, tsex FROM Teacher
-- WHERE dname IN ('计算机','生物','机械工程' )
-- ORDER BY dname;

-- SELECT tname, dname, age, tsex
-- FROM Teacher
-- WHERE dname NOT IN ('计算机', '生物', '机械工程')
-- ORDER BY dname;

-- SELECT tname, dname, age, tsex
-- FROM Teacher
-- WHERE  NOT  dname = '计算机'
-- ORDER BY dname;


-- SELECT *
-- FROM Teacher
-- WHERE  NOT  sal > 1500
-- ORDER BY sal;

-- SELECT * FROM Teacher
-- WHERE NOT age BETWEEN 40 AND 50
-- ORDER BY age;

-- SELECT tname, dname, age, tsex FROM Teacher WHERE dname LIKE '%算机';

-- SELECT tname, dname, age, tsex FROM Teacher WHERE dname NOT LIKE '%算机';

-- SELECT cname, scount, ctest FROM Course WHERE cname LIKE '计算机%' ORDER BY cname;

-- SELECT cname, scount, ctest FROM Course WHERE cname LIKE '%基础' ORDER BY cname;

-- SELECT cname, scount, ctest FROM Course WHERE cname LIKE '%设计%' ORDER BY cname;

-- SELECT cname, scount, ctest FROM Course WHERE cname LIKE '计算机%基础' ORDER BY cname;

-- SELECT cname, scount, ctest FROM Course WHERE cname LIKE '______' ORDER BY cname;

-- SELECT cname, scount, ctest FROM Course WHERE cname RLIKE '[计生]%';

-- SELECT concat(tname, ' (', dname, ')'), age FROM Teacher ORDER BY age; 

-- SELECT concat(tname, ' (', cast(sal AS VARCHAR(5)), ')'), age FROM Teacher ORDER BY age; 

-- SELECT concat(tname, ' (', dname, ')') AS INFO, age FROM Teacher ORDER BY age; 

-- SELECT concat(tname, ' (', dname, ')') AS INFO, age FROM Teacher  ORDER BY INFO; 

-- SELECT bookname, book_price, quantity, book_price*quantity FROM BookItem ORDER BY bookname;

-- SELECT cno, cname, ctime, scount, cast(ctest AS CHAR(11)) AS Chardate FROM Course

-- SELECT cname, ctime, 
-- CASE
--   WHEN ctime >= 40 THEN 5
--   WHEN ctime >= 30 THEN 4
--   WHEN ctime >= 20 THEN 3
--   ELSE 2
-- END AS credit
-- FROM Course
-- ORDER BY credit

-- SELECT UPPER(bookname) AS BOOK, quantity, book_price FROM BookItem;

-- SELECT LOWER(bookname) AS BOOK, quantity, book_price FROM BookItem;

-- SELECT concat(rtrim(tname), ' (', rtrim(dname), ')') AS info, age FROM Teacher ORDER BY info;

SELECT SUM(sal) BOYSAL FROM Teacher WHERE tsex = '男';