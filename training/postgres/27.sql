-- Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.
SELECT Product.maker, AVG(PC.hd)
FROM PC
       INNER JOIN Product
         ON PC.model = Product.model AND Product.maker IN (SELECT DISTINCT maker FROM Product WHERE type = 'printer')
GROUP BY Product.maker