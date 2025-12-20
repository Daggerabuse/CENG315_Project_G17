-- Restricts flow types to either 'Income' (dorm revenue) or 'Expense' (dorm costs).
ALTER TABLE TRANSACTION
ADD CONSTRAINT check_transaction_flow
CHECK (FlowType IN ('Income', 'Expense'));

-- Ensures the staying period is valid an in between of a 1 year period.
ALTER TABLE ROOM_BILLING
ADD CONSTRAINT check_months_stayed 
CHECK (MonthsStayed BETWEEN 1 AND 12);


-- Ensures that the number of portions bought is either 1 or 2 per transaction.
ALTER TABLE MENU_TRANSACTION 
ADD CONSTRAINT chk_portion_limit 
CHECK (PortionBought BETWEEN 1 AND 2);



-- Ensures that the payment month is valid
ALTER TABLE STAFF_TRANSACTION 
ADD CONSTRAINT chk_payment_month 
CHECK (PaymentMonth IN ('January', 'February', 'March', 'April', 'May', 'June', 
                        'July', 'August', 'September', 'October', 'November', 'December'));


ALTER TABLE STUDENT_TRANSACTION
ADD CONSTRAINT chk_payment_method 
CHECK (PaymentMethod IN ('Cash', 'Credit Card','Bank Transfer'))

-- Constraints for STAFF and TASK Table

-- Ensure the role is one of the predefined types
ALTER TABLE Staff
ADD CONSTRAINT chk_staff_role 
CHECK (Role IN ('Cleaner', 'Maintenance', 'Security', 'Manager', 'Kitchen Staff'));

-- Ensure salary is a positive value
ALTER TABLE Staff
ADD CONSTRAINT chk_staff_salary 
CHECK (Salary > 0);

-- Ensure task type is valid
ALTER TABLE Task
ADD CONSTRAINT chk_task_type 
CHECK (TaskType IN ('Cleaning', 'Repair', 'Plumbing', 'Electric', 'Maintenance', 'Kitchen'));


-- Student_PhoneNumber multi value attribute relation

ALTER TABLE Student_PhoneNumber
ADD CONSTRAINT fk_student FOREIGN KEY (StudentID) REFERENCES STUDENT(StudentID);
