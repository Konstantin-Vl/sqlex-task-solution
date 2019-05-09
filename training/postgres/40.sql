-- Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
SELECT DISTINCT ON (ships.name) ships.class, ships.name, classes.country
FROM ships
INNER JOIN classes ON classes.class = ships.class
WHERE classes.numguns >= 10;