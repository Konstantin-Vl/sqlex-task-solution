-- Для классов кораблей, калибр орудий которых не менее 16 дюймов, укажите класс и страну.
SELECT  Classes.class, Classes.country FROM Classes WHERE Classes.bore >= 16