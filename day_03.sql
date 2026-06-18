-- Question 8:- Weather observation 3

SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)= 0;
-- ============================================================================================================

-- Question 9: - Weather Observation 4

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;
-- =============================================================================================================

-- Question 10: - 