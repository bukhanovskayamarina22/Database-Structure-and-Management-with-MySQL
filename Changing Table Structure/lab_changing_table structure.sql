--PREP
CREATE DATABASE Mangata_Gallo;
USE Mangata_Gallo;

--TASKS
-- Task 1

-- Write a SQL statement that creates the Staff table with the following columns.

--     StaffID: INT

--     FullName: VARCHAR(100)

--     PhoneNumber: VARCHAR(10)

CREATE TABLE
    Staff (
        StaffID INT,
        FullName VARCHAR(100),
        PhoneNumber VARCHAR(10)
    );
DROP TABLE Staff;
-- Task 2

-- Write a SQL statement to apply the following constraints to the Staff table:

--     StaffID: INT NOT NULL and PRIMARY KEY

--     FullName: VARCHAR(100) and NOT NULL

--     PhoneNumber: INT NOT NULL

ALTER TABLE Staff ADD PRIMARY KEY (StaffID),
     MODIFY StaffID INT NOT NULL,
     MODIFY FullName VARCHAR(100) NOT NULL,
     MODIFY PhoneNumber INT NOT NULL;

-- Task 3

-- Write a SQL statement that adds a new column called 'Role' to the Staff table with the following constraints:

--     Role: VARCHAR(50) and NOT NULL

ALTER TABLE Staff ADD COLUMN Role VARCHAR(50) NOT NULL;

-- Task 4

-- Write a SQL statement that drops the Phone Number column from the 'Staff' table.

ALTER TABLE Staff DROP COLUMN PhoneNumber;
SHOW COLUMNS FROM Staff;