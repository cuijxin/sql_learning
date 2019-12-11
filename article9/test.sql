USE LNTU;

-- SELECT 
--     tname, 
--     dname,
--     cname,
--     ctest
-- FROM
--     Teacher,
--     Course
-- WHERE
--     Teacher.cno = Course.cno;

-- SELECT
--     tname, 
--     dname,
--     cname,
--     ctest
-- FROM
--     Teacher,
--     Course

-- SELECT 
--     sname, 
--     Student.dname, 
--     cname, 
--     ctest, 
--     mark, 
--     tname
-- FROM
--     Teacher,
--     Course,
--     Student
-- WHERE
--     Student.cno = Course.cno
-- AND
--     Teacher.cno = Student.cno
-- ORDER BY 
--     sname;

-- SELECT 
--     sname,
--     S.dname,
--     cname,
--     ctest,
--     mark,
--     tname
-- FROM
--     Teacher AS T, 
--     Course AS C,
--     Student AS S
-- WHERE
--     T.cno = C.cno
-- AND
--     S.cno = C.cno
-- ORDER BY
--     sname;

-- SELECT 
--     DISTINCT sno
-- FROM 
--     Student
-- WHERE
--     mark<60;

-- SELECT
--     sname,
--     dname,
--     cno,
--     mark
-- FROM
--     Student
-- WHERE
--     sno IN ('9702', '9703', '9705')
-- ORDER BY 
--     sname;

-- SELECT
--     DISTINCT S1.sname,
--     S1.dname,
--     S1.cno,
--     S1.mark
-- FROM
--     Student AS S1, 
--     Student AS S2
-- WHERE
--     S1.sno = S2.sno
-- AND
--     S2.mark < 60
-- ORDER BY 
--     S1.sname

-- SELECT 
--     sname,
--     dname,
--     cno,
--     tname
-- FROM
--     Student
-- NATURAL JOIN
--     Teacher;

-- SELECT 
--     sname,
--     S.dname,
--     S.cno,
--     tname
-- FROM
--     Student AS S,
--     Teacher AS T
-- WHERE
--     S.cno = T.cno
-- ORDER BY 
--     sname;

-- SELECT
--     sname,
--     S.dname,
--     S.cno,
--     tname
-- FROM
--     Student AS S
-- INNER JOIN
--     Teacher AS T
-- ON
--     S.cno = T.cno
-- ORDER BY 
--     sname;

-- SELECT
--     S.sno,
--     S.sname,
--     S.dname,
--     S.cno,
--     S.mark,
--     T.tname
-- FROM
--     Student AS S
-- INNER JOIN
--     Teacher AS T
-- ON
--     S.dname <> T.dname
-- AND
--     S.cno = T.cno
-- ORDER BY 
--     S.sname;

-- SELECT
--     S.sno,
--     S.sname,
--     S.dname,
--     S.cno,
--     S.mark
--     tname
-- FROM
--     Student AS S,
--     Teacher AS T
-- WHERE
--     S.dname <> T.dname
-- AND
--     S.cno = T.cno
-- ORDER BY
--     S.sname;

-- SELECT
--     S.sname,
--     S.dname,
--     S.cno,
--     C.ctest,
--     S.mark,
--     T.tname
-- FROM
--     Student AS S
-- INNER JOIN
--     Course AS C
-- ON
--     S.cno = C.cno
-- INNER JOIN
--     Teacher AS T
-- ON
--     S.cno = T.cno
-- ORDER BY
--     S.sname;

-- SELECT
--     S.sno,
--     S.sname,
--     S.cno,
--     C.cname,
--     C.ctest,
--     S.mark
-- FROM
--     Student AS S
-- LEFT JOIN
--     Course AS C
-- ON
--     S.cno = C.cno
-- ORDER BY 
--     S.sname;

-- SELECT 
--     S.sno,
--     S.sname,
--     S.cno,
--     C.cname,
--     C.ctest,
--     S.mark
-- FROM
--     Student AS S,
--     Course AS C
-- WHERE
--     S.cno *= C.cno
-- ORDER BY
--     sname;

-- SELECT 
--     S.sno,
--     S.sname,
--     S.cno,
--     C.cname,
--     C.ctest,
--     S.mark
-- FROM
--     Student AS S
-- RIGHT JOIN
--     Course AS C
-- ON
--     S.cno = C.cno
-- ORDER BY
--     S.sname;

-- SELECT
--     S.sno,
--     S.sname,
--     S.cno,
--     C.cname,
--     C.ctest,
--     S.mark
-- FROM
--     Student AS S
-- FULL OUTER JOIN
--     Course AS C
-- ON
--     S.cno = C.cno
-- ORDER BY 
--     S.sname;

-- SELECT
--     S.sno,
--     S.sname,
--     S.dname
-- FROM
--     Student AS S
-- WHERE 
--     S.cno = 1
-- UNION
-- SELECT 
--     S.sno,
--     S.sname,
--     S.dname
-- FROM
--     Student AS S
-- WHERE
--     S.cno = 10;

-- SELECT 
--     S.sno,
--     S.sname,
--     S.dname
-- FROM 
--     Student AS S
-- WHERE
--     S.cno = 1
-- OR
--     S.cno = 10
-- ORDER BY
--     S.sno;

-- SELECT
--     S.sno,
--     S.sname,
--     S.dname
-- FROM
--     Student AS S
-- WHERE 
--     S.cno = 1
-- UNION ALL
-- SELECT 
--     S.sno,
--     S.sname,
--     S.dname
-- FROM
--     Student AS S
-- WHERE
--     S.cno = 10;

SELECT 
    S.sname,
    S.dname,
    S.cno
FROM
    Student AS S
WHERE
    S.cno = 1
OR
    S.cno = 10
UNION
SELECT
    T.tname,
    T.dname,
    T.cno
FROM 
    Teacher AS T
WHERE
    T.cno = 1
OR
    T.cno = 10