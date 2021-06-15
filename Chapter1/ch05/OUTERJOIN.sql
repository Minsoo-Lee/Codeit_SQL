SELECT 
	item.id,
    item.name,
    stock.item_id,
    stock.inventory_count
FROM item AS i LEFT OUTER JOIN stock AS s
ON i.id = s.item_id;

SELECT 
	item.id,
    item.name,
    stock.item_id,
    stock.inventory_count
FROM item RIGHT OUTER JOIN stock
ON item.id = stock.item_id;