CREATE DATABASE drug_inventory;
USE drug_inventory;

CREATE TABLE User (
  id int NOT NULL AUTO_INCREMENT,
  s_username varchar(255) NOT NULL UNIQUE,
  s_password varchar(255), -- we will eventually turn this into a salted password
  PRIMARY KEY (id)
);

CREATE TABLE Drugs (
  id int NOT NULL AUTO_INCREMENT,
  s_brand varchar(255) NOT NULL,
  s_name varchar(255) NOT NULL,
  i_quantity int DEFAULT 0,
  PRIMARY KEY (id)
);