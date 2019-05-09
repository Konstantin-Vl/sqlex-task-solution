-- Найдите среднюю скорость ПК, выпущенных производителем A.
SELECT AVG(pc.speed)
FROM pc
INNER JOIN product ON product.model = pc.model AND product.maker = 'A'