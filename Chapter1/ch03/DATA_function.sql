SELECT * FROM copang_main.member WHERE YEAR(birthday) = '1992';
SELECT * FROM copang_main.member WHERE MONTH(sign_up_day) IN (6, 7, 8);
SELECT * FROM copang_main.member WHERE DAYOFMONTH(sign_up_day) BETWEEN 15 AND 31;

SELECT email, sign_up_day, DATEDIFF(sign_up_day, '2019-01-01') FROM copang_main.member;
SELECT email, sign_up_day, CURDATE(), DATEDIFF(sign_up_day, CURDATE()) FROM copang_main.member;
SELECT email, sign_up_day, DATEDIFF(sign_up_day, birthday) / 365 FROM copang_main.member;

SELECT email, sign_up_day, DATE_ADD(sign_up_day, INTERVAL 300 DAY) FROM copang_main.member;
SELECT email, sign_up_day, DATE_SUB(sign_up_day, INTERVAL 250 DAY) FROM copang_main.member;

SELECT email, sign_up_day, UNIX_TIMESTAMP(sign_up_day) FROM copang_main.member;
SELECT email, sign_up_day, FROM_UNIXTIME(UNIX_TIMESTAMP(sign_up_day)) FROM copang_main.member;