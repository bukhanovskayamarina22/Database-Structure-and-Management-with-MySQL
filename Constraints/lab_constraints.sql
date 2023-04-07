--PREP
CREATE DATABASE Mangata_Gallo;
USE Mangata_Gallo; 
--TASKS
-- Task 1: Create the Clients table with the following columns and constraints.

--     ClientID: INT, NOT NULL and PRIMARY KEY

--     FullName: VARCHAR(100) NOT NULL

--     PhoneNumber: INT, NOT NULL and UNIQUE

CREATE TABLE
    Clients (
        CLientID INT NOT NULL PRIMARY KEY,
        FullName VARCHAR(100) NOT NULL,
        PhoneNumber INT NOT NULL UNIQUE
    );

SHOW COLUMNS FROM Clients;

-- Task 2: Create the Items table with the following attributes and constraints:

--     ItemID: INT, NOT NULL and PRIMARY KEY

--     ItemName: VARCHAR(100) and NOT NULL

--     Price: Decimal(5,2) and NOT NULL

CREATE TABLE
    Items (
        ItemID INT NOT NULL PRIMARY KEY,
        ItemName VARCHAR(100) NOT NULL,
        Price DECIMAL(5, 2) NOT NULL
    );
SHOW COLUMNS FROM Items;
-- Task 3: Create the Orders table with the following constraints.

--     OrderID: INT, NOT NULL and PRIMARY KEY

--     ClientID: INT, NOT NULL and FOREIGN KEY

--     ItemID: INT, NOT NULL and FOREIGN KEY

--     Quantity: INT, NOT NULL and maximum allowed items in each order 3 only

--     COST Decimal(6,2) and NOT NULL
CREATE TABLE
    Orders (
        OrderID INT NOT NULL PRIMARY KEY,
        ClientID INT NOT NULL,
        ItemID INT NOT NULL,
        Quantity INT NOT NULL ,
        Cost DECIMAL(6, 2) NOT NULL,
        FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
        FOREIGN KEY (ItemID) REFERENCES Items(ItemID), 
        CHECK (Quantity <= 3)
    );
SHOW COLUMNS FROM Orders;
DROP TABLE Orders;