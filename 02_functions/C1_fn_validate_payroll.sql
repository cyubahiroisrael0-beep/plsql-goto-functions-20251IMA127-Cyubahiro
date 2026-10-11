-- C1 — Payroll Validator
-- Validates a monthly payroll amount and returns a status message.

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_monthly_salary IN NUMBER
) RETURN VARCHAR2
IS
BEGIN
    IF p_monthly_salary IS NULL THEN
        RETURN 'INVALID: salary is NULL';
    ELSIF p_monthly_salary <= 0 THEN
        RETURN 'INVALID: salary must be greater than 0';
    ELSIF p_monthly_salary < 100000 THEN
        RETURN 'WARNING: salary is below 100,000 RWF';
    ELSE
        RETURN 'VALID PAYROLL';
    END IF;
END;
/
