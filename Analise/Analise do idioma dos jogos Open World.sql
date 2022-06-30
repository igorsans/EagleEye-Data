/* OPENWORLD ---------------- */

SELECT COUNT(steam.name) AS total_jogos, english.english AS ingles
FROM steam
INNER JOIN english ON english.appid = steam.appid
INNER JOIN steamspy_tags ON steamspy_tags.appid = steam.appid
WHERE steamspy_tags.steamspy_tags LIKE '%open%' AND english.english = 1;

select * from steamspy_tags
WHERE steamspy_tags.steamspy_tags LIKE '%open%';

/* tabela categories não tem a categoria Open World*/