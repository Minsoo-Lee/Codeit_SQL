INSERT INTO student
	(id, name, student_number, major, email, phone, admission_date)
    VALUES (1, '성태후', 20142947, '컴퓨터공학과', 'taehos@naver.com', '010-1234-1234', '2014-03-12');
    
INSERT INTO student
    VALUES (2, '김소원', 20130912, '화학과', 'sungso@google.com', '010-2323-1234', '2013-03-07');
    
INSERT INTO student
	(id, name, student_number, major,admission_date)
    VALUES (3, '이현승', 20111025, '법학과', '2011-03-02');

INSERT INTO student
	(name, student_number, major,admission_date)
    VALUES ('정유진', 20160843, '빅데이터학과', '2016-03-15');


SELECT * FROM course_rating.student;