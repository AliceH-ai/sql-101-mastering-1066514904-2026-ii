/*
coffee_coop_db=# SELECT
coffee_coop_db-#     T1.delivery_id     AS delivery,
coffee_coop_db-#     T1.gross_weight_kg AS gross_weight_kg,
coffee_coop_db-#     T1.bag_count       AS bag_count,
coffee_coop_db-#     T1.gross_weight_kg / T1.bag_count AS avg_kg_per_bag
coffee_coop_db-# FROM buy.deliveries AS T1
coffee_coop_db-# WHERE T1.delivery_id LIKE 'DLV-20260930-%'
coffee_coop_db-#   AND T1.status = 'rejected';
      delivery       | gross_weight_kg | bag_count |   avg_kg_per_bag
---------------------+-----------------+-----------+---------------------
 DLV-20260930-000165 |          348.59 |         6 | 58.0983333333333333
 DLV-20260930-000006 |          139.81 |         3 | 46.6033333333333333
 DLV-20260930-000070 |          147.13 |         3 | 49.0433333333333333
 DLV-20260930-000253 |          253.15 |         5 | 50.6300000000000000
 DLV-20260930-000083 |           89.95 |         2 | 44.9750000000000000
 DLV-20260930-000109 |          311.88 |         5 | 62.3760000000000000
 DLV-20260930-000147 |           66.42 |         1 | 66.4200000000000000
 DLV-20260930-000214 |          177.63 |         3 | 59.2100000000000000
 DLV-20260930-000223 |          338.32 |         7 | 48.3314285714285714