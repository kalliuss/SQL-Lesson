-- ? MIN

SELECT 
    MIN(affected_customers) AS min_affected_customers
FROM 
    grid;


-- 0 ları ve null hariç tutma

SELECT 
    MIN(affected_customers) AS min_affected_customers
FROM
    grid
WHERE
    affected_customers IS NOT NULL AND affected_customers != 0;


-- * MAX 

SELECT 
    MAX(affected_customers) AS max_affected_customers
FROM
    grid;


-- ! AVG ORTALAMA BİR SÜTUNUN ORTALAMASI İÇİN

SELECT 
    AVG(affected_customers) AS avg_affected_customers
FROM
    grid;