-- Some Table Descriptions for better appreciation of the tables --

ALTER TABLE `character_creation_data`
  ALTER `zone` DROP DEFAULT;
ALTER TABLE `character_creation_data`
	CHANGE COLUMN `zone` `zone` SMALLINT(6) NOT NULL COMMENT 'Zone ID of the Selected Map' AFTER `map`;

ALTER TABLE `character_creation_data`
	ALTER `map` DROP DEFAULT;
ALTER TABLE `character_creation_data`
	CHANGE COLUMN `map` `map` SMALLINT(6) NOT NULL COMMENT 'MapID' AFTER `baseMap`;

ALTER TABLE `character_creation_data`
	ALTER `posO` DROP DEFAULT;
ALTER TABLE `character_creation_data`
	CHANGE COLUMN `posO` `posO` FLOAT NOT NULL COMMENT 'Orientation' AFTER `posZ`;


ALTER TABLE `character_creation_skills`
	CHANGE COLUMN `skillName` `skillName` VARCHAR(255) NULL DEFAULT NULL COMMENT 'Name of the Skill' AFTER `skill`;

ALTER TABLE `character_creation_skills`
	ALTER `skill` DROP DEFAULT;
ALTER TABLE `character_creation_skills`
	CHANGE COLUMN `skill` `skill` INT(6) NOT NULL COMMENT 'Skill ID' AFTER `race`;

ALTER TABLE `character_creation_skills`
	ALTER `race` DROP DEFAULT;
ALTER TABLE `character_creation_skills`
	CHANGE COLUMN `race` `race` TINYINT(4) NOT NULL COMMENT 'Race ID' FIRST;

