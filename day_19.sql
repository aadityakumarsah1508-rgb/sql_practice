-- Question 37:- Aggregation > Weather Observation Station 13 

-- SELECT SUM(LAT_N) 
-- FROM STATION
-- WHERE (SELECT LAT_N FROM STATION WHERE LAT_N BETWEEN '38.78800' AND '137.2345');

-- SELECT SUM(LAT_N) 
-- FROM STATION
-- WHERE LAT_N = (SELECT LAT_N FROM STATION WHERE LAT_N '38.7880' < LAT_N < '137.2345');

-- SELECT SUM(LAT_N) 
-- FROM STATION
-- WHERE LAT_N = (SELECT LAT_N FROM STATION WHERE LAT_N < '137.2345' AND LAT_N > '38.7880');
-- This throughs error as = operator accepts only one value but the subquery returing a list of query

-- to write a subquery here we can use IN -- lat_n IN (subqueries goes here) 

-- Subquery code is not a optimized way of writing code here as compiler has to go through the same table two times.

SELECT ROUND(SUM(LAT_N), 4) 
FROM STATION
WHERE LAT_N < '137.2345' AND LAT_N > '38.7880'

-- SELECT ROUND(SUM(LAT_N), 4) 
-- FROM STATION
-- WHERE '38.7880' < LAT_N < '137.2345';
-- It through error as sql doesn't work with chained statement.

-- SELECT SUM(LAT_N) 
-- FROM STATION
-- WHERE '137.2345' < LAT_N > '38.7880';
-- it is also a chained operation. 