CREATE TABLE `IMDB` (
	`IMDB_id` INT(max) NOT NULL AUTO_INCREMENT,
	`Movie_id` INT(max) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`IMDB_id`)
);

CREATE TABLE `Movies` (
	`Movie_id` INT NOT NULL,
	`Media_id` INT NOT NULL AUTO_INCREMENT,
	`Genre_id` INT NOT NULL AUTO_INCREMENT,
	`Review_id` INT NOT NULL AUTO_INCREMENT,
	`Artist_id` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Movie_id`)
);

CREATE TABLE `Media` (
	`Media_id` INT NOT NULL AUTO_INCREMENT,
	`Video_id` INT NOT NULL AUTO_INCREMENT,
	`Image_id` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Media_id`)
);

CREATE TABLE `Genre` (
	`Genre_id` INT NOT NULL,
	`Genre_comedy` VARCHAR(255) NOT NULL,
	`Genre_Thriller` VARCHAR(255) NOT NULL,
	`Genre_documentary` VARCHAR(255) NOT NULL
);

CREATE TABLE `Reviews` (
	`Review_id` INT NOT NULL AUTO_INCREMENT,
	`Review_1` INT NOT NULL AUTO_INCREMENT,
	`Review_2` INT NOT NULL AUTO_INCREMENT,
	`Review_3` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Review_id`)
);

CREATE TABLE `Users` (
	`User_1` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`User_2` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`User_3` VARCHAR(255) NOT NULL AUTO_INCREMENT
);

CREATE TABLE `Artists` (
	`Artist_id` INT NOT NULL AUTO_INCREMENT,
	`Artist_1` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Artist_2` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Artist_3` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Artist_4` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Artist_id`)
);

CREATE TABLE `Artist and Skills` (
	`Artist_id` INT NOT NULL AUTO_INCREMENT,
	`skill_1` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`skill_2` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`skill_3` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`skill_4` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Artist_id`)
);

CREATE TABLE `Artist and Roles` (
	`Artist_id` INT NOT NULL AUTO_INCREMENT,
	`Role_1` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Role_2` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Role_3` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Artist_id`)
);

CREATE TABLE `Movie Details` (
	`Movie_id` INT NOT NULL AUTO_INCREMENT,
	`Movie_name` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Movie_year` INT NOT NULL AUTO_INCREMENT,
	`Movie_Language` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Movie_budget` INT NOT NULL AUTO_INCREMENT,
	`Movie_collection` INT NOT NULL AUTO_INCREMENT,
	`Movie_length` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Movie_id`)
);

ALTER TABLE `Movies` ADD CONSTRAINT `Movies_fk0` FOREIGN KEY (`Movie_id`) REFERENCES `IMDB`(`Movie_id`);

ALTER TABLE `Media` ADD CONSTRAINT `Media_fk0` FOREIGN KEY (`Media_id`) REFERENCES `Movies`(`Media_id`);

ALTER TABLE `Media` ADD CONSTRAINT `Media_fk1` FOREIGN KEY (`Video_id`) REFERENCES `Movies`(`Media_id`);

ALTER TABLE `Media` ADD CONSTRAINT `Media_fk2` FOREIGN KEY (`Image_id`) REFERENCES `Movies`(`Media_id`);

ALTER TABLE `Genre` ADD CONSTRAINT `Genre_fk0` FOREIGN KEY (`Genre_id`) REFERENCES `Movies`(`Genre_id`);

ALTER TABLE `Genre` ADD CONSTRAINT `Genre_fk1` FOREIGN KEY (`Genre_comedy`) REFERENCES `Movies`(`Genre_id`);

ALTER TABLE `Genre` ADD CONSTRAINT `Genre_fk2` FOREIGN KEY (`Genre_Thriller`) REFERENCES `Movies`(`Genre_id`);

ALTER TABLE `Genre` ADD CONSTRAINT `Genre_fk3` FOREIGN KEY (`Genre_documentary`) REFERENCES `Movies`(`Genre_id`);

