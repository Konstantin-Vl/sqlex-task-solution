-- Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
-- Вывести: maker, средний размер экрана.
SELECT Product.maker, AVG(Laptop.screen)
FROM Laptop
       INNER JOIN Product ON Laptop.model = Product.model
GROUP BY Product.maker