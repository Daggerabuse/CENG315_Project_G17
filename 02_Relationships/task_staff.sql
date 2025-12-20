-- For Many-to-Many relationship between TASK and STAFF
CREATE TABLE TASK_STAFF (
    TaskID  NUMBER,
    StaffID NUMBER,
    AssignedDate DATE DEFAULT SYSDATE,
);