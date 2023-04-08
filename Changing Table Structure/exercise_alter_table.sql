--PREP
CREATE DATABASE IF NOT EXISTS little_lemon;

USE little_lemon;

CREATE TABLE
    FoodOrders (
        OrderID INT,
        Quantity INT,
        Cost Decimal(4, 2)
    );

CREATE TABLE Customers (CustomerID INT NOT NULL PRIMARY KEY);
SHOW COLUMNS FROM FoodOrders;

DROP DATABASE little_lemon;
--TASKS
-- Task 1: Use the ALTER TABLE statement with MODIFY command to make the OrderID the primary key of the 'FoodOrders' table. 
ALTER TABLE FoodOrders MODIFY OrderID INT PRIMARY KEY;

-- Task 2: Apply the NOT NULL constraint to the quantity and cost columns.
ALTER TABLE
    FoodOrders MODIFY Quantity INT NOT NULL,
    MODIFY Cost DECIMAL(4, 2) NOT NULL;

-- Task 3: Create two new columns, OrderDate with a DATE datatype and CustomerID with an INT datatype. Declare both must as NOT NULL. Declare the CustomerID as a foreign key in the FoodOrders table to reference the CustomerID column existing in the Customers table.
ALTER TABLE FoodOrders
ADD
    COLUMN OrderDate DATE NOT NULL,
ADD
    COLUMN CistomerID INT NOT NULL REFERENCES Customers (CustomerID);

-- Task 4: Use the DROP command with ALTER statement to delete the OrderDate column from the 'FoodOrder' table. 
ALTER TABLE FoodOrders DROP COLUMN OrderDate;
CREATE TABLE OrderStatus (Order_Status VARCHAR(10));

-- Task 5: Use the CHANGE command with ALTER statement to rename the column Order_Status in the OrderStatus table to DeliveryStatus. 
ALTER TABLE OrderStatus CHANGE COLUMN Order_Status DeliveryStatus VARCHAR(10); 

-- Task 6: Use the RENAME command with ALTER statement to change the table name from OrderStatus to OrderDeliveryStatus.
ALTER TABLE OrderStatus RENAME TO OrderDeliveryStatus;
SHOW COLUMNS FROM OrderDeliveryStatus;