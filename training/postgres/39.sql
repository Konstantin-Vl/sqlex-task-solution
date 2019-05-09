-- Найдите корабли, `сохранившиеся для будущих сражений`; т.е. выведенные из строя в одной битве (damaged), они участвовали в другой, произошедшей позже.
SELECT DISTINCT o1.ship
FROM outcomes o1
INNER JOIN battles b1 ON b1.name = o1.battle
WHERE o1.result = 'damaged'AND EXISTS (
                                 SELECT o2.ship
                                 FROM outcomes o2
                                 INNER JOIN battles b2 ON b2.name = o2.battle
                                 WHERE o2.ship = o1.ship
                                   AND b2.date > b1.date
                               )