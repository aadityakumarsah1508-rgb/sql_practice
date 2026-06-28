-- Question 27:- Advanced > SelectOccupations

-- What I am approaching 
-- SELECT Name,
--     max(CASE WHEN Occupation='Doctor' THEN name ELSE NULL END),
--     max(CASE WHEN Occupation = 'Professor' THEN name ELSE NULL END),
--     max(CASE WHEN Occupation = 'Singer' THEN name ELSE NULL END),
--     max(CASE WHEN Occupation = 'Actor' THEN name ELSE NULL END)
-- FROM OCCUPATIONS
-- GROUP BY Occupation 
-- order by Name;

-- Solution 
SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT 
        Name, 
        Occupation,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS row_num
    FROM OCCUPATIONS
) AS ranked_occupations
GROUP BY row_num
ORDER BY row_num;
