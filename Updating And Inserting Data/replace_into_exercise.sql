--PREP
CREATE DATABASE IF NOT EXISTS little_lemon;

USE little_lemon;

CREATE TABLE
    Starters(
        StarterName VARCHAR(100) NOT NULL PRIMARY KEY,
        Cost Decimal(3, 2),
        StaterType VARCHAR(100) DEFAULT 'Mediterranean'
    );
-- Tasks

-- Task 1: Use the REPLACE statement to insert a new data record with the following details. 

--     The ‘StarterName’ = Cheese bread

--     The ‘Cost’ = 9.50 and 

--     The ‘StarterType’ = Indian 

REPLACE INTO Starters SET StarterName = 'Cheese bread', Cost = 9.50, StaterType = 'Indian'; 

-- Task 2: Use the REPLACE statement to change the cost of the Cheese bread from $9.50 to $9.75.
REPLACE INTO Starters SET StarterName = 'Cheese bread', Cost = 9.75, StaterType = 'Indian'; 