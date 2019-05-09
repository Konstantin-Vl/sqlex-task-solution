-- Перечислите названия головных кораблей, имеющихся в базе данных (учесть корабли в Outcomes).
SELECT name
FROM ships
INNER JOIN classes ON classes.class = ships.name

UNION

SELECT ship
FROM outcomes
INNER JOIN classes ON classes.class = outcomes.ship