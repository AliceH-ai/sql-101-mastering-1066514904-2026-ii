/*
coffee_coop_db=#
coffee_coop_db=# SELECT
coffee_coop_db-#     MIN(T1.cup_score)           AS min_cup_score,
coffee_coop_db-#     MAX(T1.cup_score)           AS max_cup_score,
coffee_coop_db-#     ROUND(AVG(T1.cup_score), 2) AS avg_cup_score,
coffee_coop_db-#     MIN(T1.moisture_pct)        AS min_moisture_pct,
coffee_coop_db-#     MAX(T1.moisture_pct)        AS max_moisture_pct
coffee_coop_db-# FROM buy.quality_analyses AS T1
coffee_coop_db-# WHERE T1.delivery_id LIKE 'DLV-20260930-%';
 min_cup_score | max_cup_score | avg_cup_score | min_moisture_pct | max_moisture_pct
---------------+---------------+---------------+------------------+------------------
         77.17 |         87.28 |         82.91 |             8.39 |            17.68
(1 fila)