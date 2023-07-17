-- Создание таблицы "sales"
CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2)
);

-- Заполнение данными
INSERT INTO sales (product_name, quantity, price)
VALUES
    ('Product 1', 50, 100),
    ('Product 2', 150, 200),
    ('Product 3', 250, 300),
    ('Product 4', 350, 400),
    ('Product 5', 450, 500),
    ('Product 6', 550, 600);

# Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300
SELECT
    CASE
        WHEN quantity < 100 THEN 'Меньше 100'
        WHEN quantity BETWEEN 100 AND 300 THEN '100-300'
        ELSE 'Больше 300'
    END AS segment,
    COUNT(*) AS count
FROM sales
GROUP BY segment;

-- Создание таблицы "orders"
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_number VARCHAR(100),
    status_code INT
);

-- Заполнение данными
INSERT INTO orders (order_number, status_code)
VALUES
    ('Order 1', 1),
    ('Order 2', 2),
    ('Order 3', 3),
    ('Order 4', 4),
    ('Order 5', 5),
    ('Order 6', 6);

-- Вывод "полного" статуса заказа
SELECT
    order_number,
    CASE
        WHEN status_code = 1 THEN 'Заказ создан'
        WHEN status_code = 2 THEN 'Заказ подтвержден'
        WHEN status_code = 3 THEN 'Заказ в процессе доставки'
        WHEN status_code = 4 THEN 'Заказ доставлен'
        ELSE 'Неизвестный статус'
    END AS full_status
FROM orders;
