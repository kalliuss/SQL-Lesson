-- ? GROUP BY 

SELECT 
    SUM(demand_loss_mw) AS lost_demand,
    description 
FROM
    grid
GROUP BY description; -- description'a göre gruplandırır ve her bir description için demand_loss_mw toplamını verir


SELECT 
    SUM(demand_loss_mw) AS lost_demand,
    description
FROM
    grid
WHERE
    description LIKE '%storm'
    AND demand_loss_mw IS NOT NULL
GROUP BY description; -- description'ı storm ile biten ve demand_loss_mw değeri null olmayan kayıtları gruplandırır ve her bir description için demand_loss_mw toplamını verir

