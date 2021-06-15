SELECT id, 
	name, 
	price,
    (SELECT AVG(price) FROM item) AS avg_price
FROM copang_main.item;