DROP TABLE IF EXISTS `activities`;

CREATE TABLE activities (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  amount double NOT NULL,
  timestamp DATETIME NOT NULL,
  owner_account_id INT NOT NULL,
  source_account_id INT NOT NULL,
  target_account_id INT NOT NULL
);

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE accounts (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(200)
);

LOCK TABLES `accounts` WRITE;
INSERT INTO accounts (name) values
("Bob"),
("Steve"),
("Andy");
UNLOCK TABLES;


LOCK TABLES `activities` WRITE;
INSERT INTO activities
(amount, timestamp, owner_account_id, source_account_id, target_account_id) 
VALUES 
(4200.0, "2017-05-18 13:50:19", 3, 12, 3),
(2200.0, "2017-05-18 13:51:19", 2, 12, 2),
(1300.0, "2017-05-18 13:52:19", 1, 12, 1);
UNLOCK TABLES;
