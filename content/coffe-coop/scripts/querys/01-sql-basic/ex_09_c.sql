/*coffee_coop_db=# SELECT
coffee_coop_db-#     T1.analysis_id  AS analysis,
coffee_coop_db-#     T1.delivery_id  AS delivery,
coffee_coop_db-#     T1.defects_pct  AS defects_pct,
coffee_coop_db-#     T1.observations AS observations
coffee_coop_db-# FROM buy.quality_analyses AS T1
coffee_coop_db-# WHERE T1.delivery_id LIKE 'DLV-20260930-%'
coffee_coop_db-#   AND NOT T1.is_accepted
coffee_coop_db-#   AND T1.observations IS NOT NULL
coffee_coop_db-# ORDER BY T1.defects_pct DESC;
      analysis      |      delivery       | defects_pct |                observations
--------------------+---------------------+-------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 |       19.54 | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 |       17.29 | Muestra tomada por duplicado.
 QA-20260930-000119 | DLV-20260930-000253 |       15.59 | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 |       13.21 | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 |       12.94 | Caf├® sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 |        9.75 | Caf├® con humedad alta, requiere m├ís secado.
 QA-20260930-000018 | DLV-20260930-000006 |        7.88 | Caf├® con humedad alta, requiere m├ís secado.
(7 filas)


