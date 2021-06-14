SELECT * FROM copang_main.member
	WHERE address IS NULL;
    
SELECT * FROM copang_main.member
	WHERE address IS NOT NULL;

SELECT * FROM copang_main.member
	WHERE height IS NULL OR weight IS NULL OR address IS NULL;
    
SELECT
	COALESCE(height, '####'),
	COALESCE(weight, '---'),
    COALESCE(address, '@@@')
FROM copang_main.member;