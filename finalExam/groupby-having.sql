--1 
SELECT 
    Color,
    COUNT(*) AS UrunSayisi
FROM
    Production.Product
WHERE
    Color IS NOT NULL
GROUP BY
    Color;

--2 
SELECT 
    ProductID,
    SUM(OrderQty) AS ToplamMiktar
FROM
    Sales.SalesOrderDetail
GROUP BY
    ProductID
ORDER BY
    ToplamMiktar DESC;


--3 
SELECT 
    CustomerID,
    COUNT(*) AS SiparisSayisi  
FROM
    Sales.SalesOrderHeader
GROUP BY
    CustomerID
HAVING
    COUNT(*) > 5;


--4
SELECT
    ProductSubcategoryID,
    AVG(ListPrice) AS OrtalamaFiyat
FROM
    Production.Product
WHERE 
    ProductSubcategoryID IS NOT NULL
GROUP BY
    ProductSubcategoryID
HAVING
    AVG(ListPrice) > 1000;


--5 
SELECT
    JobTitle,
    COUNT(*) AS CalisanSayisi
FROM 
    HumanResources.Employee
GROUP BY
    JobTitle
HAVING
    COUNT(*) >= 2;


--6
SELECT
    YEAR(OrderDate) as YIL,
    SUM(TotalDue) as TOPLAMCIRO,
    COUNT(*) AS SIPARISSAYISI
FROM 
    Sales.SalesOrderHeader
GROUP BY 
    YEAR(OrderDate)
HAVING 
    SUM(TotalDue) > 10000000
ORDER BY 
    yil;