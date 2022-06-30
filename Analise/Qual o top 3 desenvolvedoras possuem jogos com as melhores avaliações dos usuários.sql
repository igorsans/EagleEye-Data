
/* Qual top 3 desenvolvedoras possuem jogos com as melhores avaliações dos usuários */
SELECT * FROM
    (SELECT 
        name, positiveratings, developer AS Desenvolvedora
    FROM
        steam
        INNER JOIN positiveratings ON positiveratings.appid = steam.appid
        INNER JOIN developer ON developer.appid = steam.appid
    ORDER BY positiveratings DESC
    LIMIT 5) AS melhores_avaliações
GROUP BY Desenvolvedora
LIMIT 3;