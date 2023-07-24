# Создать представление, в которое попадут автомобили стоимостью до 25 000 долларов
CREATE VIEW cars_below_25000 AS
SELECT *
FROM cars
WHERE price < 25000;

# Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор OR REPLACE)
CREATE OR REPLACE VIEW cars_below_25000 AS
SELECT *
FROM cars
WHERE price < 30000;

# Создать представление, в котором будут только автомобили марки Scoda и Audi
CREATE VIEW skoda_audi_cars AS
SELECT *
FROM cars
WHERE make IN ('Шкода', 'Ауди');

# Добавить новый столбец под названием «время до следующей станции» с использованием оконной функции LEAD
CREATE VIEW station_times AS
SELECT *,
       LEAD(time) OVER (ORDER BY station_id) - time AS time_to_next_station
FROM stations;
