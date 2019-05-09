-- Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
SELECT laptop.model, laptop.price
FROM laptop
       INNER JOIN product ON laptop.model = product.model
WHERE product.maker = 'B'

UNION

SELECT pc.model, pc.price
FROM pc
       INNER JOIN product ON pc.model = product.model
WHERE product.maker = 'B'

UNION

SELECT printer.model, printer.price
FROM printer
       INNER JOIN product ON printer.model = product.model
WHERE product.maker = 'B'
