-- Exercise 04 - b
-- Municipalities of Norte de Santander whose name starts with the word "San"
/*
SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.department_code = '54'
  AND T1.municipality_name LIKE 'San %'
ORDER BY T1.municipality_name ASC;

coffee_coop_db=# SELECT
coffee_coop_db-#     T1.municipality_code AS municipality_code,
coffee_coop_db-#     T1.municipality_name AS municipality
coffee_coop_db-# FROM geo.municipalities AS T1
coffee_coop_db-# WHERE T1.department_code = '54'
coffee_coop_db-#   AND T1.municipality_name LIKE 'San %'
coffee_coop_db-# ORDER BY T1.municipality_name ASC;
 municipality_code | municipality
-------------------+--------------
 54670             | San Calixto
 54673             | San Cayetano
(2 filas)

*/