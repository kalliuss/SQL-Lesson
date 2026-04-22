SELECT * FROM Orders;
SELECT * FROM Products;


-- as kullanimi
SELECT OrderID, CustomerID, Freight, Freight+Freight*0.20 AS Indirim, ShipCountry From Orders;


-- count
-- null olmayan toplam kayit sayisini verecektir

SELECT COUNT(*) as [Products Count] FROM Products;
SELECT COUNT(ProductName) as [Products Count] FROM Products; --product name e gore sayim yapar

SELECT COUNT(*) as [Products Count] FROM Products Where ProductName = 'Chai';  -- kac tane chai var


-- min

SELECT MIN(UnitPrice) FROM Products;


-- max 
SELECT MAX(UnitPrice) FROM Products;


-- AVG ORTALAMA DEGER

SELECT AVG(UnitPrice) FROM Products;

-- sum

SELECT SUM(UnitPrice) FROM Products;



-- ORDER BY

SELECT * FROM Products Order By ProductID desc; -- buyukten kucuge
SELECT * FROM Products Order By ProductID;

-- string de yaparsan a dan z ye - desc ile de z den a ya


SELECT * FROM Ogrenciler;