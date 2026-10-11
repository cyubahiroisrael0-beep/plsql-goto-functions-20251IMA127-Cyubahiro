-- Individual Assignment III
-- Student: Cyubahiro Israel
-- ID: 20251IMA127

SET SERVEROUTPUT ON;

-- Clean up objects if they already exist
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

CREATE TABLE departments (
    department_id   NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);

CREATE TABLE employees (
    employee_id   NUMBER PRIMARY KEY,
    first_name    VARCHAR2(50) NOT NULL,
    last_name     VARCHAR2(50) NOT NULL,
    department_id NUMBER,
    monthly_salary NUMBER(12,2) NOT NULL,
    hire_date     DATE NOT NULL,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (10, 'Information Technology');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'Human Resources');
INSERT INTO departments VALUES (40, 'Marketing');

INSERT INTO employees VALUES
(101, 'Jean', 'Mugisha', 10, 450000, DATE '2022-01-15');

INSERT INTO employees VALUES
(102, 'Aline', 'Uwase', 20, 650000, DATE '2020-06-10');

INSERT INTO employees VALUES
(103, 'Eric', 'Niyonzima', 30, 350000, DATE '2024-02-20');

INSERT INTO employees VALUES
(104, 'Diane', 'Mukamana', 40, 800000, DATE '2019-09-05');

COMMIT;

PROMPT Setup completed successfully.
SELECT * FROM departments ORDER BY department_id;
SELECT * FROM employees ORDER BY employee_id;
