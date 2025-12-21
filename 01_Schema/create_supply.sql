CREATE TABLE SUPPLY (
    SupplyID      NUMBER,
    SupplyName    VARCHAR2(100) NOT NULL,
    StockAmount   NUMBER DEFAULT 0,
    Unit          VARCHAR2(20),
    PricePerUnit  NUMBER(10,2)
);