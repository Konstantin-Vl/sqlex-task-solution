-- Найдите классы кораблей, в которых хотя бы один корабль был потоплен в сражении.
SELECT class
FROM classes
WHERE class IN (SELECT ships.class
                FROM ships
                       LEFT JOIN classes ON classes.class = ships.class
                       INNER JOIN outcomes ON outcomes.ship = ships.name
                WHERE outcomes.result = 'sunk'
                UNION ALL
                SELECT outcomes.ship FROM outcomes WHERE outcomes.result = 'sunk'
)