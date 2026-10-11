-- C1 — Payroll Validator Tests

SET SERVEROUTPUT ON;

SELECT fn_validate_payroll(500000) AS result FROM dual;
SELECT fn_validate_payroll(50000) AS result FROM dual;
SELECT fn_validate_payroll(0) AS result FROM dual;
SELECT fn_validate_payroll(NULL) AS result FROM dual;

DECLARE
    v_result VARCHAR2(100);
BEGIN
    v_result := fn_validate_payroll(650000);
    DBMS_OUTPUT.PUT_LINE('C1 test: ' || v_result);
END;
/
