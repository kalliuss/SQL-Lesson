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


-- ! SYNTAX
/*
* SELECT
* 	table_A.columnX,
* 	table_A.columnY,
* 	table_B.columnZ
* FROM table_A
* INNER JOIN table_B ON table_A.foreign_key = table_B.primary_key;
*/