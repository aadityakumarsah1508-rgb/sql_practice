-- Question 23:- Aggregation > Revising Aggregations - The Count Function

SELECT COUNT(NAME)
FROM CITY 
WHERE POPULATION > 100000;

-- ==========================================================================================

-- Question 24:- Aggregation > Revising Aggregations - The Sum Function

SELECT SUM(POPULATION)
FROM CITY 
WHERE DISTRICT = "California"; 

-- ==========================================================================================
-- Question 25:- Aggregation > Revising Aggregations - Averages

SELECT AVG(POPULATION)
FROM CITY 
WHERE DISTRICT = "California";