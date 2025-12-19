-- Represents financial records including student payments (Income) 
-- and staff salaries (Expense).
CREATE TABLE TRANSACTION (
    TransactionID NUMBER, 
    TransactionDate DATE NOT NULL,
    Amount NUMBER(10,  2) NOT NULL,
    FlowType VARCHAR2(20) NOT NULL
);