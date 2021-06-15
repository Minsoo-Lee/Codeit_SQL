SELECT 
	i.id,
    i.name,
    s.item_id,
    s.inventory_count
FROM item AS i LEFT OUTER JOIN stock AS s
ON i.id = s.item_id;