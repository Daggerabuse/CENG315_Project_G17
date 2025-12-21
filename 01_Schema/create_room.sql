-- Represents dormitory rooms
-- RoomType: Normal Room, Accessible Room
-- OccupancyStatus: Full, Available
CREATE TABLE ROOM (
    RoomID NUMBER,
    Block VARCHAR2(5) NOT NULL, 
    FloorNumber NUMBER(2) NOT NULL,
    MaxCapacity NUMBER(2) NOT NULL,
    CurrentCapacity NUMBER(2) NOT NULL,
    OccupancyStatus VARCHAR(20) NOT NULL,
    RoomType VARCHAR2(20) NOT NULL,
    Price NUMBER(10, 2) NOT NULL
);


