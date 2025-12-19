-- This table records financial interactions specifically related to staff, such as salary payments.
CREATE TABLE STAFF_TRANSACTION (
    TransactionID NUMBER,
    StaffID NUMBER NOT NULL,
    PaymentMonth VARCHAR2(20) NOT NULL
);