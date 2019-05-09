-- Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
SELECT maker
FROM product,
     pc
WHERE pc.model = product.model
  AND pc.speed >= 450
GROUP BY maker