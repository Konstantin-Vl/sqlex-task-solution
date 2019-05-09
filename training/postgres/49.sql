-- Найдите названия кораблей с орудиями калибра 16 дюймов (учесть корабли из таблицы Outcomes).
SELECT DISTINCT ship
FROM outcomes
       INNER JOIN classes ON classes.class = outcomes.ship AND classes.bore = 16
UNION
SELECT DISTINCT name
FROM ships
       INNER JOIN classes ON classes.class = ships.class AND classes.bore = 16