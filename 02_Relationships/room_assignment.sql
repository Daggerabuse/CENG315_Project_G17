-- Tracks which student is assigned to which room and on what date
CREATE TABLE ROOM_ASSIGNMENT (
    StudentID NUMBER,
    RoomID NUMBER,
    AssignmentDate DATE,
    AssingmentStatus VARCHAR2(20)
);
