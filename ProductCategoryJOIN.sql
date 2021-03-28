CREATE TABLE Products (
	id int PRIMARY KEY,
	name varchar(255) NOT NULL
);
INSERT INTO Products
VALUES  (1, 'Аккумулятор 12В'),
	    (2, 'Диски R17'),
	    (3, 'Рубашка'),
        (4, 'Галстук'),
	    (5, 'Скрепка'),
        (6, 'Маркер'),
        (7, 'Колбаса');



CREATE TABLE Category (
	id INT PRIMARY KEY,
	name NVARCHAR(255) NOT NULL
);
INSERT INTO Category 
VALUES  (1, 'Автотовары'),
        (2, 'Одежда'),
	    (3, 'Канцтовары');



CREATE TABLE ProductsCategory (
	products_id  INT not null,
	category_id INT not null
);
INSERT INTO ProductsCategory
VALUES  (1, 1),
	    (2, 1),
	    (3, 2),
		(4, 2),
	    (5, 3),
	    (6, 3);



SELECT Products.name [Name Product], Category.name [Name Category]
FROM Products 
LEFT JOIN ProductsCategory  on Products.id = ProductsCategory.products_id
LEFT JOIN Category  on Category.id = ProductsCategory.category_id