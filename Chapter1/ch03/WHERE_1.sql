SELECT * FROM copang_main.member WHERE age >= 27;
SELECT * FROM copang_main.member WHERE age BETWEEN 30 AND 39;
SELECT * FROM copang_main.member WHERE age NOT BETWEEN 30 AND 39;

SELECT * FROM copang_main.member WHERE sign_up_day > '2019-01-01';
SELECT * FROM copang_main.member 
	WHERE sign_up_day BETWEEN '2018-01-01' AND '2018-12-31';

