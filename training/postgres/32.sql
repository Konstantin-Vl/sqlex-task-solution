-- Одной из характеристик корабля является половина куба калибра его главных орудий (mw).
-- С точностью до 2 десятичных знаков определите среднее значение mw для кораблей каждой страны,
-- у которой есть корабли в базе данных.
SELECT classes.country, ROUND(CAST(AVG(POWER(classes.bore, 3) / 2) AS numeric), 2)
FROM (SELECT ships.name, ships.class FROM ships
      UNION
      SELECT outcomes.ship, outcomes.ship
      FROM outcomes
      WHERE outcomes.ship NOT IN (SELECT ships.name FROM ships)
     ) all_ships
INNER JOIN classes ON classes.class = all_ships.class
GROUP BY classes.country