-- file to run when you've succeeded in connecting to your database

-- Change XX to FA for Fall or SP for Spring Semester.
-- Change netID for your own netID
-- Change the values in the insert statement to your first and last name

use it330mc_SP21_rx29;

drop table if exists `test`;
CREATE TABLE `test` (
  `test_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `test` (`first_name`, `last_name`) values ('Richard', 'Xu');

select * from `test`;
