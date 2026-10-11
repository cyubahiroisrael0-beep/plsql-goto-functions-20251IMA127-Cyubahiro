-- B2 — Years of Service Function
-- Returns completed years of service from hire date.

CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date IN DATE
) RETURN NUMBER
IS
    v_years NUMBER;
BEGIN
    IF p_hire_date IS NULL THEN
        RAISE_APPLICATION_ERROR(-20002, 'Hire date cannot be NULL.');
    END IF;

    IF p_hire_date > SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20003, 'Hire date cannot be in the future.');
    END IF;

    v_years := TRUNC(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
    RETURN v_years;
END;
/
