-- Используя таблицу Product, определить количество производителей, выпускающих по одной модели.
SELECT COUNT(c.cnt) qty
FROM (SELECT COUNT(model) cnt FROM product GROUP BY maker HAVING COUNT(model) = 1) c;