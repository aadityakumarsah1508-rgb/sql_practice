-- Question 29:- Aggregation > Japan Population

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Question 30:- Aggregation > Population Density Difference

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;