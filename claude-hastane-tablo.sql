-- Yatış yapan hastalar (sol tablo)
CREATE TABLE Admitted (
    Patient_ID   INT PRIMARY KEY,
    Name         VARCHAR(100),
    Admitted     DATE
);

-- Taburcu olan hastalar (sağ tablo)
CREATE TABLE Discharged (
    Discharge_ID INT PRIMARY KEY,
    Patient_ID   INT,          -- Admitted'a FK, ama ZORUNLU DEĞİL (bilerek)
    Discharged   DATE
);

INSERT INTO Admitted VALUES
(1, 'Ali Yılmaz',    '2024-01-10'),
(2, 'Ayşe Kaya',     '2024-01-12'),
(3, 'Mehmet Demir',  '2024-01-15'),
(4, 'Zeynep Çelik',  '2024-01-18');  -- henüz taburcu edilmedi

INSERT INTO Discharged VALUES
(101, 1, '2024-01-20'),   -- Ali taburcu edildi
(102, 2, '2024-01-22'),   -- Ayşe taburcu edildi
(103, 3, '2024-01-25'),   -- Mehmet taburcu edildi
(104, 99, '2024-01-15');  -- Patient_ID=99 → Admitted'da YOK (RIGHT JOIN için)

