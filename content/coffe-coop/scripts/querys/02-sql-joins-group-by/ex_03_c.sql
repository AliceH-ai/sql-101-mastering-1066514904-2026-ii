/*coffee_coop_db=# SELECT
coffee_coop_db-#     T2.variety_name AS variety,
coffee_coop_db-#     T2.species      AS species
coffee_coop_db-# FROM farm.plot_varieties AS T1
coffee_coop_db-# RIGHT JOIN farm.coffee_varieties AS T2
coffee_coop_db-#     ON T1.variety_id = T2.variety_id
coffee_coop_db-# WHERE T1.variety_id IS NULL;
 variety | species
---------+---------
(0 filas)