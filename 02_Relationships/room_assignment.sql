-- Tracks which student is assigned to which room and on what date
CREATE TABLE ROOM_ASSIGNMENT (
    StudentID NUMBER,
    RoomID NUMBER,
    AssignmentDate DATE,
    AssignmentStatus VARCHAR2(20)
);

