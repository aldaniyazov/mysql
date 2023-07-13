-- Создание таблицы
CREATE TABLE mobile_phones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Manufacturer VARCHAR(100),
    ProductCount INT,
    Price DECIMAL(10, 2)
);

# Заполнение данными
INSERT INTO mobile_phones (ProductName, Manufacturer, ProductCount, Price)
VALUES
    ('Phone 1', 'Samsung', 5, 20000),
    ('Phone 2', 'Apple', 3, 30000),
    ('Phone 3', 'Samsung', 4, 15000),
    ('Phone 4', 'Sony', 2, 25000),
    ('Phone 5', 'Samsung', 6, 18000),
    ('Phone 6', 'LG', 1, 35000),
    ('Phone 7', 'Apple', 2, 40000),
    ('Phone 8', 'Samsung', 7, 22000),
    ('Phone 9', 'Xiaomi', 3, 18000),
    ('Phone 10', 'Samsung', 2, 23000),
    ('Phone 11', 'Apple', 4, 50000);

# Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT ProductName, Manufacturer, Price
FROM mobile_phones
WHERE ProductCount > 2;

# Выведите весь ассортимент товаров марки "Samsung"
SELECT * FROM mobile_phones
WHERE Manufacturer = 'Samsung';

# Товары, в которых есть упоминание "Iphone"
SELECT * FROM mobile_phones
WHERE ProductName LIKE '%Iphone%';

# "Galaxy"
SELECT * FROM mobile_phones
WHERE ProductName LIKE '%Galaxy%';

# Товары, в которых есть ЦИФРЫ (REGEXP - регулярки, либо RLIKE)
SELECT * FROM mobile_phones
WHERE ProductName REGEXP '[0-9]';

# Товары, в которых есть ЦИФРА "8"
SELECT * FROM mobile_phones
WHERE ProductName LIKE '%8%';
