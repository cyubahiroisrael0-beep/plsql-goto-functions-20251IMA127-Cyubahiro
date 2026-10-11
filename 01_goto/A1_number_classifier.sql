-- A1 — Number Classifier
-- Classifies a number as POSITIVE, NEGATIVE, or ZERO using GOTO.

SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := 15;
BEGIN
    IF v_number > 0 THEN
        GOTO positive_number;
    ELSIF v_number < 0 THEN
        GOTO negative_number;
    ELSE
        GOTO zero_number;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is POSITIVE.');
    GOTO finish;

    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is NEGATIVE.');
    GOTO finish;

    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('Number is ZERO.');

    <<finish>>
    NULL;
END;
/
