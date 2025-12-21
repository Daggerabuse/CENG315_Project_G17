-- Checks if the room is available
CREATE OR REPLACE TRIGGER trg_room_assignment_validator
BEFORE INSERT OR UPDATE OF RoomID, AssignmentStatus ON ROOM_ASSIGNMENT
FOR EACH ROW
DECLARE
    v_curr NUMBER;
    v_max  NUMBER;
BEGIN
    -- Only check capacity if the student is currently occupying the room
    IF :NEW.AssignmentStatus = 'Current' THEN
        -- Check capacity if it's a new assignment or the student is moving to a different room
        IF INSERTING OR (:NEW.RoomID <> NVL(:OLD.RoomID, -1)) THEN
            SELECT CurrentCapacity, MaxCapacity 
            INTO v_curr, v_max
            FROM ROOM 
            WHERE RoomID = :NEW.RoomID;

            IF v_curr >= v_max THEN
                RAISE_APPLICATION_ERROR(-20001, 'Capacity Error: Room ' || :NEW.RoomID || ' is full.');
            END IF;
        END IF;
    END IF;
END;

-- Handles room capacity and ocuppancy status
CREATE OR REPLACE TRIGGER trg_room_assignment_sync
AFTER INSERT OR UPDATE OF RoomID, AssignmentStatus ON ROOM_ASSIGNMENT
FOR EACH ROW
BEGIN
    -- If the student was in a room and is now leaving or moving
    IF UPDATING AND :OLD.AssignmentStatus = 'Current' THEN
        IF :NEW.AssignmentStatus = 'Past' OR :NEW.RoomID <> :OLD.RoomID THEN
            UPDATE ROOM 
            SET CurrentCapacity = CurrentCapacity - 1,
                OccupancyStatus = 'Available'
            WHERE RoomID = :OLD.RoomID;
        END IF;
    END IF;

    -- If the student is joining a room
    IF :NEW.AssignmentStatus = 'Current' THEN
        IF INSERTING OR (UPDATING AND :NEW.RoomID <> NVL(:OLD.RoomID, -1)) THEN
            UPDATE ROOM 
            SET CurrentCapacity = CurrentCapacity + 1
            WHERE RoomID = :NEW.RoomID;

            UPDATE ROOM 
            SET OccupancyStatus = 'Full'
            WHERE RoomID = :NEW.RoomID 
            AND CurrentCapacity >= MaxCapacity;
        END IF;
    END IF;
END;
