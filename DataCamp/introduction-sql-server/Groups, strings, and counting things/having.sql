SELECT 
    SUM(demand_loss_mw) AS lost_demand,
    description
FROM
    grid
WHERE
    description LIKE '%storm'
    AND demand_loss_mw IS NOT NULL
GROUP BY description
HAVING SUM(demand_loss_mw) > 1000; -- description'ı storm ile biten ve demand_loss_mw değeri null olmayan kayıtları gruplandırır ve her bir description için demand_loss_mw toplamını verir, ancak sadece toplamı 100'den büyük olanları gösterir

