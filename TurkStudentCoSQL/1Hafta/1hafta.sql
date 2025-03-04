-- SORU 1 : BELİRLİ KOLONLARI SEÇME 
-- Çalışanların sadece FirstName, LastName ve Salary bilgilerini getiren bir SQL sorgusu yazınız. 
------------------------------------------------
SELECT firstname, lastname, salary
FROM employees;

------------------------------------------------
-- SORU 2 : DISTINCT KOMUTU İLE TEKRARLARI ÖNLEME 
-- Çalışanların çalıştıkları departmanları benzersiz olarak listeleyen bir SQL sorgusu yazınız.
------------------------------------------------
SELECT DISTINCT d.departmentname             
FROM employees e
JOIN departments d ON e.departmentid = d.Departmentid;

----------------------------------------------------
-- SORU 3 : BELİRLİ DEPARTMANA AİT ÇALIŞANLARI LİSTELEME
-- Sadece IT departmanında çalışanların bilgilerini getiren bir SQL sorgusu yazınız.
----------------------------------------------------

SELECT e.*
FROM employees e
JOIN departments d ON e.departmentid = d.departmentid
WHERE d.departmentname = 'IT';

-----------------------------------------------------
-- SORU 4 : MAAŞA GÖRE SIRALAMA
-- Çalışanları maaşlarına göre büyükten küçüğe sıralayan bir SQL sorgusu yazınız. 
----------------------------------------------------

SELECT salary
FROM employees 
ORDER BY salary DESC;

----------------------------------------------------
-- SORU 5 : KOLONLARI BİRLEŞTİRME
-- Çalışanların FirstName ve LastName alanlarını birleştirerek, tam adlarını içeren yeni bir kolon oluşturan bir SQL sorgusu yazınız.  
----------------------------------------------------

SELECT firstname || ' ' || lastname  as fullname
FROM employees;


