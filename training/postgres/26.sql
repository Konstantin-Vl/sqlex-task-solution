-- Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена
SELECT AVG(price)
FROM (SELECT price FROM PC
            INNER JOIN Product ON PC.model = Product.model AND Product.maker = 'A'
      UNION ALL
      SELECT price FROM Laptop
            INNER JOIN Product ON Laptop.model = Product.model AND Product.maker = 'A'
     ) as avg_pricea