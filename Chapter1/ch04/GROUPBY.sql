SELECT gender FROM copang_main.member GROUP BY gender;
SELECT gender, COUNT(*) FROM copang_main.member GROUP BY gender;
SELECT gender, COUNT(*), AVG(height) FROM copang_main.member GROUP BY gender;
SELECT gender, COUNT(*), AVG(height), MIN(weight) FROM copang_main.member GROUP BY gender;

SELECT 
	SUBSTRING(address, 1, 2) AS region,
    gender,
    COUNT(*)
FROM copang_main.member 
GROUP BY 
	SUBSTRING(address, 1, 2),
	gender;   
