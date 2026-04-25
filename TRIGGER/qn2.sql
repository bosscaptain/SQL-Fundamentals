--To create a trigger for UPDATE operation and store updated values.


-- Step 1: Create EMP table
CREATE TABLE emp (
empid NUMBER PRIMARY KEY,
name VARCHAR2(20),
salary NUMBER
);

-- Step 2: Insert records
INSERT INTO emp VALUES (1, 'A', 20000);
INSERT INTO emp VALUES (2, 'B', 25000);

-- Step 3: Create log table
CREATE TABLE emp_log (
empid NUMBER,
name VARCHAR2(20),
salary NUMBER
);

-- Step 4: Create AFTER UPDATE trigger
CREATE OR REPLACE TRIGGER trg_update
AFTER UPDATE ON emp
FOR EACH ROW
BEGIN
INSERT INTO emp_log
VALUES(:NEW.empid, :NEW.name, :NEW.salary);
END;
/

-- Step 5: Perform UPDATE
UPDATE emp SET salary = 30000 WHERE empid = 1;

-- Step 6: Display tables
SELECT * FROM emp;
SELECT * FROM emp_log;

