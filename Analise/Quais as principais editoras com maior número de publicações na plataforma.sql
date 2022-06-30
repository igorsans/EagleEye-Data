/*  Quais as principais editoras com maior número de publicações na plataforma */
SELECT
   publisher as Editoras, 
    COUNT(appid) AS Qtos_jogos
FROM
    publisher
group by
	Editoras
order by
    Qtos_jogos DESC
limit
    5;