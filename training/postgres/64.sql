-- С точностью до 2-х десятичных знаков определите среднее число орудий
-- всех линейных кораблей (учесть корабли из таблицы Outcomes).
SELECT ROUND(AVG(CAST(classes.numguns AS numeric)), 2)
FROM (SELECT ships.name, ships.class FROM ships
      UNION
      SELECT outcomes.ship, outcomes.ship
      FROM outcomes
      WHERE outcomes.ship NOT IN (SELECT ships.name FROM ships)
     ) all_ships
INNER JOIN classes ON classes.class = all_ships.class
WHERE classes.type = 'bb'