-- создание таблицы staff
CREATE TABLE staff (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    post VARCHAR(100),
    seniority INT,
    salary DECIMAL(10, 2),
    age INT
);

-- заполнение таблицы данными
INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
    ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
    ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
    ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
    ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
    ('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
    ('Петр', 'Петров', 'Рабочий', 20, 25000, 40),
    ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
    ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
    ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
    ('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
    ('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
    ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

-- Сортировка данных по полю salary в порядке убывания
SELECT * FROM staff ORDER BY salary DESC;

-- Сортировка данных по полю salary в порядке возрастания
SELECT * FROM staff ORDER BY salary;

-- Вывод 5 максимальных заработных плат
SELECT salary FROM staff ORDER BY salary DESC LIMIT 5;

-- Расчет суммарной зарплаты по каждой post
SELECT post, SUM(salary) AS total_salary FROM staff GROUP BY post;

-- Подсчет количества сотрудников с должностью "Рабочий" в возрасте от 24 до 49 лет включительно
SELECT COUNT(*) AS num_employees FROM staff WHERE post = 'Рабочий' AND age BETWEEN 24 AND 49;

-- Подсчет количества различных post
SELECT COUNT(DISTINCT post) AS num_specialties FROM staff;

-- Вывод специальностей, у которых средний возраст сотрудников меньше 30 лет включительно
SELECT post FROM staff GROUP BY post HAVING AVG(age) <= 30;