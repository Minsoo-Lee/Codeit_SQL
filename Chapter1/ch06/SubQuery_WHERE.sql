SELECT id, 
	name, 
	price,
    (SELECT AVG(price) FROM item) AS avg_price
FROM copang_main.item
WHERE price > (SELECT AVG(price) FROM item);

SELECT id, name, price
FROM item
WHERE price = (SELECT MAX(price) FROM item);

SELECT * FROM item
WHERE id IN
(
SELECT item_id
FROM review
GROUP BY item_id
HAVING COUNT(*) >= 3
);
