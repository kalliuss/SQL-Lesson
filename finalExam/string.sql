
--1
SELECT
    FirstName,
    LastName,
    CONCAT(FirstName, ' ', LastName) AS TamAd
FROM
    Person.Person;


--2
SELECT 
    UPPER(Name) AS UrunAdi
FROM 
    Production.Product;
-- kucuk harf icin lower

--3
SELECT 
    FirstName
FROM
    Person.Person
WHERE
    LEN(FirstName) > 8;
-- LEN sondaki boşlukları saymaz. Saymak için DATALENGTH() kullanılır.


--4
SELECT
    LEFT(Name, 10) AS ILK10,
    RIGHT(Name, 15) AS SON5
FROM
    Production.Product;
-- İki fonksiyon arasında bir bölüm almak için SUBSTRING(metin, başlangıç, uzunluk) kullanılır. 


-- ! 5
SELECT
    Name,
    CHARINDEX('Bike', Name) AS BikeKonumu
FROM
    Production.Product
WHERE
    Name LIKE '%Bike%';


-- ! 7 
SELECT 
    FirstName,
    REPLACE(FirstName, 'a', '@') AS Replaced
FROM
    Person.Person
WHERE
    FirstName LIKE '%a%';