-- Exercise 10 - c
-- Settlements from 2026-09-30 without deductions, with a calculated check column (net_weight_kg * price_per_kg_applied) to compare against the generated gross_amount

SELECT
T1.settlement_id         AS settlement,       
T1.net_weight_kg         AS net_weight_kg
T1.price_per_kg_applied  AS price_per_kg,
T1.gross_amount          AS gross_cop,
T1.net_weight_kg * T1.price_per_kg_applied AS check_gross_cop,
T1.deductions_amount     AS deductions_cop    
FROM pay.settlements AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'        
AND T1.deductions_amount = 0;
/*
     settlement      | net_weight_kg | price_per_kg | gross_cop  | check_gross_cop | deductions_cop
---------------------+---------------+--------------+------------+-----------------+----------------
 STL-20261002-000019 |        287.72 |     21454.00 | 6172744.88 |    6172744.8800 |           0.00
 STL-20261001-000006 |        109.68 |     22083.00 | 2422063.44 |    2422063.4400 |           0.00
 STL-20261001-000060 |        251.37 |     21052.00 | 5291841.24 |    5291841.2400 |           0.00
 STL-20261003-000006 |         47.08 |     21627.00 | 1018199.16 |    1018199.1600 |           0.00
 STL-20261002-000018 |        113.45 |     21439.00 | 2432254.55 |    2432254.5500 |           0.00
 STL-20261003-000001 |        219.26 |     22645.00 | 4965142.70 |    4965142.7000 |           0.00
 STL-20261002-000006 |        173.32 |     21155.00 | 3666584.60 |    3666584.6000 |           0.00
 STL-20261001-000058 |        180.33 |     22112.00 | 3987456.96 |    3987456.9600 |           0.00
 STL-20261002-000024 |        228.30 |     21942.00 | 5009358.60 |    5009358.6000 |           0.00
 STL-20260930-000050 |         63.66 |     21964.00 | 1398228.24 |    1398228.2400 |           0.00
 STL-20261002-000003 |         45.15 |     23402.00 | 1056600.30 |    1056600.3000 |           0.00
 STL-20261002-000023 |         79.23 |     21571.00 | 1709070.33 |    1709070.3300 |           0.00
 STL-20261001-000026 |         59.04 |     22451.00 | 1325507.04 |    1325507.0400 |           0.00
 STL-20261001-000049 |        161.31 |     22248.00 | 3588824.88 |    3588824.8800 |           0.00
 STL-20261003-000008 |         49.98 |     21378.00 | 1068472.44 |    1068472.4400 |           0.00
 STL-20261001-000041 |        122.26 |     20814.00 | 2544719.64 |    2544719.6400 |           0.00
 STL-20261002-000040 |        112.74 |     22046.00 | 2485466.04 |    2485466.0400 |           0.00
 STL-20261001-000024 |         38.99 |     22300.00 |  869477.00 |     869477.0000 |           0.00
 STL-20261001-000056 |        101.75 |     21213.00 | 2158422.75 |    2158422.7500 |           0.00
 STL-20261001-000023 |         46.76 |     22110.00 | 1033863.60 |    1033863.6000 |           0.00
 STL-20261002-000034 |        221.09 |     22358.00 | 4943130.22 |    4943130.2200 |           0.00
 STL-20261003-000007 |        239.84 |     22306.00 | 5349871.04 |    5349871.0400 |           0.00
 STL-20261002-000017 |         58.35 |     21382.00 | 1247639.70 |    1247639.7000 |           0.00
 STL-20261001-000011 |        119.46 |     22466.00 | 2683788.36 |    2683788.3600 |           0.00
 STL-20261002-000037 |        236.59 |     21768.00 | 5150091.12 |    5150091.1200 |           0.00
 STL-20261001-000032 |        120.29 |     22037.00 | 2650830.73 |    2650830.7300 |           0.00
 STL-20261002-000041 |        120.60 |     21878.00 | 2638486.80 |    2638486.8000 |           0.00
-- Más  --
/*En la consulta agregué la columna check_gross_cop, que calcula net_weight_kg * price_per_kg_applied, y la comparé con gross_amount. En todas las filas los dos valores son iguales.

Esto pasa porque gross_amount es una columna generada (GENERATED): no se inserta ni se modifica a mano, sino que PostgreSQL la calcula automáticamente cada vez que se guarda una liquidación, usando una fórmula definida al crear la tabla. Esa fórmula es el peso neto multiplicado por el precio aplicado por kilo, la misma operación que escribí en check_gross_cop.

Como ambas columnas usan la misma fórmula y los mismos datos de la fila, el resultado no puede ser distinto. Mi columna no es un cálculo nuevo, es una forma de comprobar que el valor guardado en la base de datos corresponde a lo que dice su definición. Además, como la columna es generada, nadie puede escribir un bruto que no coincida con peso por precio, así que la base garantiza esa consistencia por sí sola.

Filtré las liquidaciones sin deducciones porque, en ese caso, el valor bruto y el neto deberían coincidir, y así se ve con claridad que no hay otra cantidad mezclada en el cálculo