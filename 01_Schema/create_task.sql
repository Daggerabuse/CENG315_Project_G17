-- Stores information about tasks on the dormitory
CREATE TABLE Task (
    TaskID NUMBER ,
    TaskType VARCHAR2(50),
    ScheduledDate DATE DEFAULT SYSDATE,
    CompletionDate DATE,
    Description VARCHAR2(255),
    StaffID NUMBER, -- Many-to-One relationship with Staff
    RoomID NUMBER-- Many-to-One relationship with Room
);