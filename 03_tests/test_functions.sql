-- Tests for B1, B2, B3 and B4

SET SERVEROUTPUT ON;

DECLARE
    v_annual_salary NUMBER;
    v_years NUMBER;
    v_tax NUMBER;
    v_department VARCHAR2(100);
BEGIN
    v_annual_salary := fn_annual_salary(500000);
    DBMS_OUTPUT.PUT_LINE('B1 annual salary: ' || v_annual_salary);

    v_years := fn_years_of_service(DATE '2020-01-01');
    DBMS_OUTPUT.PUT_LINE('B2 years of service: ' || v_years);

    v_tax := fn_calculate_tax(3600000);
    DBMS_OUTPUT.PUT_LINE('B3 tax: ' || v_tax);

    v_department := fn_dept_name(10);
    DBMS_OUTPUT.PUT_LINE('B4 department: ' || v_department);
END;
/

-- Exception handling tests
BEGIN
    DBMS_OUTPUT.PUT_LINE('Testing invalid annual salary...');
    DBMS_OUTPUT.PUT_LINE(fn_annual_salary(-100));
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Expected error: ' || SQLERRM);
END;
/
