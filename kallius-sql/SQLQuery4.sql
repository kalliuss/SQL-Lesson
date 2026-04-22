-- INSERT KULLANIMI (YENI KAYIT EKLEME)

INSERT INTO Musteri (MusteriNo, Ad, Soyad, Adres, TEL)
VALUES (240103408, 'Kaan', 'Bilgili', 'Ankara / Yenimahalle', '531 435 6502');


INSERT INTO Musteri (MusteriNo, Ad, Soyad, Adres, TEL, UlkeKOD)
VALUES (240103455, 'Ali', 'Başarır', 'Ankara / Yenimahalle', '0555 555 5555', 'TR');

INSERT INTO Saticilar (SaticiNo, Marka, UlkeKod, TEL)
VALUES (0000000, 'LcW', 'TR', '0312 000 00 00');


-- UPDATE

UPDATE Musteri SET UlkeKOD = 'TR' WHERE UlkeKOD IS NULL;
--NULL KONTROLU IS ILE OLUR
UPDATE Musteri SET UlkeKOD = 'DE' WHERE Ad = 'Ali';  

--UPDATE Saticilar SET SaticiNo = 103405 WHERE SaticiNo = 0;


-- DELETE
-- ulke kodu null olanlari silmis olalim 
DELETE FROM Musteri WHERE UlkeKOD IS NULL;


