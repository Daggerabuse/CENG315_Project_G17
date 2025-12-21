CREATE TABLE SUPPLY (
    SupplyID INT PRIMARY KEY,
    SupplyName VARCHAR(100) NOT NULL,
    StockAmount DECIMAL(10, 2) NOT NULL,
    Unit VARCHAR(20) NOT NULL,           
    PricePerUnit DECIMAL(10, 2) NOT NULL 
);
