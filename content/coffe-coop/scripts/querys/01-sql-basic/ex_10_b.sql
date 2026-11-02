/*
coffee_coop_db=# SELECT
coffee_coop_db-#     T1.settlement_id         AS settlement,       -- ?
coffee_coop_db-#     T1.delivery_id           AS delivery,         -- ?
coffee_coop_db-#     T1.net_weight_kg         AS net_weight_kg,
coffee_coop_db-#     T1.price_per_kg_applied  AS price_per_kg,
coffee_coop_db-#     T1.gross_amount          AS gross_cop,
coffee_coop_db-#     T1.deductions_amount     AS deductions_cop,   -- ?
coffee_coop_db-#     T1.net_amount            AS net_cop
coffee_coop_db-# FROM pay.settlements AS T1
coffee_coop_db-# WHERE T1.delivery_id LIKE 'DLV-20260930-%'        -- ?
coffee_coop_db-#   AND T1.status = 'pending'                       -- ?
coffee_coop_db-# ORDER BY T1.net_amount DESC;
     settlement      |      delivery       | net_weight_kg | price_per_kg | gross_cop  | deductions_cop |  net_cop
---------------------+---------------------+---------------+--------------+------------+----------------+------------
 STL-20261001-000040 | DLV-20260930-000256 |        278.85 |     21857.00 | 6094824.45 |           0.00 | 6094824.45
 STL-20261001-000057 | DLV-20260930-000105 |        272.29 |     22335.00 | 6081597.15 |       30583.21 | 6051013.94
 STL-20261003-000007 | DLV-20260930-000116 |        239.84 |     22306.00 | 5349871.04 |           0.00 | 5349871.04
 STL-20261002-000004 | DLV-20260930-000010 |        265.10 |     21358.00 | 5662005.80 |      314758.77 | 5347247.03
 STL-20260930-000069 | DLV-20260930-000204 |        231.21 |     22692.00 | 5246617.32 |      232910.66 | 5013706.66
 STL-20261003-000001 | DLV-20260930-000023 |        219.26 |     22645.00 | 4965142.70 |           0.00 | 4965142.70
 STL-20261002-000042 | DLV-20260930-000152 |        212.94 |     22190.00 | 4725138.60 |       31959.75 | 4693178.85
 STL-20261003-000012 | DLV-20260930-000286 |        191.75 |     21569.00 | 4135855.75 |           0.00 | 4135855.75
 STL-20261002-000033 | DLV-20260930-000189 |        182.37 |     22064.00 | 4023811.68 |           0.00 | 4023811.68
 STL-20261001-000033 | DLV-20260930-000179 |        187.47 |     21526.00 | 4035479.22 |       56813.94 | 3978665.28
 STL-20261002-000032 | DLV-20260930-000141 |        175.61 |     22080.00 | 3877468.80 |       42072.90 | 3835395.90
 STL-20261001-000018 | DLV-20260930-000244 |        162.96 |     21836.00 | 3558394.56 |           0.00 | 3558394.56
 STL-20260930-000061 | DLV-20260930-000239 |        139.70 |     21923.00 | 3062643.10 |           0.00 | 3062-- Más  --