-- Exercise 05 - c
-- Collection points that are inactive OR have no phone number
/*
coffee_coop_db=# SELECT
coffee_coop_db-#     T1.point_name        AS point,
coffee_coop_db-#     T1.address_line      AS address,
coffee_coop_db-#     T1.municipality_code AS municipality_code,
coffee_coop_db-#     T1.phone_number      AS phone_number,
coffee_coop_db-#     T1.is_active         AS is_active
coffee_coop_db-# FROM buy.collection_points AS T1
coffee_coop_db-# WHERE NOT T1.is_active
coffee_coop_db-#    OR T1.phone_number IS NULL
coffee_coop_db-# ORDER BY T1.point_name ASC;
             point              |        address         | municipality_code | phone_number | is_active
--------------------------------+------------------------+-------------------+--------------+-----------
 Punto de Compra Aipe 1         | Carrera 13 # 17-16     | 41016             |              | t
 Punto de Compra Anserma 1      | Calle 39 # 7-96        | 17042             |              | t
 Punto de Compra ApÝa 2         | Calle 9 # 14-56        | 66045             |              | f
 Punto de Compra Baraya 1       | Calle 1 # 19-77        | 41078             |              | t
 Punto de Compra Bochalema 1    | Carrera 25 # 47-89     | 54099             |              | t
 Punto de Compra Bosconia 1     | Carrera 26 # 26-43     | 20060             |              | t
 Punto de Compra CajibÝo 1      | Carrera 15 # 32-45     | 19130             |              | t
 Punto de Compra Cisneros 1     | Calle 37 # 10-5        | 05190             |              | t
 Punto de Compra Coello 1       | Transversal 20 # 49-66 | 73200             |              | t
 Punto de Compra El Banco 1     | Calle 17 # 34-54       | 47245             | 6055026534   | f
 Punto de Compra El Carmen 2    | Calle 3 # 34-88        | 54245             |              | t
 Punto de Compra El Tambo 2     | Calle 16 # 56-53       | 19256             |              | t
 Punto de Compra Flandes 1      | Carrera 38 # 40-79     | 73275             |              | t
 Punto de Compra Hatonuevo 1    | Calle 7 # 16-89        | 44378             |              | t
 Punto de Compra Icononzo 1     | Calle 19 # 35-13       | 73352             |              | t
 Punto de Compra Isnos 1        | Calle 12 # 33-28       | 41359             |              | t
 Punto de Compra La Argentina 1 | Calle 37 # 58-65       | 41378             |              | t
 Punto de Compra La Gloria 1    | Transversal 38 # 7-85  | 20383             |              | t
 Punto de Compra Marsella 1     | Transversal 19 # 42-92 | 66440             |              | t
 Punto de Compra Nßtaga 1       | Diagonal 30 # 7-59     | 41483             | 6082388547   | f
 Punto de Compra Paicol 2       | Calle 2 # 30-84        | 41518             | 6071743803   | f
 Punto de Compra Pelaya 1       | Avenida 19 # 26-92     | 20550             |              | t
 Punto de Compra Popayßn 1      | Carrera 21 # 4-95      | 19001             | 6057341141   | f
 Punto de Compra PuracÚ 1       | Calle 16 # 50-5        | 19585             |              | t
 Punto de Compra Rionegro 1     | Carrera 31 # 59-80     | 68615             | 6037017611   | f
 Punto de Compra San Lorenzo 1  | Calle 29 # 54-48       | 52687             |              | t
 Punto de Compra Tello 1        | Calle 8 # 13-23        | 41799             | 6037843794   | f
-- Más  --



*/