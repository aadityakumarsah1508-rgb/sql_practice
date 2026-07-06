-- Question 32:- Advance select > Binary Tree Node 

SELECT N,
    CASE 
        WHEN P IS NULL THEN "Root"
        -- WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN "Leaf" -- if null condition is not written then it doesn't work
        WHEN NOT EXISTS (SELECT 1 FROM BST b WHERE b.p = BST.n) THEN "Leaf"
        ELSE "Inner"
    END
FROM BST
ORDER BY N;

-- ======================================================================================================

-- Question 33:- Advance Select > New Companies

-- Select c.company_code,
--         Lead_Manager.Count(lead_manager_code),
--         Senior_Manager.count(senior_manager_code),
--         Manager.Count(manager_code),
--         Employee.count(employee_code)
-- FROM Employee as e 
--          Join Manager as m on e.manager_code = m.manager_code
--          Join Senior_Manager as sm on e.senior_manager_code = sm.senior_manager_code
--          Join Lead_Manager as lm on e.lead_manager_code = lm.lead_manager_code
--          join Company as c on e.company_code = c.company_code
-- order by company_code;