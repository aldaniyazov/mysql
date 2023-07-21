SELECT cats.*, shops.shop_name
FROM cats
JOIN shops ON cats.shops_id = shops.id;

-- Способ 1: Используя INNER JOIN
SELECT shops.shop_name
FROM shops
JOIN cats ON shops.id = cats.shops_id
WHERE cats.cat_name = 'Мурзик';

-- Способ 2: Используя подзапрос (IN)
SELECT shop_name
FROM shops
WHERE id IN (SELECT shops_id FROM cats WHERE cat_name = 'Мурзик');

SELECT shops.*
FROM shops
LEFT JOIN cats ON shops.id = cats.shops_id
WHERE cats.cat_name IS NULL OR cats.cat_name NOT IN ('Мурзик', 'Zuza');

SELECT an.an_name, an.an_price
FROM Analysis AS an
JOIN Orders AS ord ON an.an_id = ord.ord_an
WHERE ord.ord_datetime >= '2020-02-05' AND ord.ord_datetime < '2020-02-13';
