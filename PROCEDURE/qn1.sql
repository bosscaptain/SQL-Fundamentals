/*reate a table student with attributes roll number, marks, and mobile number. 
Write a PL/SQL procedure to increase the marks of all students by 5% and display the updated table.*/

CREATE TABLE student(
    rollno NUMBER PRIMARY KEY,
    marks NUMBER,
    mobileno NUMBER
);
INSERT INTO student VALUES(1,50,9876543210);
INSERT INTO student VALUES(2,55,9752135801);
SELECT * FROM student;

CREATE OR REPLACE PROCEDURE pr1
IS
BEGIN
    UPDATE student
    SET marks= marks+(marks*5/100);
    DBMS_OUTPUT.PUT_LINE('Marks updated successfully');
END;
/
exec pr1;
SELECT * FROM STUDENT;