ALTER TABLE `Reviews` ADD CONSTRAINT `Reviews_fk0` FOREIGN KEY (`Review_id`) REFERENCES `Movies`(`Review_id`);

ALTER TABLE `Reviews` ADD CONSTRAINT `Reviews_fk1` FOREIGN KEY (`Review_1`) REFERENCES `Movies`(`Review_id`);

ALTER TABLE `Reviews` ADD CONSTRAINT `Reviews_fk2` FOREIGN KEY (`Review_2`) REFERENCES `Movies`(`Review_id`);

ALTER TABLE `Reviews` ADD CONSTRAINT `Reviews_fk3` FOREIGN KEY (`Review_3`) REFERENCES `Movies`(`Review_id`);

ALTER TABLE `Users` ADD CONSTRAINT `Users_fk0` FOREIGN KEY (`User_1`) REFERENCES `Reviews`(`Review_1`);

ALTER TABLE `Users` ADD CONSTRAINT `Users_fk1` FOREIGN KEY (`User_2`) REFERENCES `Reviews`(`Review_2`);

ALTER TABLE `Users` ADD CONSTRAINT `Users_fk2` FOREIGN KEY (`User_3`) REFERENCES `Reviews`(`Review_3`);

ALTER TABLE `Artists` ADD CONSTRAINT `Artists_fk0` FOREIGN KEY (`Artist_id`) REFERENCES `Movies`(`Artist_id`);

ALTER TABLE `Artists` ADD CONSTRAINT `Artists_fk1` FOREIGN KEY (`Artist_1`) REFERENCES `Movies`(`Artist_id`);

ALTER TABLE `Artists` ADD CONSTRAINT `Artists_fk2` FOREIGN KEY (`Artist_2`) REFERENCES `Movies`(`Artist_id`);

ALTER TABLE `Artists` ADD CONSTRAINT `Artists_fk3` FOREIGN KEY (`Artist_3`) REFERENCES `Movies`(`Artist_id`);

ALTER TABLE `Artists` ADD CONSTRAINT `Artists_fk4` FOREIGN KEY (`Artist_4`) REFERENCES `Movies`(`Artist_id`);

ALTER TABLE `Artist and Skills` ADD CONSTRAINT `Artist and Skills_fk0` FOREIGN KEY (`Artist_id`) REFERENCES `Artists`(`Artist_id`);

ALTER TABLE `Artist and Skills` ADD CONSTRAINT `Artist and Skills_fk1` FOREIGN KEY (`skill_1`) REFERENCES `Artists`(`Artist_id`);

ALTER TABLE `Artist and Skills` ADD CONSTRAINT `Artist and Skills_fk2` FOREIGN KEY (`skill_2`) REFERENCES `Artists`(`Artist_id`);

ALTER TABLE `Artist and Skills` ADD CONSTRAINT `Artist and Skills_fk3` FOREIGN KEY (`skill_3`) REFERENCES `Artists`(`Artist_id`);

ALTER TABLE `Artist and Skills` ADD CONSTRAINT `Artist and Skills_fk4` FOREIGN KEY (`skill_4`) REFERENCES `Artists`(`Artist_id`);

ALTER TABLE `Artist and Roles` ADD CONSTRAINT `Artist and Roles_fk0` FOREIGN KEY (`Artist_id`) REFERENCES `Artists`(`Artist_id`);

ALTER TABLE `Artist and Roles` ADD CONSTRAINT `Artist and Roles_fk1` FOREIGN KEY (`Role_1`) REFERENCES `Artists`(`Artist_id`);

ALTER TABLE `Artist and Roles` ADD CONSTRAINT `Artist and Roles_fk2` FOREIGN KEY (`Role_2`) REFERENCES `Artists`(`Artist_id`);

ALTER TABLE `Artist and Roles` ADD CONSTRAINT `Artist and Roles_fk3` FOREIGN KEY (`Role_3`) REFERENCES `Artists`(`Artist_id`);

ALTER TABLE `Movie Details` ADD CONSTRAINT `Movie Details_fk0` FOREIGN KEY (`Movie_id`) REFERENCES `Movies`(`Movie_id`);