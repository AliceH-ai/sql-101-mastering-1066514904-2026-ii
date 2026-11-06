-- Exercise 01 - b
-- INNER JOIN (three tables): farms in Pamplona (54518) with rural district, municipality name and owner's first and last name, sorted by owner's last name

 SELECT
     T2.farm_name         AS farm,
     T2.rural_district    AS rural_district,
     T1.municipality_name AS municipality,
     T3.first_name        AS first_name,
     T3.last_name         AS last_name
 FROM geo.municipalities AS T1
 INNER JOIN farm.farms AS T2
     ON T1.municipality_code = T2.municipality_code
 INNER JOIN farm.farmers AS T3
     ON T2.farmer_id = T3.farmer_id
 WHERE T1.municipality_code = '54518'
 ORDER BY T3.last_name ASC;

/*
       farm       |    rural_district    | municipality |     first_name     |      last_name
------------------+----------------------+--------------+--------------------+---------------------
 El JardÃ­n        | El Escorial          | Pamplona     | Manuel             | Agudelo JimÃ©nez
 La Selva         | PeÃ±as                | Pamplona     | Manuel             | Agudelo JimÃ©nez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 El Encanto       | FontibÃ³n             | Pamplona     | RocÃ­o              | Ãlvarez CÃ¡rdenas
 Bellavista       | Alto Grande          | Pamplona     | RocÃ­o              | Ãlvarez CÃ¡rdenas
 La CabaÃ±a        | Lengua               | Pamplona     | MÃ³nica             | Ãlvarez Carrillo
 Monteverde       | Lengua               | Pamplona     | MÃ³nica             | Ãlvarez Carrillo
 El ArrayÃ¡n       | Navarro              | Pamplona     | Marleny            | Ãlvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | Ãlvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango NarvÃ¡ez
 El Recuerdo      | La Legua             | Pamplona     | AncÃ­zar            | Arango Silva
 El Rosal         | Navarro              | Pamplona     | Edilma Gabriela    | Arias Ãlvarez
 Monteverde       | El Palchal           | Pamplona     | Edilma Gabriela    | Arias Ãlvarez
 Las Delicias     | Sabagua              | Pamplona     | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona     | Viviana            | Arias RamÃ­rez
 La Selva         | Sabaneta Baja        | Pamplona     | Guillermo Pedro    | Arias RodrÃ­guez
 San Luis         | Sabaneta Alta        | Pamplona     | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona     | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Pamplona     | Miguel             | Barrera Osorio
 La Floresta      | San JosÃ© De Tonchala | Pamplona     | Ãngela             | Barrera PeÃ±a
 El Oasis         | El Alizal            | Pamplona     | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona     | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona     | Antonio            | Bastidas RodrÃ­guez
 Villa Rosa       | Cunuba               | Pamplona     | Fabio              | Bastidas Ruiz
 El Triunfo       | GarcÃ­a               | Pamplona     | RocÃ­o              | Bastidas SuÃ¡rez
 La Argentina     | Caima                | Pamplona     | RocÃ­o              | Bastidas SuÃ¡rez
 Los Pinos        | San Francisco        | Pamplona     | Rafael HÃ©ctor      | Bedoya PinzÃ³n
 La Reserva       | La Legua             | Pamplona     | Nelson             | Bedoya VÃ©lez
 Las Margaritas   | Caima                | Pamplona     | Nelson             | Bedoya VÃ©lez
 El JardÃ­n        | La Legua             | Pamplona     | Laura              | Benavides Ãlvarez
 La Argentina     | Lengua               | Pamplona     | Manuela Yolanda    | Benavides Delgado
 La UniÃ³n         | Santa Matilde        | Pamplona     | Carolina Alejandra | Benavides MartÃ­nez
 Santa Clara      | El Rosal             | Pamplona     | Mateo              | Benavides Rangel
 El Horizonte     | El Totumo            | Pamplona     | Gustavo            | BermÃºdez Bedoya
 El Oasis         | La â”ŒPa               | Pamplona     | IvÃ¡n               | BermÃºdez FlÃ³rez
 Villa Hermosa    | Monteadentro         | Pamplona     | Alberto            | BermÃºdez GÃ³mez
 La Fortuna       | San Francisco        | Pamplona     | Yesenia            | BermÃºdez Henao
 El Diamante      | Sabaneta Baja        | Pamplona     | Yesenia            | BermÃºdez Henao
 Los Naranjos     | El Rosal             | Pamplona     | Ãlvaro             | BermÃºdez MarÃ­n
 La Victoria      | Cunuba               | Pamplona     | Ãlvaro             | BermÃºdez MarÃ­n
 El Retiro        | GarcÃ­a               | Pamplona     | Ãlvaro             | BermÃºdez MarÃ­n
 Las Palmas       | El Escorial          | Pamplona     | Rodrigo Guillermo  | BermÃºdez MuÃ±oz
 Santa Clara      | La Legua             | Pamplona     | Emilio             | BermÃºdez Rojas
 Miraflores       | El Rosal             | Pamplona     | MÃ³nica             | Betancur Arango
-- Más  --