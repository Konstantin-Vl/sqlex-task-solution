-- Найдите сражения, в которых участвовали корабли класса Kongo из таблицы Ships.
SELECT DISTINCT outcomes.battle
FROM ships
       INNER JOIN classes ON classes.class = ships.class AND classes.class = 'Kongo'
       INNER JOIN outcomes ON outcomes.ship = ships.name