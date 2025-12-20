
CREATE TABLE Staff (
    StaffID NUMBER ,
    FirstName VARCHAR2(50) NOT NULL,
    MiddleName VARCHAR2(50),
    LastName VARCHAR2(50) NOT NULL,
    Role VARCHAR2(50),
    PhoneNumber VARCHAR2(20),
    Salary NUMBER(10, 2),
    HireDate DATE DEFAULT SYSDATE
);
