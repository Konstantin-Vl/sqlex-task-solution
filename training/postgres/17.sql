-- Найдите модели ПК-блокнотов, скорость которых меньше скорости любого из ПК.
-- Вывести: type, model, speed
SELECT DISTINCT Product.type, Laptop.model, Laptop.speed
FROM Product,
     Laptop
WHERE Laptop.model = Product.model
  AND Laptop.speed < ANY (SELECT MIN(speed) FROM Laptop
                          UNION ALL
                          SELECT MIN(speed) FROM PC)