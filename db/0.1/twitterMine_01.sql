SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP TABLE IF EXISTS `accountInformation`;
CREATE  TABLE `twitterMine`.`accountInformation` (
  `ID` INT NOT NULL AUTO_INCREMENT ,
  `account_id` INT NOT NULL,
  `time` DATETIME NULL ,
  `friends_count` BIGINT NULL ,
  `location` VARCHAR(45) NULL ,
  `lang` VARCHAR(45) NULL ,
  `followers_count` BIGINT NULL ,
  `statuses_count` BIGINT NULL ,
  `name` VARCHAR(45) NULL ,
  `description` VARCHAR(256) NULL ,
  `favourites_count` VARCHAR(45) NULL ,
  `listed_count` BIGINT NULL ,
  `created_at` VARCHAR(45) NULL ,
  `utc_offset` VARCHAR(45) NULL ,
  `time_zone` VARCHAR(256) NULL ,
  PRIMARY KEY (`ID`),
  KEY `account_id` (`account_id`),
    CONSTRAINT `twitterMineAccountInfo` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION 
)
DEFAULT CHARACTER SET = utf8;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;