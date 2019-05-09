-- Найдите производителя, выпускающего ПК, но не ПК-блокноты.
SELECT maker
FROM product
WHERE type = 'pc'
  AND maker NOT IN (SELECT maker FROM product WHERE type = 'laptop')
GROUP BY maker
