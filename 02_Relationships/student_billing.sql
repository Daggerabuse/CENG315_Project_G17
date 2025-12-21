-- Links students to their specific billing transactions
CREATE TABLE STUDENT_BILLING (
    TransactionID NUMBER,
    StudentID NUMBER NOT NULL,
    BillingType VARCHAR2(20) NOT NULL
);

