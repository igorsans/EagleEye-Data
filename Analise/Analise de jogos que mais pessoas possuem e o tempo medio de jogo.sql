#Os 10 jogos que mais pessoas possuem e tempo medio de jogo
SELECT 
    name AS Nome_Jogo, average_playtime AS Tempo_Medio_Jogado, owners AS Possuem, steamspy_tags AS Tags
FROM
    (SELECT 
        steam.name,
            avgplaytime.average_playtime,
            owners.owners,
            steamspy_tags.steamspy_tags
    FROM
        steam
    INNER JOIN avgplaytime ON avgplaytime.appid = steam.appid
    INNER JOIN owners ON owners.appid = steam.appid
    INNER JOIN steamspy_tags ON steamspy_tags.appid = steam.appid
    ORDER BY owners DESC
    LIMIT 10) AS R
ORDER BY Tempo_Medio_Jogado DESC;