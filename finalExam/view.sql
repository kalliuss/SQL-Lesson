--1

CREATE VIEW vw_PahaliUrunler AS 
SELECT 
    Name,
    ProductNumber,
    Color,
    ListPrice
FROM Production.Product
WHERE ListPrice > 1000;


SELECT * FROM vw_PahaliUrunler;


--2
CREATE VIEW vw_AktifCalisanListesi AS 
SELECT pe.FirstName, 
       pe.LastName, 
       e.JobTitle, 
       e.HireDate 
FROM HumanResources.Employee e 
INNER JOIN Person.Person pe 
    ON e.BusinessEntityID = pe.BusinessEntityID 
WHERE e.CurrentFlag = 1;

SELECT * FROM vw_AktifCalisanListesi;


--3
CREATE VIEW vw_UrunKategoriDetay AS
SELECT 
    p.Name AS Urun,
    ps.Name AS AltKategori,
    pc.Name AS AnaKategori,
    p.ListPrice
FROM Production.Product p
INNER JOIN Production.ProductSubcategory ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
INNER JOIN Production.ProductSubcategory pc
    ON ps.ProductSubcategoryID = pc.ProductSubcategoryID

SELECT * FROM vw_UrunKategoriDetay;


--4 
CREATE VIEW vw_MusteriSiparisOzet AS 
SELECT 
    COUNT(*) AS SiparisSayisi,
    SUM(TotalDue) AS ToplamCiro
FROM Sales.SalesOrderHeader
GROUP BY CustomerID;

SELECT * FROM vw_MusteriSiparisOzet;


--5
CREATE VIEW vw_SatisTemsilcisiPerformans AS 
SELECT 
    pe.FirstName,
    pe.LastName,
    sp.TerritoryID,
    sp.SalesYTD,
    sp.SalesLastYear
FROM Person.person pe
INNER JOIN Sales.SalesPerson sp
    ON pe.BusinessEntityID = sp.BusinessEntityID;

SELECT * FROM vw_SatisTemsilcisiPerformans WHERE TerritoryID IS NOT NULL;


--6 
CREATE VIEW vw_HicSatilmamisUrunler AS
SELECT 
    p.ProductID,
    p.Name,
    p.ProductNumber
FROM Production.Product p
LEFT JOIN Sales.SalesOrderDetail sod
    ON p.ProductID = sod.ProductID
WHERE sod.ProductID IS NULL;


SELECT * FROM vw_HicSatilmamisUrunler;