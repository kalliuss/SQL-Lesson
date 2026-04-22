CREATE TABLE Customers (
    CustomerID CHAR(5) NOT NULL,
    CompanyName NVARCHAR(50) NOT NULL,
    Country NVARCHAR(20),
    CONSTRAINT PK_Customers PRIMARY KEY (CustomerID)
);

CREATE TABLE Employees (
    EmployeeID INT NOT NULL,
    FirstName NVARCHAR(20) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    CONSTRAINT PK_Employees PRIMARY KEY (EmployeeID)
);

CREATE TABLE Orders (
    OrderID INT NOT NULL,
    CustomerID CHAR(5),
    EmployeeID INT,
    Freight DECIMAL(10,2),
    ShipCountry NVARCHAR(20),
    CONSTRAINT PK_Orders PRIMARY KEY (OrderID)
);

CREATE TABLE Products (
    ProductID INT NOT NULL,
    ProductName NVARCHAR(50) NOT NULL,
    UnitPrice DECIMAL(10,2),
    CONSTRAINT PK_Products PRIMARY KEY (ProductID)
);

CREATE TABLE OrderDetails (
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    UnitPrice DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2)
);


CREATE TABLE Ogrenciler (
    OgrenciID INT PRIMARY KEY IDENTITY(1,1),  --IDENTITY bir başlangıç noktasından başlatıp öge girildikçe sayı arttıracaktır. 
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    BolumID INT,
);


INSERT INTO Ogrenciler (Ad, Soyad, BolumID) VALUES
('Kaan', 'Bilgili', 1),
('Ahmet', 'Yılmaz', 2),
('Merve', 'Kaya', 1),
('Burak', 'Demir', 3),
('Elif', 'Şahin', 2);



-- Veri ekle
INSERT INTO Customers VALUES
('ALFKI', 'Alfreds Futterkiste', 'Germany'),
('FRANK', 'Frankenversand', 'Germany'),
('FRING', 'Fring & Co', 'France'),
('VINET', 'Vins et alcools Chevalier', 'France'),
('BOLID', 'Bólido Comidas preparadas', 'Spain');

INSERT INTO Employees VALUES
(1, 'Nancy', 'Davolio'),
(2, 'Andrew', 'Fuller'),
(3, 'Janet', 'Leverling'),
(4, 'Margaret', 'Suyama');

INSERT INTO Orders VALUES
(10248, 'VINET', 1, 32.38, 'France'),
(10249, 'ALFKI', 2, 11.61, 'Germany'),
(10250, 'FRANK', 3, 65.83, 'Germany'),
(10251, 'FRING', 4, 41.34, 'France'),
(10252, 'BOLID', 1, 51.30, 'Spain');

INSERT INTO Products VALUES
(1, 'Chai', 18.00),
(2, 'Chang', 19.00),
(3, 'Aniseed Syrup', 10.00),
(4, 'Ikura', 31.00),
(5, 'Tofu', 23.25);

INSERT INTO OrderDetails VALUES
(10248, 1, 14.00, 12, 0.00),
(10248, 2, 9.80, 10, 0.00),
(10249, 3, 42.40, 5, 0.20),
(10250, 4, 7.70, 35, 0.15),
(10251, 5, 16.80, 3, 0.05),
(10252, 1, 64.80, 2, 0.05);


