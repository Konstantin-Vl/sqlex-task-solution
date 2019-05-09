-- Найдите классы, в которые входит только один корабль из базы данных (учесть также корабли в Outcomes).
SELECT t2.shipClass
FROM (SELECT t1.shipClass, COUNT(t1.shipName)
      FROM (SELECT classes.class shipClass, ships.name shipName
            FROM classes
                   INNER JOIN ships ON ships.class = classes.class
            UNION
            SELECT classes.class shipClass, outcomes.ship shipName
            FROM classes
                   INNER JOIN outcomes
                     ON outcomes.ship NOT IN (SELECT ships.name FROM ships) AND classes.class = outcomes.ship) t1
      GROUP BY t1.shipClass
      HAVING COUNT(t1.shipName) = 1) t2