-- Represents dormitory rooms
-- RoomType: Normal Room, Accessible Room
-- OccupancyStatus: Full, Available
CREATE TABLE ROOM (
    RoomID NUMBER,
    Block VARCHAR2(1) NOT NULL, 
    Floor NUMBER(2) NOT NULL, -- floor ismi sorun olur mu acaba
    MaxCapacity NUMBER(2) NOT NULL,
    CurrentCapacity NUMBER(2) NOT NULL,
    OccupancyStatus VARCHAR(20) NOT NULL,
    RoomType VARCHAR2(20) NOT NULL,
    Price NUMBER(10, 2) NOT NULL
);
