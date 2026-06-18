-- Question 8:- Weather observation 3

SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)= 0;
-- ============================================================================================================

-- Question 9: - Weather Observation 4

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;
-- =============================================================================================================

-- Question 10: - Weather Observation 5

SELECT city, length(city) from station
order by length(city) asc, city  asc
limit 1;
SELECT city, length(city) from station
ORDER by length(city) desc, city asc
limit 1;
-- ===============================================================================================================