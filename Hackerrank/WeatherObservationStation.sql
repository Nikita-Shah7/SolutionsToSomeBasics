-- QUERY 1
SELECT CITY,STATE FROM STATION;
-- QUERY 2
SELECT CAST(ROUND(SUM(LAT_N),2) AS NUMERIC(10,2)), CAST(ROUND(SUM(LONG_W),2) AS NUMERIC(10,2)) FROM STATION;
-- QUERY 3
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0;
-- QUERY 4
SELECT COUNT(CITY)-COUNT(DISTINCT CITY) FROM STATION;
-- QUERY 5
(SELECT CITY,LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1)
    UNION
(SELECT CITY,LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1);
-- QUERY 6
SELECT CITY FROM STATION WHERE LEFT(CITY,1) IN ('A','E','I','O','U');
-- QUERY 7
SELECT distinct city FROM STATION WHERE RIGHT(CITY,1) in ('a','e','i','o','u');
-- QUERY 8
SELECT distinct CITY FROM STATION WHERE LEFT(CITY,1) IN ('A','E','I','O','U') and RIGHT(city,1) IN ('a','e','i','o','u');
-- QUERY 9
SELECT DISTINCT CITY FROM STATION WHERE NOT LEFT(CITY,1) IN ('A','E','I','O','U');
-- QUERY 10
SELECT DISTINCT CITY FROM STATION WHERE NOT RIGHT(CITY,1) IN ('a','e','i','o','u');
-- QUERY 11
SELECT DISTINCT CITY FROM STATION WHERE NOT LEFT(CITY,1) IN ('A','E','I','O','U') OR NOT RIGHT(CITY,1) IN ('a','e','i','o','u');
-- QUERY 12
SELECT DISTINCT CITY FROM STATION WHERE NOT LEFT(CITY,1) IN ('A','E','I','O','U') AND NOT RIGHT(CITY,1) IN ('a','e','i','o','u');
