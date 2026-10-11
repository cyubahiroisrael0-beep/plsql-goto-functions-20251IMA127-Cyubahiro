-- B3 — Tax Calculator
-- Simple progressive tax calculation for demonstration.

CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_annual_salary IN NUMBER
) RETURN NUMBER
IS
    v_tax NUMBER := 0;
BEGIN
    IF p_annual_salary IS NULL OR p_annual_salary < 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Annual salary must be zero or greater.');
    END IF;

    IF p_annual_salary <= 1800000 THEN
        v_tax := 0;
    ELSIF p_annual_salary <= 3000000 THEN
        v_tax := (p_annual_salary - 1800000) * 0.20;
    ELSE
        v_tax := (1200000 * 0.20)
                 + (p_annual_salary - 3000000) * 0.30;
    END IF;

    RETURN v_tax;
END;
/
