SELECT DISTINCT genre
FROM titles

UNION

SELECT DISTINCT genre
FROM episodes 
 
ORDER BY genre
