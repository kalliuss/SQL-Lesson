-- ? CASE WHEN
-- SQL`in IF ELSE yapisidir. Veriyi kategorize etmek, kosullu sutun uretme, pivot benzeri toplamlar ypamak icin kullanilir.



--1 
SELECT top 5
    Name,
    ListPrice,
    CASE 
        WHEN ListPrice = 0 THEN 'BELES'
        WHEN ListPrice < 100 THEN 'Ucuz'
        WHEN ListPrice BETWEEN 100 AND 500 THEN 'Orta'
        WHEN ListPrice BETWEEN 500 AND 2000 THEN 'Pahali'
        ELSE 'Luks'
    END AS FiyatKategorisi
FROM
    Production.Product;


--2 
SELECT
    BusinessEntityID,
    JobTitle,
    Gender,
    CASE GENDER
        WHEN 'M' THEN 'Erkek'
        WHEN 'F' THEN 'Kadin'
        ELSE 'Belirtilmemis'
    END AS Cinsiyet
FROM
    HumanResources.Employee;


--3 
SELECT 
    SalesOrderID, 
    TotalDue,
    CASE 
        WHEN TotalDue >= 100000 THEN '%15'
        WHEN TotalDue >= 50000 THEN '%10'
        WHEN TotalDue >= 10000 THEN '%5'
        ELSE 'Indirim Yok'
    END AS IndirimOrani,
    CASE 
        WHEN TotalDue >= 100000 THEN TotalDue * 0.85
        WHEN TotalDue >= 50000 THEN TotalDue * 0.90
        WHEN TotalDue >= 10000 THEN TotalDue * 0.95
        ELSE TotalDue
    END AS IndirimliFiyat
FROM
    Sales.SalesOrderHeader;

-- EN YUKSEK KOSUL EN USTTE OLMALI AKSI HALDE HER SIPARIS WHENE TAKILIR


--4 
SELECT 
    YEAR(OrderDate) AS Yil,
    SUM(CASE
        WHEN MONTH(OrderDate) BETWEEN 1 AND 6 THEN 1 
        ELSE 0
    END) AS IlkYariSiparisSayisi,
    SUM(CASE
        WHEN MONTH(OrderDate) BETWEEN 7 AND 12 THEN 1 
        ELSE 0
    END) AS IkinciYariSiparisSayisi
FROM
    Sales.SalesOrderHeader
GROUP BY
    YEAR(OrderDate)
ORDER BY
    Yil DESC;


--TODO TEKRAR BAK BUNA --5
SELECT 
    SUM(CASE WHEN COLOR = 'Red' THEN ListPrice ELSE 0 END) AS 
KirmiziToplam,
    SUM(CASE WHEN COLOR = 'Black' THEN ListPrice ELSE 0 END) AS 
SiyahToplam,
    SUM(CASE WHEN Color = 'Silver' THEN ListPrice ELSE 0 END) AS 
GumusToplam, 
    SUM(CASE WHEN Color IS NULL THEN ListPrice ELSE 0 END) AS 
RenksizToplam
FROM
    Production.Product;
    

--6 
SELECT 
    pe.FirstName, 
    pe.LastName,
    sp.SalesQuota,
    sp.SalesYTD,
    CASE 
        WHEN sp.SalesQuota IS NULL THEN 'Hedef Belirtilmemis'
        WHEN sp.SalesYTD >= sp.SalesQuota * 1.10 THEN 'Hedef Ustu (%10+)'
        WHEN sp.SalesYTD >= sp.SalesQuota THEN 'Hedef Tutturuldu' 
        WHEN sp.SalesYTD >= sp.SalesQuota * 0.80 THEN 'Hedefe Yaklasildi (%90+)'
        ELSE 'Hedefin Cok Altinda'
    END AS PerformansKategorisi
FROM Sales.SalesPerson sp 
INNER JOIN Person.Person pe 
    ON sp.BusinessEntityID = pe.BusinessEntityID
ORDER BY sp.SalesYTD DESC;