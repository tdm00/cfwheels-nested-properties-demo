
CREATE TABLE `tblcontactlocations` (
 `locationid` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `ContactIdFk` VARCHAR(255),
 `location_address_1` VARCHAR(255),
 `location_address_2` VARCHAR(255),
 `location_address_3` VARCHAR(255),
 `location_city` VARCHAR(255),
 `location_state` VARCHAR(40),
 `location_zip` VARCHAR(15),
 `location_phone` VARCHAR(25),
 `location_fax` VARCHAR(25),
 `location_website_url` VARCHAR(255),
 `created` DATETIME DEFAULT NULL,
 `updated` DATETIME DEFAULT NULL,
 `deleted` DATETIME DEFAULT NULL
);
