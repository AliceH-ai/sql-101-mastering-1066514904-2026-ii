/*coffee_coop_db=# SELECT
coffee_coop_db-#     T1.farm_name      AS farm,
coffee_coop_db-#     T1.rural_district AS rural_district,
coffee_coop_db-#     T1.total_area_ha  AS area_ha,
coffee_coop_db-#     T1.altitude_masl  AS altitude_masl
coffee_coop_db-# FROM farm.farms AS T1
coffee_coop_db-# WHERE T1.municipality_code = '54518'
coffee_coop_db-#   AND T1.altitude_masl > 1800
coffee_coop_db-# ORDER BY T1.altitude_masl DESC;
      farm      |    rural_district    | area_ha | altitude_masl
----------------+----------------------+---------+---------------
 Santa Clara    | La Legua             |    2.62 |          2300
 El Guayabo     | El Rosal             |    1.21 |          2300
 La Cascada     | Caima                |    2.49 |          2300
 El Vergel      | Sabagua              |    1.11 |          2300
 La Isabela     | Garc├¡a               |    1.36 |          2275
 El Refugio     | Monteadentro         |    4.89 |          2242
 Cafetal Viejo  | Caima                |    5.29 |          2229
 San Jos├®       | Alcaparral           |    3.12 |          2203
 El Refugio     | Sabaneta Baja        |    1.93 |          2195
 Villa Hermosa  | Pe├▒as                |    0.30 |          2181
 El Nogal       | San Jos├® De Tonchala |    3.24 |          2177
 El Para├¡so     | Navarro              |    1.67 |          2164
 El Danubio     | Garc├¡a               |    7.83 |          2160
 Las Orqu├¡deas  | Sabaneta Baja        |    0.78 |          2152
 Los Laureles   | San Jos├® De Tonchala |    0.84 |          2148
 La Granja      | El Palchal           |    2.83 |          2140
 Los Guaduales  | El Palchal           |    2.66 |          2135
 La Argentina   | Lengua               |    1.45 |          2124
 El Mes├│n       | Navarro              |    1.40 |          2122
 Las Acacias    | Cunuba               |    0.94 |          2121
 Cafetal Viejo  | La Legua             |    0.42 |          2109
 Villa Rosa     | El Alizal            |    1.81 |          2108
 Bellavista     | Cunuba               |    7.72 |          2107
 La Estrella    | Garc├¡a               |    5.51 |          2079
 El Guamo       | El Escorial          |    4.27 |          2074
 Las Margaritas | Caima                |    0.91 |          2072
 San Rafael     | San Jos├® De Tonchala |    1.02 |          2065
-- Más  --