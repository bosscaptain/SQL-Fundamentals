CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);

CREATE OR REPLACE TRIGGER check_marks
BEFORE INSERT OR UPDATE ON Students
FOR EACH ROW
BEGIN
    IF :NEW.marks < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Marks cannot be negative');
    END IF;
/*    
IF :NEW.marks > 100 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Marks cannot exceed 100');
    END IF;
*/
END;
/
