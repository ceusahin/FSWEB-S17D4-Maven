-- 1) Öğrenci tablosundaki tüm kayıtları listeleyin.
SELECT * FROM ogrenci;

-- 2) Öğrenci tablosundaki kız öğrencileri listeleyin.
SELECT * FROM ogrenci WHERE cinsiyet = 'K';

-- 3) Öğrenci tablosunda kaydı bulunan sınıfların adını her sınıf bir kez görüntülenecek şekilde listeleyiniz. 
SELECT DISTINCT sinif FROM ogrenci;

-- 4) Öğrenci tablosunda, 10A sınıfında olan kız öğrencileri listeleyiniz.
SELECT * FROM ogrenci WHERE sinif = '10A' AND cinsiyet = 'K';

-- 5) Öğrenci numarası 5 ile 10 arasında olan Kız öğrencileri listeleyiniz.
SELECT * FROM ogrenci WHERE ogrno < 10 AND ogrno > 5 AND cinsiyet = 'K';

-- 6)  Öğrencileri adına göre sıralayınız (alfabetik)
SELECT * FROM ogrenci ORDER BY ad ASC;

-- 7) 10A sınıfındaki öğrencileri okul numarasına göre azalan olarak sıralayınız.
SELECT * FROM ogrenci ORDER BY ogrno ASC LIMIT 1;

-- 8) Öğrenciler tablosundaki en genç öğrenciyi listeleyiniz.
SELECT * FROM ogrenci ORDER BY dtarih DESC LIMIT 1;

-- 9) Öğrenciler tablosundaki en yaşlı öğrenciyi listeleyiniz.
SELECT * FROM ogrenci ORDER BY dtarih ASC LIMIT 1;

-- 10) İkinci harfi E olan ogrencileri listeleyiniz.
SELECT * 
FROM ogrenci
WHERE SUBSTRING(ad, 2, 1) = 'e';
