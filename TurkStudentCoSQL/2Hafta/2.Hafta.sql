-- SORU 1 : Invoice tablosunda, tüm değerleri NULL olan kayıtların sayısını bulmanız isteniyor. Bu işlemi tek bir sorgu ile yapmalısınız. 
-- Sorguyu yazdıktan sonra, PostgreSQL’in sol alt kısmındaki Row sayısını, SQL sorgunuzda yorum satırında belirtmeniz gerekmektedir. 
---------------------------------------------------------

SELECT COUNT(*) AS "Tüm_Satırlar_Null_Olan"
FROM invoice
WHERE invoice IS NULL; 
-- WHERE rows_to_json(invoice)::TEXT={} json formatına çevrilerekte yapılabilir.


----------------------------------------------------------
-- SORU 2 : Koordinasyondaki kişiler, Total değerlerinde bir hata olduğunu belirtiyorlar. 
-- Bu değerlerin iki katını görmek ve eski versiyonlarıyla birlikte karşılaştırmak için bir sorgu yazmanız isteniyor.
-- Ayrıca, verilerin daha rahat takip edilebilmesi için, tablonun yeni versiyonuna ait kolona göre büyükten küçüğe sıralama yapılması isteniyor.
------------------------------------------------------------

SELECT 
    total AS "Eski_Total",         
    total * 2 AS "Yeni_Total"      
FROM invoice
ORDER BY "Yeni_Total" DESC;       

--------------------------------------------------------------
-- SORU 3 : Adres kolonundaki verileri, soldan 3 karakter ve sağdan 4 karakter alarak birleştirmeniz ve "Açık Adres" olarak yazmanız isteniyor. 
-- Ayrıca, bu yeni açık adresi 2013 yılı ve 8. ay’a göre filtrelemeniz gerekiyor. 
---------------------------------------------------------------

SELECT 
    CONCAT(LEFT(billing_address, 3),'***', RIGHT(billing_address, 4)) AS "Açık Adres",
    invoice_date  
FROM Invoice
WHERE EXTRACT(YEAR FROM invoice_date) = 2013  
  AND EXTRACT(MONTH FROM invoice_date) = 8;

-- '***' : OPSİYONEL OLARAK KULLANDIM.
