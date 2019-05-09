-- Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.
SELECT model
FROM (SELECT model, price FROM Laptop
      UNION
      SELECT model, price FROM PC
      UNION
      SELECT model, price FROM Printer) as models
WHERE models.price IN (SELECT price
                       FROM (SELECT model, price FROM Laptop
                             UNION
                             SELECT model, price FROM PC
                             UNION
                             SELECT model, price FROM Printer
                             ORDER BY price DESC
                             LIMIT 1) as m)