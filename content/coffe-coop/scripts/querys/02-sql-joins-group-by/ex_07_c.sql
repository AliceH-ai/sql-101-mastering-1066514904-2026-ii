 -- Exercise 07 - c
-- Aggregates: farmers from Pamplona (54518) with total count (COUNT(*)) vs. count of farmers with a registered email (COUNT on email column)
 
 
 SELECT
     COUNT(*)        AS total_farmers,
     COUNT(T1.email) AS farmers_with_email
 FROM farm.farmers AS T1
 WHERE T1.municipality_code = '54518';
 total_farmers | farmers_with_email
 /*
---------------+--------------------
           230 |                165