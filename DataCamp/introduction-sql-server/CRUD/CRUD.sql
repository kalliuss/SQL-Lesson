-- CREATE TABLE Ankara (
--     id INT PRIMARY KEY,
--     name VARCHAR(50),
--     population INT
-- )



-- -- ! INSERT UPDATE DELETE

-- INSERT INTO Ankara (id, name, population) 
-- VALUES 
-- (2, 'Batıkent', 6000000);

-- -- ? INSERT SELECT


-- CREATE TABLE Istanbul (
--     id INT PRIMARY KEY,
--     name VARCHAR(50),
--     population INT
-- );


-- INSERT INTO Istanbul (id, name, population)
-- SELECT id, name, population
-- FROM Ankara
-- WHERE population > 5600000;


-- select * from Istanbul;



-- ? UPDATE 

-- UPDATE Istanbul
-- SET population = population + 1000000
-- WHERE name = 'Batıkent';

SELECT * FROM Istanbul;

SELECT * FROM Ankara;

UPDATE Ankara
SET name = 'Çankaya'
WHERE name = 'Ankara';

SELECT * FROM Ankara ORDER BY population desc;


-- ! DELETE

Delete 
FROM Istanbul
WHERE name = 'Batıkent';

select * from Istanbul;


-- ! tablodaki tüm değerleri tekte silme 
TRUNCATE TABLE Istanbul;


select * from Istanbul;
