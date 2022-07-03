SELECT COUNT(platforms.platforms) AS total FROM platforms
WHERE platforms.platforms LIKE '%windows%';

SELECT COUNT(platforms.platforms) AS total FROM platforms
WHERE platforms.platforms LIKE '%mac%';

SELECT COUNT(platforms.platforms) AS total FROM platforms
WHERE platforms.platforms LIKE '%linux%';