-- INNER JOIN
SELECT 
	o.OrderID,
	c.CompanyName,
	c.Country,
	o.OrderDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.Country = 'Germany'
ORDER BY o.OrderDate DESC;

-- kısaca her 2 tabloda ortak eleman ile birleştirilir. CustomerID ortak elemandır

