-- В таблице Product найти модели, которые состоят только из цифр или только из латинских букв (A-Z, без учета регистра).
-- Вывод: номер модели, тип модели.
SELECT product.model, product.type FROM product WHERE model SIMILAR TO '\d+|[a-zA-Z]+';