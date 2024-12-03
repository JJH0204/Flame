DROP DATABASE IF EXISTS `userDB`;
CREATE DATABASE `userDB`;
use userDB;

-- flame table
DROP TABLE IF EXISTS `flame`;
CREATE TABLE `flame` (
	`NICKNAME` VARCHAR(50) NOT NULL,
	`FLAG` VARCHAR(100) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- admin table
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
	`NICKNAME` VARCHAR(50) NOT NULL,
	`FLAG` VARCHAR(100) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- for challenge 38
INSERT INTO `flame` (NICKNAME, FLAG) VALUES ('flame', 'FL4g{flame_15_R341_4dm1n}');
INSERT INTO `admin` (NICKNAME, FLAG) VALUES ('admin', 'Fl4g{admin_15_f4k3_4dm1n}');

-- Admin Users ID Create
CREATE USER `db_admin`@`localhost` identified by 'flamerootpassword';
GRANT ALL PRIVILEGES ON *.* TO 'db_admin'@'localhost';
GRANT CREATE USER ON *.* TO 'db_admin'@'localhost';
GRANT GRANT OPTION ON *.* TO 'db_admin'@'localhost';

-- Grant for Admin Users
CREATE USER `flame`@`localhost` identified by 'firewalld';
GRANT SELECT, UPDATE ON `userDB`.`flame` TO 'flame'@'localhost';
CREATE USER `admin`@`localhost` identified by 'firewalld';
GRANT SELECT, UPDATE ON `userDB`.`admin` TO 'flame_admin'@'localhost';

FLUSH PRIVILEGES;