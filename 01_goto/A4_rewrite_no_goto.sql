-- A4 — Rewrite Without GOTO
-- The same decision from A1 is written using IF/ELSIF/ELSE.

SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := -8;
BEGIN
    IF v_number > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is POSITIVE.');
    ELSIF v_number < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is NEGATIVE.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is ZERO.');
    END IF;
END;
/
