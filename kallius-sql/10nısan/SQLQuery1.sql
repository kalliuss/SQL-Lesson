-- distinct -> tekrarlayan verileri temizler

--Select distinct ShipCity from Orders; 


-- ** group by -> bir özelliğe göre bir grup oluşturulabilen kayıtlar zerinde işlem yapmak için kullanılır

--SELECT * FROM Orders;
--SELECT CustomerID, COUNT (*) FROM Orders GROUP BY CustomerID;

SELECT EmployeeID, COUNT (*) FROM Orders GROUP BY EmployeeID;


-- having -> gruplama yapılan kayıtlar üzerinde koşul tanımlamak adına

--SELECT EmployeeID, COUNT (*) FROM Orders GROUP BY EmployeeID HAVING COUNT(*) < 50;

SELECT * FROM [Order Details];
SELECT ProductID, COUNT (*) FROM [Order Details] GROUP BY ProductID;
SELECT ProductID, COUNT (*) FROM [Order Details] GROUP BY ProductID ORDER BY COUNT (*) DESC; -- EN ÇOK DAN EN AZA
SELECT  ProductID, COUNT (*) FROM [Order Details] GROUP BY ProductID HAVING COUNT(*) > 50;

SELECT [Order Details].ProductID, ProductName, COUNT (*) SatilanUrunSayisi FROM [Products] INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
GROUP BY [Order Details].ProductID, ProductName; -- ÖNEMLİ

SELECT CategoryID, [Order Details].ProductID, COUNT([Order Details].ProductID) FROM Products join [dbo].[Order Details] on products.productID=[Order Details].productID group by CategoryID, [Order Details].ProductID ORDER BY COUNT([Order Details].ProductID) DESC;