/*
coffee_coop_db=# SELECT
coffee_coop_db-#     T1.farm_name      AS farm,
coffee_coop_db-#     T1.rural_district AS rural_district,
coffee_coop_db-#     T1.latitude       AS latitude,
coffee_coop_db-#     T1.longitude      AS longitude
coffee_coop_db-# FROM farm.farms AS T1
coffee_coop_db-# WHERE T1.municipality_code = '54518'
coffee_coop_db-#   AND (T1.latitude IS NULL OR T1.longitude IS NULL)
coffee_coop_db-# ORDER BY T1.farm_name ASC;
       farm       |    rural_district    | latitude | longitude
------------------+----------------------+----------+-----------
 Altamira         | El Alizal            |          |
 Bella Vista Alta | El Rosal             |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 Bella Vista Alta | Alto Grande          |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 Bellavista       | San Jos├® De Tonchala |          |
 Bellavista       | Pe├▒as                |          |
 Bellavista       | Alto Grande          |          |
 Bellavista       | Cunuba               |          |
 Cafetal Viejo    | Caima                |          |
 Cafetal Viejo    | La Legua             |          |
 Cafetal Viejo    | San Jos├® De Tonchala |          |
 El Bosque        | Tampanqueba          |          |
 El Brillante     | La Legua             |          |
 El Brillante     | Pe├▒as                |          |
 El Brillante     | Navarro              |          |
 El Cedro         | Iscaligua            |          |
 El Cedro         | La Legua             |          |
 El Danubio       | Garc├¡a               |          |
 El Danubio       | Tampanqueba          |          |
 El Diamante      | Monteadentro         |          |
 El Diamante      | El Alizal            |          |
 El Ed├®n          | Cabecera Municipal   |          |
 El Encanto       | San Jos├® De Tonchala |          |
 El Encanto       | Fontib├│n             |          |
 El Encanto       | Garc├¡a               |          |
 El Guamo         | Fontib├│n             |          |