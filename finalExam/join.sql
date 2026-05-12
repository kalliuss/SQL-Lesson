--1
SELECT
    p.Name AS UrunAdi,
    ps.Name AS AltKategori
FROM 
    Production.Product p
INNER JOIN 
    Production.ProductSubcategory ps 
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID


--2 
SELECT 
    p.Name AS UrunAdi,
    pc.Name AS Kategori,
    ps.Name AS AltKategori,
    p.ListPrice
FROM
    Production.Product p
INNER JOIN
    Production.ProductSubcategory ps 
    ON p.ProductSubCategoryID = ps.ProductSubcategoryID
INNER JOIN
    Production.ProductCategory pc 
    ON ps.ProductCategoryID = pc.ProductCategoryID

        -- ! LEFT JOIN DENEMESI
        -- SELECT
        --     p.Name as UrunAdi,
        --     pc.Name AS AnaKategori
        -- FROM 
        --     Production.Product p
        -- LEFT JOIN
        --     Production.ProductCategory pc 
        --     ON p.ProductSubCategoryID = pc.ProductCategoryID


--3 
SELECT 
    ab.FirstName,
    ab.LastName,
    e.JobTitle,
    d.Name AS Departman
FROM
    HumanResources.Employee e
INNER JOIN Person.Person ab
    ON e.BusinessEntityID = ab.BusinessEntityID
INNER JOIN HumanResources.EmployeeDepartmentHistory edh
    ON e.BusinessEntityID = edh.BusinessEntityID
INNER JOIN HumanResources.Department d
    ON edh.DepartmentID = d.DepartmentID
WHERE
    edh.EndDate IS NULL;


--4 
SELECT
    p.Name,
    SUM(sod.OrderQty) AS ToplamSatis
FROM 
    Production.Product p
LEFT JOIN
    Sales.SalesOrderDetail sod 
    ON p.ProductID = sod.ProductID
GROUP BY
    p.Name
ORDER BY
    ToplamSatis DESC;
