SELECT 
    steam.name as jogo,
    positiveratings.positive_ratings as positivas
    FROM steam
    inner join positiveratings on positiveratings.appid = steam.appid
    order by positivas desc
    limit 10;