-- Определить названия всех кораблей из таблицы Ships, которые могут быть линейным японским кораблем,
-- имеющим число главных орудий не менее девяти, калибр орудий менее 19 дюймов и водоизмещение не более 65 тыс.тонн
SELECT ships.name
FROM ships
       LEFT JOIN classes ON classes.class = ships.class
WHERE (classes.type = 'bb'AND classes.country = 'Japan')
  AND (classes.numguns IS NULL OR classes.numguns >= 9)
  AND (classes.bore IS NULL OR classes.bore < 19)
  AND (classes.displacement IS NULL OR classes.displacement <= 65000)