-- IC ICE SORGULAR

--1 
SELECT 
    Name,
    ListPrice
FROM Production.Product
WHERE 
    ListPrice > (
        SELECT AVG(ListPrice)
        FROM Production.Product
    );
--! alt sorgu once calisir ve tek bir deger uretir, dis sorgu bu degerle karsilastirma yapar


--2
SELECT 
    *
FROM 
    Sales.SalesOrderHeader
WHERE
    TotalDue = (
        SELECT MAX(TotalDue)
        FROM Sales.SalesOrderHeader
    );



--3
SELECT 
    ProductID,
    Name
FROM 
    Production.Product
WHERE 
    ProductID NOT IN (
        SELECT DISTINCT ProductID
        FROM Sales.SalesOrderDetail
);
-- NOT IN olmamasi durumunu filtreler


-- ! 4 

SELECT TOP 1 Yil, ToplamCiro
FROM (
    SELECT 
        YEAR(OrderDate) AS Yil,
        SUM(TotalDue) AS ToplamCiro
    FROM Sales.SalesOrderHeader
    GROUP BY YEAR(OrderDate)
) AS YillikCiro
ORDER BY ToplamCiro DESC;
--! alt sorgu yillik ciroyu hesaplar
-- from icindeki sorguya mutlaka as atanmali ad verilmelidir yani