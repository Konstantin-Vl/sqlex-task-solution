-- Найдите производителей принтеров. Вывести: maker
SELECT maker FROM product WHERE type = 'Printer' GROUP BY maker