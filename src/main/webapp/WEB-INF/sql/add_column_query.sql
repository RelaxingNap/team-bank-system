USE bank;

DESC Product;
SELECT * FROM Product;

ALTER TABLE Product
ADD Detail VARCHAR(1000) NOT NULL;

ALTER TABLE Product
MODIFY COLUMN Detail VARCHAR(1000) AFTER item_name;

ALTER TABLE Product
MODIFY COLUMN detail VARCHAR(1000) NOT NULL;

ALTER TABLE Product
CHANGE Detail detail VARCHAR(1000);


DESC User;


USE mydb6;

DESC Board;
SELECT * FROM Board;

DESC Reply;
SELECT * FROM Reply;