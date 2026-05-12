--1 
SELECT
    COUNT(*) AS ToplamUrun
FROM
    Production.Product;
--COUNT(SÜTÜN) null olmayanları sayar


--2 
SELECT 
    AVG(ListPrice) AS OrtalamaFiyat
FROM
    Production.Product;


--3 
SELECT
    MAX(TotalDue) AS EnYuksekFiyat,
    MIN(TotalDue) AS EnDusukFiyat
FROM
    Sales.SalesOrderHeader;


--4 
SELECT 
    SUM(VacationHours) AS ToplamIzinSaati
FROM
    HumanResources.Employee;


--5 
SELECT 
    SUM(OrderQty) AS ToplamMiktari,
    SUM(LineTotal) AS ToplamCiro
FROM
    Sales.SalesOrderDetail;


--6
SELECT 
    COUNT(*) AS RenkSayisi
FROM
    Production.Product
WHERE
    Color IS NOT NULL;

--6.1 VEYA 
SELECT 
    COUNT(COLOR) AS RenkSayisi
FROM
    Production.Product;


