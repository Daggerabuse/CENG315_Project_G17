-- Represents a dormitory resident
CREATE TABLE STUDENT (
    StudentID NUMBER, 
    TCID NUMBER(11, 0) UNIQUE NOT NULL,
    FirstName VARCHAR2(20) NOT NULL,
    MiddleName VARCHAR2(20) NOT NULL,
    LastName VARCHAR2(20) NOT NULL,
    Address VARCHAR2(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Age NUMBER(3, 0) GENERATED ALWAYS AS (TRUNC(MONTHS_BETWEEN(SYSDATE, DateOfBirth) / 12)),
    RegistrationDate DATE NOT NULL
);

CREATE TABLE Student_PhoneNumber (
    StudentID NUMBER,
    PhoneNumber VARCHAR2(15)

    -- TODO phonenumber için constraint gerekli mi? biraz karışık
    -- CHECK (REGEXP_LIKE(PhoneNumber, '^\+?[0-9\-\s]+$'))
);
