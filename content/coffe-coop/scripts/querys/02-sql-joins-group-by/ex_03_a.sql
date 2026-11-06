 -- Exercise 03 - a
-- RIGHT JOIN: every collection point with the code and gross weight of the deliveries received on 2026-09-30, including points with no deliveries (date condition in ON)
 
 
 SELECT
     T2.point_name      AS collection_point,
     T1.delivery_id     AS delivery,
     T1.gross_weight_kg AS gross_weight_kg
 FROM buy.deliveries AS T1
 RIGHT JOIN buy.collection_points AS T2
     ON T1.collection_point_id = T2.collection_point_id
    AND T1.delivery_id LIKE 'DLV-20260930-%';
/*
               collection_point               |      delivery       | gross_weight_kg
----------------------------------------------+---------------------+-----------------
 Punto de Compra JambalÃ³ 1                    | DLV-20260930-000001 |           51.53
 Punto de Compra Salgar 1                     | DLV-20260930-000002 |          124.98
 Punto de Compra CajibÃ­o 3                    | DLV-20260930-000003 |          112.33
 Punto de Compra Venecia 1                    | DLV-20260930-000004 |          138.29
 Punto de Compra El Banco 1                   | DLV-20260930-000005 |          256.42
 Punto de Compra ConvenciÃ³n 1                 | DLV-20260930-000006 |          139.81
 Punto de Compra ApÃ­a 2                       | DLV-20260930-000007 |          404.97
 Punto de Compra El Tambo 1                   | DLV-20260930-000008 |          175.92
 Punto de Compra Anserma 1                    | DLV-20260930-000009 |           56.80
 Punto de Compra San Francisco 1              | DLV-20260930-000010 |          269.43
 Punto de Compra Miranda 1                    | DLV-20260930-000011 |          166.55
 Punto de Compra Paratebueno 1                | DLV-20260930-000012 |           47.86
 Punto de Compra Caldas 1                     | DLV-20260930-000013 |           47.40
 Punto de Compra TibanÃ¡ 1                     | DLV-20260930-000014 |          164.91
 Punto de Compra Coromoro 1                   | DLV-20260930-000015 |          136.77
 Punto de Compra San AndrÃ©s De Tumaco 2       | DLV-20260930-000016 |          171.44
 Punto de Compra El Bagre 1                   | DLV-20260930-000017 |          545.69
 Punto de Compra GuachenÃ© 1                   | DLV-20260930-000018 |          247.11
 Punto de Compra Hobo 2                       | DLV-20260930-000019 |          106.26
 Punto de Compra Tello 1                      | DLV-20260930-000020 |          115.75
 Punto de Compra Aranzazu 1                   | DLV-20260930-000021 |          143.29
 Punto de Compra Ipiales 1                    | DLV-20260930-000022 |          247.73
 Punto de Compra SÃ¡chica 1                    | DLV-20260930-000023 |          221.51
 Punto de Compra Tesalia 1                    | DLV-20260930-000024 |          222.49
 Punto de Compra Lenguazaque 1                | DLV-20260930-000025 |          176.53
 Punto de Compra Pacho 1                      | DLV-20260930-000026 |          162.24
 Punto de Compra Paicol 1                     | DLV-20260930-000027 |          184.59
 Punto de Compra Acevedo 1                    | DLV-20260930-000028 |          258.00
 Punto de Compra El Banco 1                   | DLV-20260930-000029 |          231.40
 Punto de Compra GarzÃ³n 3                     | DLV-20260930-000030 |          124.95
 Punto de Compra San SebastiÃ¡n De Mariquita 1 | DLV-20260930-000031 |          107.99
 Punto de Compra Palestina 1                  | DLV-20260930-000032 |          213.33
 Punto de Compra Isnos 1                      | DLV-20260930-000033 |           49.13
 Punto de Compra Santander De Quilichao 2     | DLV-20260930-000034 |          174.83
 Punto de Compra Rionegro 1                   | DLV-20260930-000035 |          235.65
 Punto de Compra Coromoro 1                   | DLV-20260930-000036 |          200.54
 Punto de Compra El PlayÃ³n 1                  | DLV-20260930-000037 |           64.16
 Punto de Compra Rionegro 1                   | DLV-20260930-000038 |          136.73
 Punto de Compra Ipiales 1                    | DLV-20260930-000039 |           86.92
 Punto de Compra Flandes 1                    | DLV-20260930-000040 |          321.49
 Punto de Compra Copacabana 1                 | DLV-20260930-000041 |           45.97
 Punto de Compra Ipiales 1                    | DLV-20260930-000042 |          166.41
 Punto de Compra Guadalajara De Buga 1        | DLV-20260930-000043 |          239.46
 Punto de Compra La Cumbre 1                  | DLV-20260930-000044 |          119.26