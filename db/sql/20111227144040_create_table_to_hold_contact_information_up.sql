
CREATE TABLE `tbl_contact_person` (
 `contact_id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `Fname` VARCHAR(255),
 `Lname` VARCHAR(255),
 `e_mail` VARCHAR(255),
 `job_title` VARCHAR(255),
 `company_name` VARCHAR(255),
 `created` DATETIME DEFAULT NULL,
 `updated` DATETIME DEFAULT NULL,
 `deleted` DATETIME DEFAULT NULL
);
