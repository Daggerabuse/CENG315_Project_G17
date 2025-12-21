CREATE TABLE STUDENT_BILLING (
    TransactionID NUMBER,
    StudentID NUMBER NOT NULL,
    BillingType VARCHAR2(20) NOT NULL -- e.g., 'Room Rent', 'Dining'
);
