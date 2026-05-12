-- northwınd 4 tablo birleştirme

SELECT 
	* 
FROM 
	Suppliers INNER JOIN Products on Suppliers.SupplierID = Products.SupplierID
	INNER JOIN [Order Details] on Products.ProductID = [Order Details].ProductID
	INNER JOIN Orders on [Order Details].OrderID = Orders.OrderID;