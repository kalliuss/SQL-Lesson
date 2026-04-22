-- ? LEN() UZUNLUK

SELECT 
    description, 
    LEN(description) AS description_length
FROM
    grid;


-- ? LEFT() baştan karakter alma

SELECT 
    TOP 5 -- 5 tane getir
    description,
    LEFT(description, 1) AS description_start  -- baş harflerini getirecektir
FROM
    grid;


-- ? RIGHT() sondan karakter alma

SELECT 
    TOP 5
    description,
    RIGHT(description, 1) AS description_end  -- son harflerini getirecektir
FROM
    grid;


-- ? CHARINDEX() bir karakterin konumunu bulma

SELECT 
    CHARINDEX('P', description) AS char_location,
    description  
FROM
    grid; -- varsa basta ise 1 yoksa 0 verir


-- ? SUBSTRING() bir karakter dizisinin bir bölümünü alma

SELECT 
    description,
    SUBSTRING(description, 1, 5) AS description_substring -- baştan 5 karakteri alır
FROM
    grid;


-- ? REPLACE() bir karakter dizisindeki belirli bir karakteri değiştirme

SELECT 
    TOP(5) description,
    REPLACE(description, ' ', '_') AS description_replaced -- boşlukları alt çizgi ile değiştirecektir
FROM
    grid;


