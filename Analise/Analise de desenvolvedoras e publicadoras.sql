SELECT * FROM steam.steam;

/* Qual top 3 desenvolvedoras possuem jogos com as melhores avaliações dos usuários */
SELECT 
     *
FROM
    (SELECT 
        name, positive_ratings, developer AS Desenvolvedora
    FROM
        steam
    ORDER BY positive_ratings DESC
    LIMIT 5) AS melhores_avaliações
GROUP BY Desenvolvedora
LIMIT 3;
 
 
/*  Quais as principais editoras com maior número de publicações na plataforma */
SELECT
    publisher as Editoras, 
    COUNT(name) AS Qtos_jogos
FROM
    steam
group by
	Editoras
order by
    Qtos_jogos DESC
limit
    5;
   
    