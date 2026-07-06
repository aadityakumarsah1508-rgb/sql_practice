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