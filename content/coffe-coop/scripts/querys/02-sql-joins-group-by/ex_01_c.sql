/*coffee_coop_db=# SELECT
coffee_coop_db-#     T1.delivery_id     AS delivery,
coffee_coop_db-#     T2.farm_name       AS farm,
coffee_coop_db-#     T3.point_name      AS collection_point,
coffee_coop_db-#     T1.gross_weight_kg AS gross_weight_kg
coffee_coop_db-# FROM buy.deliveries AS T1
coffee_coop_db-# INNER JOIN farm.farms AS T2
coffee_coop_db-#     ON T1.farm_id = T2.farm_id
coffee_coop_db-# INNER JOIN buy.collection_points AS T3
coffee_coop_db-#     ON T1.collection_point_id = T3.collection_point_id
coffee_coop_db-# WHERE T1.delivery_id LIKE 'DLV-20260930-%'
coffee_coop_db-# ORDER BY T3.point_name ASC, T1.gross_weight_kg DESC;
      delivery       |       farm       |               collection_point               | gross_weight_kg
---------------------+------------------+----------------------------------------------+-----------------
 DLV-20260930-000164 | La Divisa        | Punto de Compra AbriaquÃ­ 1                   |           48.18
 DLV-20260930-000028 | El Refugio       | Punto de Compra Acevedo 1                    |          258.00
 DLV-20260930-000094 | El Refugio       | Punto de Compra Acevedo 1                    |          246.96
 DLV-20260930-000292 | La Florida       | Punto de Compra Acevedo 1                    |          122.13
 DLV-20260930-000202 | Los Guaduales    | Punto de Compra Agrado 1                     |          246.62
 DLV-20260930-000080 | El ArrayÃ¡n       | Punto de Compra Agrado 1                     |          120.11
 DLV-20260930-000075 | La Primavera     | Punto de Compra AlcalÃ¡ 1                     |           61.99
 DLV-20260930-000137 | San Rafael       | Punto de Compra Aldana 1                     |          209.02
 DLV-20260930-000130 | El Refugio       | Punto de Compra Algeciras 1                  |          290.55
 DLV-20260930-000246 | Los Alpes        | Punto de Compra Algeciras 1                  |          247.42
 DLV-20260930-000249 | La MontaÃ±a       | Punto de Compra Algeciras 1                  |          244.21
 DLV-20260930-000286 | Las Acacias      | Punto de Compra Algeciras 1                  |          194.68
 DLV-20260930-000087 | La Floresta      | Punto de Compra Algeciras 1                  |          116.95
 DLV-20260930-000282 | El ParaÃ­so       | Punto de Compra Altamira 1                   |          156.67
 DLV-20260930-000231 | La Palma         | Punto de Compra Altamira 1                   |          128.21
 DLV-20260930-000240 | La Primavera     | Punto de Compra AndalucÃ­a 2                  |          304.69
 DLV-20260930-000203 | El Horizonte     | Punto de Compra AndalucÃ­a 2                  |          166.57
 DLV-20260930-000079 | Las Brisas       | Punto de Compra Anserma 1                    |          176.91
 DLV-20260930-000009 | Las Delicias     | Punto de Compra Anserma 1                    |           56.80
 DLV-20260930-000157 | Las Margaritas   | Punto de Compra Anserma 2                    |          169.11
 DLV-20260930-000188 | El Placer        | Punto de Compra Anserma 2                    |           40.13
 DLV-20260930-000166 | El Oasis         | Punto de Compra Ansermanuevo 1               |          245.94
 DLV-20260930-000242 | La Cristalina    | Punto de Compra Ansermanuevo 1               |           98.23
 DLV-20260930-000007 | La Argentina     | Punto de Compra ApÃ­a 2                       |          404.97
 DLV-20260930-000021 | El Refugio       | Punto de Compra Aranzazu 1                   |          143.29
 DLV-20260930-000106 | El Retiro        | Punto de Compra Armero Guayabal 2            |          308.32
 DLV-20260930-000055 | La MontaÃ±a       | Punto de Compra Armero Guayabal 2            |          124.05
 DLV-20260930-000289 | El Diamante      | Punto de Compra Armero Guayabal 2            |           56.97
 DLV-20260930-000284 | La Primavera     | Punto de Compra Ataco 1                      |          193.97
 DLV-20260930-000146 | La Estrella      | Punto de Compra Balboa 1                     |          290.98
 DLV-20260930-000072 | La CabaÃ±a        | Punto de Compra Balboa 1                     |          176.20
 DLV-20260930-000148 | Tierra Linda     | Punto de Compra Balboa 2                     |          121.69
 DLV-20260930-000165 | La Gaitana       | Punto de Compra Baraya 1                     |          348.59
 DLV-20260930-000241 | La Selva         | Punto de Compra BelalcÃ¡zar 1                 |          181.74
 DLV-20260930-000217 | Altamira         | Punto de Compra BelalcÃ¡zar 1                 |          132.86
 DLV-20260930-000233 | El Oasis         | Punto de Compra Bochalema 1                  |          371.40
 DLV-20260930-000063 | La Florida       | Punto de Compra Bochalema 1                  |          184.83
 DLV-20260930-000141 | El Guamo         | Punto de Compra Bochalema 1                  |          179.04
 DLV-20260930-000077 | La Palma         | Punto de Compra Bochalema 1                  |          114.72
 DLV-20260930-000235 | La Estrella      | Punto de Compra Bosconia 1                   |          317.64
 DLV-20260930-000051 | El Mirador       | Punto de Compra Bosconia 1                   |          310.22
 DLV-20260930-000120 | El Rosal         | Punto de Compra Bosconia 1                   |           59.56
 DLV-20260930-000213 | Cafetal Viejo    | Punto de Compra CajibÃ­o 1                    |          264.45
 DLV-20260930-000058 | Las Margaritas   | Punto de Compra CajibÃ­o 2                    |          166.64
 DLV-20260930-000298 | La Florida       | Punto de Compra CajibÃ­o 2                    |          124.92
-- Más  --