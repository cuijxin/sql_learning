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

-- SELECT SUM(sal) BOYSAL FROM Teacher WHERE tsex = '男';

-- SELECT SUM(sal) AS OLDSAL FROM Teacher WHERE age >= 40;

-- SELECT COUNT(*) AS TOTALITEM FROM Teacher;

-- SELECT COUNT(tno) AS TOTAL_TNO, count(tname) AS TOTAl_NAME, count(sal) TOTAL_SAL FROM Teacher;

-- SELECT 
--     COUNT(tno) AS TOTAL_TNO, 
--     COUNT(tname) AS TOTAl_NAME, 
--     COUNT(sal) TOTAL_SAL, 
--     COUNT(CONCAT(CAST(tno AS VARCHAR(5)) ,tname) AS T_NONAME
-- FROM Teacher

-- SELECT COUNT(*) AS TOTALWOMEN
-- FROM Teacher
-- WHERE tsex='女';

-- SELECT MAX(age) AS MAXAGE FROM Teacher

-- SELECT tname, dname, tsex, MAX(age) AS MAXAGE FROM Teacher

-- SELECT AVG(age) AS AVGCOMPUTER_AGE
-- FROM Teacher
-- WHERE dname='计算机';

-- SELECT 
--     *
-- FROM Teacher
-- WHERE age >= (SELECT AVG(age) FROM Teacher)
-- ORDER BY age;

-- SELECT COUNT(ALL sal) AS ALLSAL_COUNT FROM Teacher;

-- SELECT COUNT(DISTINCT sal) AS DISTINCTSAL_COUNT FROM Teacher;

-- SELECT 
--     COUNT(*) AS num_items,
--     MAX(sal) AS max_sal,
--     MIN(age) AS min_age,
--     SUM(sal)/COUNT(sal) AS avg_sal,
--     AVG(DISTINCT sal) AS disavg_sal
-- FROM
--     Teacher;

-- SELECT
--     AVG(sal) AS boyavg_sal
-- FROM 
--     Teacher
-- WHERE 
--     tsex='男';

-- SELECT CONCAT(tsex, '教师') AS TEACHER, AVG(sal) AS avg_sal
-- FROM Teacher
-- GROUP BY tsex;

-- SELECT 
--     dname, 
--     tsex,
--     COUNT(*) AS TOTAL_NUM
-- FROM
--     Teacher
-- GROUP BY 
--     dname,
--     tsex
-- ORDER BY 
--     dname;

-- SELECT 
--     dname, 
--     tsex,
--     COUNT(*) AS TOTAL_NUM
-- FROM
--     Teacher
-- GROUP BY 
--     dname,
--     tsex 
-- WITH ROLLUP;

-- SELECT 
--     dname,
--     tsex,
--     COUNT(*) AS TOTAL_NUM
-- FROM
--     Teacher
-- GROUP BY 
--     tsex, dname
-- WITH ROLLUP;

-- SELECT
--     dname,
--     tsex,
--     COUNT(*) AS TOTAL_NUM
-- FROM 
--     Teacher
-- GROUP BY
--     dname,
--     tsex
-- WITH CUBE;

-- SELECT 
--     sal,
--     COUNT(*) AS TOTAL_NUM
-- FROM 
--     Teacher
-- GROUP BY
--     sal;

-- SELECT 
--     dname,
--     COUNT(*) AS num_teacher
-- FROM
--     Teacher
-- GROUP BY
--     dname
-- HAVING 
--     COUNT(*) >= 2

-- SELECT 
--     dname,
--     COUNT(tsex) AS girl_num
-- FROM
--     Teacher
-- WHERE
--     tsex = '女'
-- GROUP BY
--     dname


-- SELECT 
--     dname,
--     COUNT(tsex) AS girl_num
-- FROM
--     Teacher
-- GROUP BY
--     dname
-- HAVING
--     tsex = '女';

-- SELECT 
--     dname,
--     COUNT(tsex) AS girl_num
-- FROM
--     Teacher
-- WHERE
--     tsex = '女'
-- GROUP BY
--     dname
-- HAVING
--     COUNT(tsex)>=2;

-- SELECT 
--     COUNT(tsex) AS num_girl
-- FROM
--     Teacher
-- WHERE
--     tsex='女'
-- HAVING
--     COUNT(tsex) > 4

SELECT
    dname,
    COUNT(tsex) AS num_girl
FROM
    Teacher
WHERE
    tsex='女'
GROUP BY
    dname
HAVING 
    COUNT(tsex) >= 2
ORDER BY
    num_girl
