-- alter kullanimi

-- sutun ekleme ve silme

ALTER TABLE [Musteri] DROP COLUMN UlkeMKOD;  -- silme
ALTER TABLE [Musteri] ADD UlkeKOD CHAR(2);

-- sutun guncelleme 

ALTER TABLE [Musteri] ALTER COLUMN TEL CHAR(20);