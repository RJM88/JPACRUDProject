-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema powerrangerdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `powerrangerdb` ;

-- -----------------------------------------------------
-- Schema powerrangerdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `powerrangerdb` DEFAULT CHARACTER SET utf8 ;
USE `powerrangerdb` ;

-- -----------------------------------------------------
-- Table `powerranger`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `powerranger` ;

CREATE TABLE IF NOT EXISTS `powerranger` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `season_name` VARCHAR(100) NOT NULL,
  `episodes` INT NULL,
  `first_episode` VARCHAR(100) NULL,
  `last_episode` VARCHAR(100) NULL,
  `original_year` INT NULL,
  `main_villain` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS rangeruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'rangeruser'@'localhost' IDENTIFIED BY 'rangeruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'rangeruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `powerranger`
-- -----------------------------------------------------
START TRANSACTION;
USE `powerrangerdb`;
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (1, 'Mighty Morphin Power Rangers', 60, 'Day of the Dumpster', 'An Oyster Stew  ', 1993, 'Rita Repulsa');
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (2, 'Mighty Morphin Power Rangers', 52, 'The Mutiny, Part 1', 'Blue Ranger Gone Bad', 1994, 'Lord Zedd');
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (3, 'Mighty Morphin Power Rangers', 33, 'A Friend in Need, Part 1', 'Rangers in Reverse  ', 1995, 'Lord Zedd');
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (4, 'Power Rangers Zeo', 50, 'A Zeo Beginning, Part 1', 'Good as Gold', 1996, 'Machine Empire');
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (5, 'Power Rangers Turbo', 45, 'Shift into Turbo, Part 1', 'Chase Into Space, Part 2', 1997, 'Divatox');
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (6, 'Power Rangers in Space', 43, 'From Out of Nowhere, Part 1', 'Countdown to Destruction, Part 2', 1998, 'Dark Specter');
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (7, 'Power Rangers Lost Galaxy', 45, 'Quasar Quest, Part 1', 'Journey\'s End, Part 3', 1999, 'Scorpius');
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (8, 'Power Rangers: Lightspeed Rescue', 40, 'Operation Lightspeed', 'The Fate of Lightspeed, Part 2', 2000, 'Queen Bansheera');
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (9, 'Power Rangers Time Force', 40, 'Force from the Future', 'The End of Time', 2001, 'Ransik');
INSERT INTO `powerranger` (`id`, `season_name`, `episodes`, `first_episode`, `last_episode`, `original_year`, `main_villain`) VALUES (10, 'Power Rangers Wild Force', 40, 'Lionheart', 'The End of the Power Rangers', 2002, 'Master Org');

COMMIT;

