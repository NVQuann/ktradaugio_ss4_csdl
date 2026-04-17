CREATE DATABASE shopManager_db;

use shopManager_db;

CREATE TABLE categories( 
	categoryId INT PRIMARY KEY,
    categoryName VARCHAR(50) NOT NULL
);

CREATE TABLE products(
	productId INT,
    productName VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) CHECK(price > 0),
    stock INT CHECK(stock > 0),
    categoryId INT,
    
    PRIMARY KEY(productId, categoryId),
    
    FOREIGN KEY (categoryId) REFERENCES categories(categoryId)
);

-- Thêm dữ liệu
INSERT INTO categories
VALUES 
(1, 'Điện tử'),
(2, 'Thời trang'); 

INSERT INTO products
VALUES 
(1, 'iPhone 15', 25000000, 10, 1),
(2, 'Samsung S23', 20000000, 5, 1),
(3, ' Áo sơ mi nam', 500000, 50, 2),
(4, 'Giày thể thao', 12000000, 20, 2);

-- Cập nhật
UPDATE products
SET price = 26000000
WHERE productId = 1; 

UPDATE products
SET price = price + 10
WHERE productId;

-- Xóa 
DELETE FROM products
WHERE productId = 4 AND categoryId = 2;

DELETE FROM products
WHERE price < 1000000;

-- Lệnh SELECT
SELECT * FROM products; 

SELECT * FROM products
WHERE stock > 15;

SELECT * FROM products
WHERE price > 1000000 AND price < 25000000;

SELECT * FROM products 
WHERE productName <> 'iPhon 15' AND stock > 0;

SELECT * FROM products
WHERE productId <> 1 AND price > 500000;