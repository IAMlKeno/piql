CREATE DATABASE IF NOT EXISTS drug_inventory;
USE drug_inventory;

DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
  id int NOT NULL AUTO_INCREMENT,
  s_username varchar(255) NOT NULL UNIQUE,
  s_password varchar(255), -- we will eventually turn this into a salted password
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Brands;
CREATE TABLE Brands (
  id int NOT NULL AUTO_INCREMENT,
  s_name varchar(255) NOT NULL,
  s_location varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Drugs;
CREATE TABLE Drugs (
  id int NOT NULL AUTO_INCREMENT,
  s_name varchar(255) NOT NULL,
  i_quantity int DEFAULT 0,
  t_lastupdated DATETIME NULL,
  i_brandId int,
  PRIMARY KEY (id),
  FOREIGN KEY (i_brandId) REFERENCES Brands(id)
);

DROP TABLE IF EXISTS Actions;
CREATE TABLE Actions (
  id int NOT NULL AUTO_INCREMENT,
  s_description varchar(255) NOT NULL,
  c_operation char NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Audits;
CREATE TABLE Audits (
  id int NOT NULL AUTO_INCREMENT,
  i_owner int NOT NULL,
  i_actionId int NOT NULL,
  i_value int NOT NULL,
  i_drugId int NOT NULL,
  t_timestamp DATETIME NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (i_actionId) REFERENCES Actions(id),
  FOREIGN KEY (i_owner) REFERENCES Users(id),
  FOREIGN KEY (i_drugId) REFERENCES Drugs(id)
);
