# Reflection — Individual Assignment III

**Student:** Cyubahiro Israel  
**Student ID:** 20251IMA127

## 1. What I learned about GOTO

The PL/SQL `GOTO` statement transfers program execution to a labelled statement in the same PL/SQL block or an allowed enclosing scope. A label is written using the syntax `<<label_name>>`.

I learned that GOTO can be used to control the flow of a program, but it must follow PL/SQL's scope rules. A GOTO cannot jump into a block in a way that violates the scope of declarations or executable statements.

## 2. Why the illegal GOTO is a problem

An illegal GOTO causes a compilation error because PL/SQL does not allow arbitrary jumps into a restricted scope. The corrected example places the label in a valid location.

## 3. GOTO versus structured programming

Although GOTO can solve some control-flow problems, `IF`, `ELSIF`, `ELSE`, loops, and other structured constructs usually make code easier to read and maintain. The A4 example shows how the number classifier can be rewritten without GOTO.

## 4. What I learned about functions

A stored function is a named PL/SQL program unit that returns one value. It can accept parameters, perform calculations or queries, handle exceptions, and return a result.

The assignment demonstrates functions for annual salary, years of service, tax calculation, department lookup, and payroll validation.

## 5. Functions in SQL

Stored functions can be called from SQL statements when their implementation is compatible with SQL execution. The B5 query demonstrates calling several functions directly in a SELECT statement.

## 6. Exception handling

Exception handling allows a PL/SQL program to respond to errors instead of terminating unexpectedly. Examples in this assignment include handling `NO_DATA_FOUND` and validating invalid input with `RAISE_APPLICATION_ERROR`.

## 7. Personal conclusion

This practical assignment helped me connect PL/SQL programming concepts with database operations. I practiced control flow, functions, validation, exception handling, and using stored functions inside SQL queries. I also learned the importance of testing each program and organizing database work in a clear project structure.
