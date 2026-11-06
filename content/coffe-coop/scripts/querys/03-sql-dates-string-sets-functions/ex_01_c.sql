-- Exercise 01 - c
-- Single row without a table: current timestamp (NOW) and current date (CURRENT_DATE)
SELECT
    NOW()        AS now_ts,
    CURRENT_DATE AS today;

/*
            now_ts            |   today
------------------------------+------------
 2026-11-05 21:52:22.44265-05 | 2026-11-05
(1 fila)