USE LNTU;

DROP TABLE IF EXISTS  BookItem;

CREATE TABLE IF NOT EXISTS `BookItem`
(
    `bookname` VARCHAR(80) NOT NULL COMMENT '书名',
    `book_price` DECIMAL(5, 2) NOT NULL COMMENT '单价',
    `quantity` INT NOT NULL COMMENT '数量'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO BookItem VALUES('Image Processing', 34.95, 8);
INSERT INTO BookItem VALUES('Signal Processing', 51.75, 6);
INSERT INTO BookItem VALUES('Signal And System', 48.50, 10);
INSERT INTO BookItem VALUES('Digital Signal Processing', 45.00, 12);
INSERT INTO BookItem VALUES('The Logic Circuit', 28.65, 10);
INSERT INTO BookItem VALUES('SQL Techniques', 65.50, 10);
INSERT INTO BookItem VALUES('A First Course in Database Systems', 52.80, 9);