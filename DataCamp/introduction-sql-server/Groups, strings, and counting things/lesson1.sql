-- SUM() TOPLAMA

SELECT 
    SUM(affected_customers) AS total_affected_customers
FROM
    grid;


-- iki veya daha fazla sütunu toplamak için

SELECT 
    SUM(affected_customers) AS total_affected_customers,
    SUM(demand_loss_mw) AS total_demand_loss
FROM
    grid;