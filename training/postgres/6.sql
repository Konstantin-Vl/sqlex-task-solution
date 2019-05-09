-- Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
SELECT DISTINCT product.maker, l.speed
FROM laptop as l
       INNER JOIN product
         ON product.model = l.model
WHERE l.hd >= 10