-- Определите среднее число орудий для классов линейных кораблей.
-- Получить результат с точностью до 2-х десятичных знаков.
SELECT ROUND(AVG(CAST(classes.numguns AS numeric)), 2)
FROM classes
WHERE classes.type = 'bb'