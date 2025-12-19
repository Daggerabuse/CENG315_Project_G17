-- Links specific rooms to billing transactions for eating calculation.
CREATE TABLE MENU_BILLING(
    TransactionID NUMBER,
    MenuID NUMBER NOT NULL,
    PortionBought NUMBER NOT NULL
)