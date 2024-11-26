DROP DATABASE IF EXISTS `testDB`;
CREATE DATABASE `testDB`;

USE testDB;
DROP TABLE IF EXISTS `ID_info`;
CREATE TABLE `ID_info` (
	`ID` VARCHAR(20) NOT NULL ,
	`PW` VARCHAR(255) NOT NULL ,
	`NICKNAME` VARCHAR(20) NOT NULL,
	`RECOREDE_DATE` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `USER_info`;
CREATE TABLE `USER_info` (
	`ID` VARCHAR(20) NOT NULL,
	`NICKNAME` VARCHAR(20) NOT NULL,
	`SCORE` INT NOT NULL DEFAULT 0,
	`STAGE` INT NOT NULL DEFAULT 0,
	`RECOREDE_DATE` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `CLEARED_STAGE`;
CREATE TABLE `CLEARED_STAGE` (
    `NICKNAME` VARCHAR(20) NOT NULL,
    `ANSWER` INT NOT NULL    
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `LAB_SCORE`;
CREATE TABLE `LAB_SCORE` (
	`ID` INT NOT NULL,
	`SCORE` INT NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP DATABASE IF EXISTS `userDB`;
CREATE DATABASE `userDB`;

INSERT INTO `LAB_SCORE` (ID, SCORE) VALUES (1,50), (2,50), (3,50), (4,50), (5,100), (6,50), (7,50), (8,50), (9,50), (10,50), (11,50), (12,50), (13,100), (14,100), (15,300), (16,100), (17,100), (18,100), (19,100), (20,100), (21,100), (22,200), (23,100), (24,200), (25,200), (26,100), (27,300), (28,200), (29,300), (30,300), (31,200), (32,100), (33,300), (34,100), (35,100), (36,100), (37,100), (38,100), (39,300), (40,200);

CREATE USER `admin`@`localhost` identified by 'flamerootpassword';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost';
GRANT CREATE USER ON *.* TO 'admin'@'localhost';
GRANT GRANT OPTION ON *.* TO 'admin'@'localhost';

FLUSH PRIVILEGES;