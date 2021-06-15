SELECT 
	AVG(review_count),
    MAX(review_count),
    MIN(review_count)
FROM
(SELECT
	SUBSTRING(address, 1, 2) AS region,
    COUNT(*) AS review_count
FROM review AS r LEFT OUTER JOIN `member` AS m
ON r.mem_id = m.id
GROUP BY SUBSTRING(address, 1, 2)
HAVING region IS NOT NULL
	AND region != '안드') # derived table
AS review_count_summary; # derived table에는 반드시 alias를 붙일 것