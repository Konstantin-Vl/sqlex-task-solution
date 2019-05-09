-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
-- Вывести: maker, максимальная цена.
SELECT pr.maker, MAX(pc.price)
FROM Product as pr
       INNER JOIN PC as pc ON pr.model = pc.model
GROUP BY pr.maker