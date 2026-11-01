-- Exercise 04 - c
-- Municipalities nationwide whose name contains "Pamplona" (case-insensitive)
/*
SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality,
    T1.department_code   AS department_code
FROM geo.municipalities AS T1
WHERE T1.municipality_name ILIKE '%pamplona%'
ORDER BY T1.municipality_name ASC;

coffee_coop_db=# SELECT
coffee_coop_db-#     T1.municipality_code AS municipality_code,
coffee_coop_db-#     T1.municipality_name AS municipality,
coffee_coop_db-#     T1.department_code   AS department_code
coffee_coop_db-# FROM geo.municipalities AS T1
coffee_coop_db-# WHERE T1.municipality_name ILIKE '%pamplona%'
coffee_coop_db-# ORDER BY T1.municipality_name ASC;
 municipality_code | municipality | department_code
-------------------+--------------+-----------------
 54518             | Pamplona     | 54
(1 fila)


*/