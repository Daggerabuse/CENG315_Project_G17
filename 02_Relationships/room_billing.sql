-- Links specific rooms to billing transactions for rent calculation.
CREATE TABLE ROOM_BILLING(
    TransactionID NUMBER,
    RoomID NUMBER NOT NULL,
    MonthsToStay NUMBER NOT NULL

)