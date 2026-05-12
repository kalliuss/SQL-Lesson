-- 1 
SELECT 
    Name,
    ProductNumber,
    ListPrice
FROM
    Production.Product;


-- 2
SELECT 
    *
FROM  Production.Product
WHERE Color = 'Red';


--3 
SELECT 
    *
FROM  Production.Product
WHERE ListPrice BETWEEN 100 AND 500;

-- VEYA 3.2
SELECT 
    *
FROM  Production.Product
WHERE ListPrice >= 100 AND ListPrice <= 500;

--4 
SELECT 
    FirstName AS StartsWithA
FROM Person.Person
WHERE FirstName LIKE 'A%'
ORDER BY LastName ASC;


--5 
SELECT 
    JobTitle
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Manager%';


-- 6

SELECT 
    SalesOrderID, OrderDate, TotalDue
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2022-05-30' AND '2024-05-30'
    AND TotalDue > 10000
ORDER BY OrderDate DESC;
-- veri tabanı tarihleri kapsamıdığından değiştirdim


