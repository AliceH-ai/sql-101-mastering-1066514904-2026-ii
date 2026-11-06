 -- Exercise 09 - c
-- Non-accepted quality analyses from 2026-09-30 that have observations (IS NOT NULL), sorted by defect percentage descending
 
 
 SELECT
     T1.analysis_id  AS analysis,          
     T1.delivery_id  AS delivery,
     T1.moisture_pct AS moisture_pct,      
     T1.analyst_name AS analyst_name,      
     T1.observations AS observations       
 FROM buy.quality_analyses AS T1
 WHERE T1.delivery_id LIKE 'DLV-20260930-%'
   AND T1.moisture_pct NOT BETWEEN 10 AND 12
 ORDER BY T1.moisture_pct DESC;
/*
      analysis      |      delivery       | moisture_pct |    analyst_name    |                          observations
--------------------+---------------------+--------------+--------------------+-----------------------------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 | Carolina Rodr├¡guez | Olor a fermento en la muestra.
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 | Nicol├ís Serrano    | Caf├® con humedad alta, requiere m├ís secado.
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 | Germ├ín Pe├▒a        | Muestra tomada por duplicado.
 QA-20260930-000025 | DLV-20260930-000083 |        16.00 | Germ├ín Pe├▒a        |
 QA-20260930-000069 | DLV-20260930-000109 |        15.30 | Efra├¡n Betancur    |
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 | Erika Restrepo     | Olor a fermento en la muestra. QA-20260930-000022 | DLV-20260930-000070 |        12.95 | Santiago Rojas     | Caf├® con humedad alta, requiere m├ís secado.
 QA-20260930-000134 | DLV-20260930-000236 |        12.48 | Gloria Restrepo    |
 QA-20260930-000094 | DLV-20260930-000227 |        12.43 | Ruth Polan├¡a       |
 QA-20260930-000033 | DLV-20260930-000027 |        12.41 | Sara S├ínchez       |
 QA-20260930-000056 | DLV-20260930-000120 |        12.40 | Alejandra Torres   |
 QA-20260930-000092 | DLV-20260930-000113 |        12.39 | Wilson Galvis      |
 QA-20260930-000082 | DLV-20260930-000111 |        12.38 | Sara S├ínchez       |
 QA-20260930-000121 | DLV-20260930-000200 |        12.38 | Guillermo Acevedo  |
 QA-20260930-000137 | DLV-20260930-000295 |        12.35 | Sara S├ínchez       |
 QA-20260930-000095 | DLV-20260930-000118 |        12.32 | Laura Henao        |
 QA-20260930-000102 | DLV-20260930-000155 |        12.31 | Adriana Losada     |
 QA-20260930-000035 | DLV-20260930-000115 |        12.31 | Santiago Rojas     | Muestra tomada por duplicado.
 QA-20260930-000052 | DLV-20260930-000149 |        12.31 | Efra├¡n Betancur    | Grano uniforme, buen secado.
 QA-20260930-000149 | DLV-20260930-000286 |        12.28 | Germ├ín Pe├▒a        |
 QA-20260930-000013 | DLV-20260930-000038 |        12.28 | Adriana Losada     |
-- Más  --