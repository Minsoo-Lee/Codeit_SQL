CREATE TABLE `course_rating`.`student`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NULL,
    `student_number` INT NULL,
    `major` VARCHAR(15) NULL,
    `email` VARCHAR(50) NULL,
    `phone` VARCHAR(15) NULL,
	`admission_date` DATE NULL,
    PRIMARY KEY (`id`)
);	# 테이블 생성
