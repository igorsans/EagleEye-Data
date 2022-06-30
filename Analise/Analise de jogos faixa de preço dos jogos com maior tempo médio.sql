SELECT	
	name as Nome, average_playtime as Tempo_Medio, price as preço, genres as genero
FROM
(SELECT
	steam.name, avgplaytime.average_playtime, price.price, genre.genres
    
    FROM
	steam

INNER JOIN avgplaytime ON avgplaytime.appid = steam.appid
INNER JOIN price ON price.appid = steam.appid
INNER JOIN genre ON genre.appid = steam.appid
ORDER BY average_playtime DESC

LIMIT 10) as result ORDER BY price DESC;
