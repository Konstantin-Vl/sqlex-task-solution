-- По Вашингтонскому международному договору от начала 1922 г. запрещалось строить линейные корабли водоизмещением более 35 тыс.тонн. Укажите корабли, нарушившие этот договор (учитывать только корабли c известным годом спуска на воду). Вывести названия кораблей.
SELECT ships.name FROM ships, classes
WHERE ships.class = classes.class  AND ships.launched >= 1922 AND classes.displacement > 35000 AND classes.type = 'bb'
GROUP BY ships.name