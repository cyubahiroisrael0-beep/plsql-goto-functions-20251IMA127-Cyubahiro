-- B5 — Functions in SQL
-- Demonstrates stored functions being called from a SELECT statement.

SET SERVEROUTPUT ON;

SELECT
    employee_id,
    first_name || ' ' || last_name AS employee_name,
    monthly_salary,
    fn_annual_salary(monthly_salary) AS annual_salary,
    fn_years_of_service(hire_date) AS years_of_service,
    fn_calculate_tax(fn_annual_salary(monthly_salary)) AS annual_tax,
    fn_dept_name(department_id) AS department_name
FROM employees
ORDER BY employee_id;
