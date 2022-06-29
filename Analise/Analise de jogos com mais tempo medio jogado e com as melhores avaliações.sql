#Os 10 jogos com mais tempo medio jogado e que possuem as melhores avaliações 
SELECT 
    name as Nome_Jogo, positive_ratings AS Avaliacoes_Positivas, average_playtime as Tempo_Medio_jogado
FROM
    (SELECT 
        steam.name,
            positiveratings.positive_ratings,
            avgplaytime.average_playtime
    FROM
        steam
    INNER JOIN positiveratings ON positiveratings.appid = steam.appid
    INNER JOIN avgplaytime ON avgplaytime.appid = steam.appid
    ORDER BY positiveratings.positive_ratings DESC
    LIMIT 10) AS R
ORDER BY Tempo_Medio_jogado DESC;

