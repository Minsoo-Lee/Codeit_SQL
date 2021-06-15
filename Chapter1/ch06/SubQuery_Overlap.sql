SELECT i.id, i.name, AVG(star) AS avg_star,	COUNT(*) AS count_star
FROM item AS i LEFT OUTER JOIN review AS r ON r.item_id = i.id
	LEFT OUTER JOIN `member` AS m ON r.mem_id = m.id
WHERE m.gender = 'f'
GROUP BY i.id, i.name
HAVING COUNT(*) >= 2 AND avg_star = 
(
	SELECT MAX(avg_star) FROM (
		SELECT i.id, i.name, AVG(star) AS avg_star, COUNT(*) AS count_star
		FROM item AS i LEFT OUTER JOIN review AS r ON r.item_id = i.id
			LEFT OUTER JOIN `member` AS m ON r.mem_id = m.id
		WHERE m.gender = 'f'
		GROUP BY i.id, i.name
		HAVING COUNT(*) >= 2
		ORDER BY AVG(star) DESC, COUNT(*) DESC
	) AS final
)
ORDER BY AVG(star) DESC, COUNT(*) DESC
