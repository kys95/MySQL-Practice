SELECT P.ID, P.NAME, P.HOST_ID
FROM PLACES P
WHERE P.HOST_ID IN (SELECT P1.HOST_ID
                    FROM PLACES P1
                    GROUP BY P1.HOST_ID
                    HAVING COUNT(*) >= 2
                    )
ORDER BY P.ID;