-- CreateView 

CREATE VIEW ulkeler AS 
SELECT DISTINCT country AS unique_country
FROM Customers;
go
SELECT * FROM ulkeler;
go

-- AS: Kullanımı Aliasing --
SELECT CompanyName AS ŞirketAd FROM Customers;
SELECT ContactName AS Kontaktlar,CompanyName AS ŞirketAd FROM Customers;

-- Unique Values: Benzersiz değerler --

SELECT * FROM Customers;

--// DISTINCT tekrarı engeller

SELECT DISTINCT Country AS ülke ,City AS şehir  FROM Customers;

-- // TOP()

SELECT TOP(2) Country, ContactName FROM Customers;