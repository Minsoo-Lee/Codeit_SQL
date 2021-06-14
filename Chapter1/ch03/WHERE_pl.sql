SELECT * FROM copang_main.member
	WHERE gender = 'm' 
		AND address LIKE '서울%'
        AND age BETWEEN 25 AND 29;
        
SELECT * FROM copang_main.member
	WHERE MONTH(sign_up_day) BETWEEN 3 AND 5
		OR MONTH(sign_up_day) BETWEEN 9 AND 11;
        
SELECT * FROM copang_main.member
	WHERE (gender = 'm' AND height >= 180)
		OR (gender = 'f' AND height >= 170);