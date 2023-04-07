--PREP
CREATE DATABASE IF NOT EXISTS Mangata_Gallo;
USE Mangata_Gallo;

--TASKS
-- Task 1:  Create the Staff table with the following PRIMARY KEY and NOT NULL constraints:

--     Staff ID should be INT, NOT NULL and PRIMARY KEY

--     PhoneNumber should be INT, NOT NULL and UNIQUE 

--     FullName: VARCHAR(100) NOT NULL.

CREATE TABLE
    Staff (
        StaffID INT NOT NULL PRIMARY KEY,
        PhoneNumber INT NOT NULL UNIQUE,
        FullName VARCHAR(100) NOT NULL
    );
-- Task 2: Create the 'ContractInfo' table with the following key and domain constraints:

--     Contract ID should be INT, NOT NULL and PRIMARY KEY

--     StaffID should be INT, NOT NULL. 

--     Salary should be DECIMAL (7,2), NOT NULL.

--     Location should be VARCHAR (50) NOT NULL with DEFAULT = "Texas". 

--     StaffType should be VARCHAR (20) NOT NULL and should accept a "Junior" or a "Senior" value.


CREATE TABLE
    ContractInfo (
        ContractID INT NOT NULL PRIMARY KEY,
        StaffID INT NOT NULL,
        Salary DECIMAL(7, 2) NOT NULL,
        Location VARCHAR(50) NOT NULL DEFAULT 'Texas',
        StaffType VARCHAR(20) NOT NULL,
        CHECK (
            StaffType IN ('Junior', 'Senior')
        )
    );

SHOW COLUMNS FROM ContractInfo;

-- Task 3: Create a foreign key that links the Staff table with the ContractInfo table. In this example, you need to apply the referential integrity rule as follows:

--     Link each member of staff in the Staff table to a specific contract in the Contract Info table. 

--     Each staff ID existing in the 'Contract Info' table is expected to exist as well in the Staff table. 

--     The staff ID in the 'Contract Info' table should be defined as a foreign key to reference the Staff ID in the Staff table.

ALTER TABLE ContractInfo ADD FOREIGN KEY (StaffID) REFERENCES Staff (StaffID);