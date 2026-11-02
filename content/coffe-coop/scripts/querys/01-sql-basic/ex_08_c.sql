/*coffee_coop_db=#
coffee_coop_db=# SELECT
coffee_coop_db-#     T1.delivery_id     AS delivery,
coffee_coop_db-#     T1.delivered_at    AS received_at,
coffee_coop_db-#     T1.coffee_type     AS coffee_type,
coffee_coop_db-#     T1.gross_weight_kg AS gross_weight_kg
coffee_coop_db-# FROM buy.deliveries AS T1
coffee_coop_db-# WHERE T1.delivery_id LIKE 'DLV-20260930-%'
coffee_coop_db-#   AND T1.coffee_type IN ('wet_parchment', 'cherry')
coffee_coop_db-# ORDER BY T1.gross_weight_kg DESC;
      delivery       |     received_at     |  coffee_type  | gross_weight_kg
---------------------+---------------------+---------------+-----------------
 DLV-20260930-000081 | 2026-09-30 09:17:37 | cherry        |          475.13
 DLV-20260930-000187 | 2026-09-30 12:47:52 | cherry        |          339.30
 DLV-20260930-000105 | 2026-09-30 09:57:09 | wet_parchment |          277.63
 DLV-20260930-000028 | 2026-09-30 07:13:46 | wet_parchment |          258.00
 DLV-20260930-000133 | 2026-09-30 10:51:03 | cherry        |          254.83
 DLV-20260930-000094 | 2026-09-30 09:31:20 | cherry        |          246.96
 DLV-20260930-000129 | 2026-09-30 10:44:39 | wet_parchment |          206.71
 DLV-20260930-000161 | 2026-09-30 12:06:51 | wet_parchment |          197.04
 DLV-20260930-000046 | 2026-09-30 07:30:47 | wet_parchment |          186.73
 DLV-20260930-000248 | 2026-09-30 14:59:13 | cherry        |          159.89
 DLV-20260930-000052 | 2026-09-30 07:43:27 | wet_parchment |          154.42
 DLV-20260930-000260 | 2026-09-30 15:14:37 | cherry        |          149.08
 DLV-20260930-000217 | 2026-09-30 14:02:43 | wet_parchment |          132.86
 DLV-20260930-000237 | 2026-09-30 14:45:02 | wet_parchment |          128.69
 DLV-20260930-000071 | 2026-09-30 08:25:30 | cherry        |          123.86
 DLV-20260930-000003 | 2026-09-30 06:04:40 | wet_parchment |          112.33
 DLV-20260930-000100 | 2026-09-30 09:49:19 | cherry        |          106.62
 DLV-20260930-000019 | 2026-09-30 06:42:39 | wet_parchment |          106.26
 DLV-20260930-000280 | 2026-09-30 16:07:06 | cherry        |           99.14
 DLV-20260930-000297 | 2026-09-30 16:46:11 | cherry        |           98.35
 DLV-20260930-000147 | 2026-09-30 11:17:45 | wet_parchment |           66.42
 DLV-20260930-000037 | 2026-09-30 07:22:30 | wet_parchment |           64.16
(22 filas)
