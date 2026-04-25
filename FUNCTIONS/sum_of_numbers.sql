CREATE OR REPLACE FUNCTION sumnum(n IN NUMBER)
RETURN NUMBER
IS
    i NUMBER:=1;
    S NUMBER:=0;
BEGIN
        while i <= n LOOP
            S:=S+i;
            i:=i+1;
        END LOOP;

        RETURN s;
 END;
    /
    DECLARE 
        n NUMBER:=&n;
        result NUMBER ;

        
    BEGIN
            result := sumnum(n);
            DBMS_OUTPUT.PUT_Line('Sum of numbers= '|| result);
    END;
    /
