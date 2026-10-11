-- A3 — Illegal GOTO and Fix
-- The first example intentionally demonstrates an illegal GOTO.
-- Uncomment the first block to see the compile-time error.
-- The second block is the corrected version.

SET SERVEROUTPUT ON;

-- ILLEGAL EXAMPLE:
-- A GOTO cannot jump into the scope of a BEGIN...END block.
--
-- DECLARE
-- BEGIN
--     GOTO inside_block;
--     BEGIN
--         <<inside_block>>
--         DBMS_OUTPUT.PUT_LINE('This jump is illegal.');
--     END;
-- END;
-- /

-- FIXED EXAMPLE:
DECLARE
BEGIN
    GOTO valid_label;

    NULL;

    <<valid_label>>
    DBMS_OUTPUT.PUT_LINE('The GOTO now jumps to a valid label in the same block.');
END;
/
