-- * tam resmi tek sonuç kümesinde görmek istersek LEFT join kullanmalıyız.
-- * hangi tablonun tüm satırlarını görmek istiyorsak o tabloyu LEFT JOIN ile yazmalıyız.

SELECT 
     Name,
     Admitted.Patient_ID,
     Admitted,
     Discharged
 FROM
     Admitted
LEFT JOIN Discharged ON Discharged.Patient_ID = Admitted.Patient_ID;


-- ? RIGHT JOIN

-- leftlere benzer
-- sağdaki tabloda tüm satırlar ve soldakinden gelen eşleşmeler döndürülür


-- SELECT 
--     Name,
--     Admitted.Patient_ID,
--     Admitted,
--     Discharged
-- FROM 
--     Discharged
-- RIGHT JOIN Admitted ON Admitted.Patient_ID = Discharged.Patient_ID;

-- * INNER JOIN - YALNIZCA ESLESEN SATIRLAR
-- ? LEFT JOIN VEYA RIGHT - ANA TABLODAKI TUM SATIRLAR + ESLESMELER
-- ! NULL - ESLESME YOKSA GOSTERİLİR