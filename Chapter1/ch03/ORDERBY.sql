SELECT * FROM copang_main.member
	ORDER BY height ASC;
    
SELECT * FROM copang_main.member
	WHERE gender = 'm'
		AND weight >= 70
	ORDER BY height DESC;
    
SELECT * FROM copang_main.member
	ORDER BY YEAR(sign_up_day) DESC, email ASC;