SELECT DISTINCT genre
FROM titles
WHERE genre IS NOT NULL

UNION

SELECT DISTINCT genre
FROM episodes
WHERE genre IS NOT NULL
 
ORDER BY genre
