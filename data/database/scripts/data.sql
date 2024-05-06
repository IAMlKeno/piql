-- Inject test data

USE drug_inventory;

INSERT INTO User (s_username, s_password)
VALUES
  ("User1", "password"),
  ("User2", "password"),
  ("User3", "password"),
  ("User4", "password");

INSERT INTO Drugs (s_brand, s_name, i_quantity)
VALUES
  ("Drugs-r-us", "Crap Pills", 500),
  ("Drugs-r-us", "Super Pills", 100),
  ("Sniff-it", "The Best Kind", 10),
  ("Sniff-it", "IDK-38", 5);
