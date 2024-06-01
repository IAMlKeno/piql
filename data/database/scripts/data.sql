-- Inject test data

/* USE drug_inventory; */

INSERT INTO Users (id, s_username, s_password)
VALUES
  (2, "User1", "password"),
  (3, "User2", "password"),
  (4, "User3", "password"),
  (5, "User4", "password");

INSERT INTO Brands (id, s_name, s_location) VALUES
  (1, "Drugs-r-us", "UK"),
  (2, "Sniff-it", "US");

INSERT INTO Drugs (id, i_brandId, s_name, i_quantity, t_lastupdated)
VALUES
  (1, 1, "Crap Pills", 500, "2024-01-01 00:00:00"),
  (2, 1, "Super Pills", 100, "2024-01-01 00:00:00"),
  (3, 2, "The Best Kind", 10, "2024-01-01 00:00:00"),
  (4, 2, "IDK-38", 5, "2024-01-05 00:00:00");

INSERT INTO Actions (id, s_description, c_operation)
VALUES
  (1, "Adding quantity", '+'),
  (2, "Subtracting quantity", '-');

INSERT INTO Audits (i_owner, i_actionId, i_value, i_drugId, t_timestamp)
VALUES
  (2, 1, 500, 1, "2024-01-01 00:00:00"),
  (3, 1, 100, 2, "2024-01-01 00:00:00"),
  (4, 1, 10, 3, "2024-01-01 00:00:00"),
  (5, 1, 20, 4, "2024-01-01 00:00:00"),
  (2, 2, 15, 4, "2024-01-05 00:00:00");
