SELECT 
	SUBSTRING(address, 1, 2) AS region,
    gender,
    COUNT(*)
FROM copang_main.member 
GROUP BY 
	SUBSTRING(address, 1, 2),
	gender
HAVING 
	region = '서울'
    AND gender = 'm';   
