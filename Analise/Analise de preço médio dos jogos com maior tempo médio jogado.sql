SELECT soma/media as média, genres as genero FROM
(
SELECT 
    SUM(price.price) as soma, 
    genre.genres,
    COUNT(genre.genres) as media
FROM
    steam
INNER JOIN price ON price.appid = steam.appid
INNER JOIN genre ON genre.appid = steam.appid
WHERE genre.genres IN ('action', 'strategy', 'violent','rpg','racing','indie','adventure','casual','simulation','animation','sports')
GROUP BY genres) as resultado

ORDER BY média DESC;
