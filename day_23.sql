-- Question 42:- Aggregation > Weather Observation Station 19

-- Euclidean Distance..(x1,y1) and (x2,y2) d = root((x2-x1)^2 + (y2-y1)^2)

-- P1(a,c)...P2(b,d) --> d = root((b-a)^2 + (d-c)^2)

-- SELECT sqrt((power(b-a),2)+(power(d-c),2))
-- from STATION
-- where (SELECT min(LAT_N) AS a, MAX(LAT_N) AS b,min(LONG_N) AS c, MAX(LONG_N) AS d
-- FROM  STATION);

-- SELECT 
-- sqrt(
--     (
--         pow(MAX(LAT_N)- MIN(LAT_N)),2)+
--         (
--             pow(MAX(LONG_W)- MIN(LONG_W)),2))
-- from STATION

-- SELECT sqrt((power(p,2)+(power(q,2))
-- from STATION
-- where (SELECT (MAX(LAT_N) - MIN(LAT_N)) AS p, MAX(LONG_W) - MIN(LONG_W) AS q
-- FROM  STATION);

SELECT ROUND(
    SQRT(
        POW(MAX(LAT_N) - MIN(LAT_N), 2) 
            +
        POW( MAX(LONG_W) - MIN(LONG_W), 2)
),4)
FROM STATION;