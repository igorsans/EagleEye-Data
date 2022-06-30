SELECT 
    steam.name as jogo,
    negativeratings.negative_ratings as negativas
    FROM steam
    inner join negativeratings on negativeratings.appid = steam.appid
    order by negativas desc
    limit 10;