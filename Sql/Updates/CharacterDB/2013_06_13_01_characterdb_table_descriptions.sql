-- Some Table Descriptions for better appreciation of the tables and rows --



-----------------------------Tables-----------------------------


ALTER TABLE `characters`
	COMMENT='All the characters that were created are stored here';

ALTER TABLE `character_creation_actions`
	COMMENT='Actions which will be Executed if a Character was created';

ALTER TABLE `character_creation_data`
	COMMENT='Map and position, where a created character is located';

ALTER TABLE `character_creation_skills`
	COMMENT='Skills which a character will get after creation';

ALTER TABLE `character_creation_spells`
	COMMENT='Spells which a character will learn after creation';

ALTER TABLE `character_skills`
	COMMENT='Skills which the characters learned';

ALTER TABLE `character_spells`
	COMMENT='Spells which the characters learned';

ALTER TABLE `character_talents`
	COMMENT='Talents, which the Characters had learned';

-----------------------------Rows-----------------------------

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

ALTER TABLE `character_skills`
	ALTER `guid` DROP DEFAULT;
ALTER TABLE `character_skills`
	CHANGE COLUMN `guid` `guid` BIGINT(20) NOT NULL COMMENT 'Character GUID' FIRST;

ALTER TABLE `character_skills`
	ALTER `skill` DROP DEFAULT;
ALTER TABLE `character_skills`
	CHANGE COLUMN `skill` `skill` INT(5) NOT NULL COMMENT 'Skill ID' AFTER `guid`;

ALTER TABLE `character_skills`
	CHANGE COLUMN `skillLevel` `skillLevel` MEDIUMINT(9) NOT NULL DEFAULT '0' COMMENT 'Level of the Skill' AFTER `skill`;

ALTER TABLE `character_talents`
	CHANGE COLUMN `guid` `guid` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Character GUID' FIRST;

ALTER TABLE `character_talents`
	CHANGE COLUMN `talentId` `talentId` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID of the Spell which is linked to the Talent' AFTER `specGroup`;

ALTER TABLE `character_spells`
	CHANGE COLUMN `guid` `guid` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Character GUID' FIRST;

ALTER TABLE `character_spells`
	CHANGE COLUMN `spellId` `spellId` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID of the Spell' AFTER `guid`;

