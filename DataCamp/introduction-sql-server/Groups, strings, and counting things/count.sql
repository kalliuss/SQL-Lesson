-- COUNT()

SELECT
    COUNT(affected_customers) AS count_affected
FROM
    grid;


-- benzersiz değerlerin sayısını toplamak

SELECT 
    COUNT(DISTINCT affected_customers) AS count_distinct_affected
FROM
    grid;


