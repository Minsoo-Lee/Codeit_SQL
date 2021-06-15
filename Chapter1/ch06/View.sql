#SubQuery_Overlap에서 이어짐

# VIEW 제작 // 하나의 테이블로 생각
CREATE VIEW three_tables_joined AS 
(SELECT i.id, i.name, AVG(star) AS avg_star, COUNT(*) AS count_star
FROM item AS i LEFT OUTER JOIN review AS r ON r.item_id = i.id
	LEFT OUTER JOIN `member` AS m ON r.mem_id = m.id
WHERE m.gender = 'f'
GROUP BY i.id, i.name
HAVING COUNT(*) >= 2
ORDER BY AVG(star) DESC, COUNT(*) DESC
);

#SubQuery_Overlap의 SQL문을 다음과 같이 간편하게 변경
SELECT * FROM copang_main.three_tables_joined
WHERE avg_star = (SELECT MAX(avg_star) FROM copang_main.three_tables_joined)
	AND count_star = (SELECT MAX(count_star) FROM copang_main.three_tables_joined);
