-- Exercise 06 - b
-- Members of any gender from Pamplona (54518) with no registered email (email IS NULL)


SELECT
     T1.document_number AS document,
     T1.first_name      AS first_name,
     T1.last_name       AS last_name,
     T1.phone_number    AS phone,
     T1.email           AS email
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
AND T1.email IS NULL
ORDER BY T1.last_name ASC, T1.first_name ASC;
/*
  document  |    first_name    |     last_name      |   phone    | email
------------+------------------+--------------------+------------+-------
 768461420  | Marleny          | Agudelo Sandoval   | 3242280898 |
 939635303  | Marleny          | ┴lvarez Correa     | 3232410671 |
 302223305  | Camilo           | Arias Mora         | 3045535545 |
 550696749  | Viviana          | Arias RamÝrez      | 3204850778 |
 797017145  | Isabella         | Barrera Cabrera    | 3041744702 |
 483692716  | Ramiro           | Barrera Villamizar | 3056539829 |
 718906996  | Nelson           | Bedoya VÚlez       | 3194564518 |
 21358854   | Manuela Yolanda  | Benavides Delgado  | 3229418470 |
 737383707  | Yesenia          | Berm·dez Henao     | 3141005257 |
 1015411133 | Santiago         | Berm·dez Ruiz      | 3003993000 |
 141613744  | ╔dgar            | Burbano Arango     | 3203780826 |
 549054771  | MarÝa            | Burbano Duarte     | 3183590387 |
 716388403  | Emilio           | Carrillo Perdomo   | 3135267851 |
 1001674689 | Jaime Santiago   | CuÚllar Cßceres    | 3019841594 |
 749444168  | Emilio           | Delgado Molina     | 3118015821 |
 1117597835 | Cecilia Lorena   | DÝaz GarcÝa        | 3207660684 |
 932437698  | Amparo           | Duarte Duque       | 3059102841 |
 846209158  | Daniel HÚctor    | Duque Ruiz         | 3242698476 |
 622024549  | Viviana          | Gonzßlez Molina    | 3213218779 |
 35147265   | Carlos           | GutiÚrrez Pab¾n    | 3223406765 |
 343256743  | Dora             | Hernßndez Correa   | 3166719225 |
 525766302  | Gustavo          | Ibarra Agudelo     | 3506003684 |
 1185523747 | Elsa             | Ibarra Molina      | 3189660702 |
 1148351420 | InÚs             | JimÚnez Jaimes     | 3104090231 |
 860920785  | Hugo             | JimÚnez Parra      | 3244209117 |
 232229735  | Libardo          | Lasso Serrano      | 3113250445 |
 712758473  | Wilson           | L¾pez Villamizar   | 3055094275 |
 754524782  | Diana            | Lozano Rinc¾n      | 3506302080 |