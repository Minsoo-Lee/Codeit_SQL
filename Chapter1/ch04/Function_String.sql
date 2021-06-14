SELECT *, LENGTH(address) FROM copang_main.member;
SELECT email, UPPER(email) FROM copang_main.member;
SELECT email, LPAD(age, 10, '0') FROM copang_main.member;
SELECT email, RPAD(age, 10, '!') FROM copang_main.member;