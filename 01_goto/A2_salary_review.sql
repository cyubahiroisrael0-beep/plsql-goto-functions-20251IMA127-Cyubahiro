-- A2 — Salary Review
-- Uses GOTO to classify an employee's monthly salary.

SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 650000;
BEGIN
    IF v_salary < 400000 THEN
        GOTO low_salary;
    ELSIF v_salary <= 700000 THEN
        GOTO normal_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' RWF - LOW salary.');
    GOTO finish;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' RWF - NORMAL salary.');
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' RWF - HIGH salary.');

    <<finish>>
    NULL;
END;
/
