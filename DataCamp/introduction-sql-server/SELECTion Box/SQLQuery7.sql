-- SIRALAMA VE FİLTRELEME

SELECT * FROM Products;


SELECT 
	ProductID,
	SupplierID
FROM
	Products
ORDER BY ProductID,SupplierID; -- artan sırada sırala

-- DESC 

SELECT 
	ProductID,
	SupplierID
FROM
	Products
ORDER BY ProductID DESC,SupplierID; -- PRODUCT ID BUYUKTEN KUCUGE


-- STRING SIRALAMA

SELECT 
	ProductName
FROM 
	Products
ORDER BY ProductName;  -- metin sıralama a'dan z'ye artan sıra


SELECT 
	ProductName 
FROM 
	Products
ORDER BY ProductName DESC; -- metin sıralama z den a ya azalan


-- WHERE 

SELECT 
	ProductID,
	ProductName
FROM
	Products
WHERE ProductID > 5 -- PRODUCTID 5 EN BUYUK OLANLARI AL
ORDER BY ProductID;

SELECT 
	ProductName,
	UnitPrice
FROM
	Products
WHERE UnitPrice < 18  
ORDER BY UnitPrice desc;


-- <> eşit olmama durumu

SELECT 
	ProductName,
	UnitPrice
FROM 
    Products
WHERE UnitPrice <> 17.45;


--  BETWEEN ve AND

SELECT 
	ProductName,
	UnitPrice
FROM 
    Products
WHERE UnitPrice  BETWEEN 15 AND 30  -- 15 30 dahil aralığı
ORDER BY UnitPrice desc;


SELECT 
	ProductName,
	UnitPrice
FROM 
    Products
WHERE UnitPrice NOT BETWEEN 15 AND 30  -- 15 30 dahil aralarındaki ddeğerler yok
ORDER BY UnitPrice desc;


-- IS NULL / IS NOT NULL

SELECT 
	TOP(6) UnitPrice,
	ProductName
FROM 
	Products
WHERE ProductName IS NULL; -- NULL OLAN DEGER YOK SASIRMA

SELECT 
	TOP(6) UnitPrice,
	ProductName
FROM 
	Products
WHERE ProductName IS NOT NULL;  -- NULL OLMAYAN 6 TANE GETİR