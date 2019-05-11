-- Для каждого корабля, участвовавшего в сражении при Гвадалканале (Guadalcanal), вывести название, водоизмещение и число орудий.
SELECT outcomes.ship, classes.displacement, classes.numguns
FROM outcomes
       LEFT JOIN ships ON ships.name = outcomes.ship
       LEFT JOIN classes ON classes.class = COALESCE(ships.class, outcomes.ship)
WHERE outcomes.battle = 'Guadalcanal'