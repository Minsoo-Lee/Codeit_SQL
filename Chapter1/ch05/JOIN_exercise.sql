SELECT i.id, i.name, AVG(r.star) AS star_avg, COUNT(*) AS star_count
FROM 
	item AS i LEFT OUTER JOIN review AS r
		ON r.item_id = i.id
	LEFT OUTER JOIN `member` AS m
		ON r.mem_id = m.id
WHERE m.gender = 'm'
GROUP BY i.id, i.name
HAVING star_count > 1
ORDER BY star_avg DESC;