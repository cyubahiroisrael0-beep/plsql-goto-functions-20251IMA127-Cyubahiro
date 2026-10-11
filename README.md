# Individual Assignment III — PL/SQL GOTO Statements and Functions

**Student:** Cyubahiro Israel  
**Student ID:** 20251IMA127  
**Course:** Database Development with PL/SQL (INSY 8311)  
**Instructor:** Eric Maniraguha  
**Assignment:** Individual Assignment III — PL/SQL GOTO Statements and Functions

## Overview

This repository contains the practical work for:
- PL/SQL GOTO statements
- Stored functions
- Exception handling
- Functions used in SQL
- Combined payroll validation

## Repository Structure

```text
plsql-goto-functions-20251IMA127-Cyubahiro/
├── README.md
├── .gitignore
├── 00_setup/
│   └── create_tables.sql
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
└── docs/
    └── REFLECTION.md
```

## How to Run

1. Open Oracle SQL Developer.
2. Connect to the Oracle database.
3. Run `00_setup/create_tables.sql`.
4. Run the files in `02_functions/`.
5. Run the programs in `01_goto/`.
6. Run the test files in `03_tests/`.
7. Check the output in the DBMS Output window.
8. Capture the required screenshots and save them in `screenshots/`.

## Important

Run the setup script before running the function and payroll examples because the functions depend on the tables created there.

## Student Information

- **Name:** Cyubahiro Israel
- **ID:** 20251IMA127
