
# Primary Key(PK)
Tabloyu benzersiz şekilde tanımlayan sütun ya da sütunlar. Genellikle otomatik artan değerlerdir.

## Birincil Anahtar (PK) verilen sütunlar:

**Members tablosunda:** member_id

**Courses tablosunda:** course_id

**Categories tablosunda:** category_id

**CourseCategories tablosunda:** Birleşik PK: (course_id, category_id)

**Enrollments tablosunda:** enrollment_id

**Certificates tablosunda:** certificate_id

**CertificateAssignments tablosunda:** assignment_id

**BlogPosts tablosunda:** post_id

# Foreign Key(FK)
Diğer tablolara referans olan ve aralarındaki ilişkiyi tanımlayan sütunlardır.

## Yabancı Anahtar verilen sütunlar:

**CourseCategories tablosunda:** course_id → Courses(course_id), category_id → Categories(category_id)

**Enrollments tablosunda:** member_id → Members(member_id), course_id → Courses(course_id)

**CertificateAssignments tablosunda:** member_id → Members(member_id), certificate_id → Certificates(certificate_id)

**BlogPosts tablosunda:** author_id → Members(member_id)

# VARCHAR(n) 
Varchar veri tipi, değişken uzunlukta karakter dizilerini saklar. Burada n, sütunun alabileceği maksimum karakter sayısını belirtir.

## VARCHAR kullanılan sütunlar:

**Members tablosunda:** username, email, first_name, last_name

**Courses tablosunda:** title, instructor_info

**Categories tablosunda:** category_name

**Certificates tablosunda:** certificate_code

**BlogPosts tablosunda:** title

# TIMESTAMP 
Timestamp veri tipi, tarih ve saati saklamak için kullanılır. Bir TIMESTAMP değeri, bir zaman dilimindeki bir anı belirtir ve genellikle tarih (Yıl-Ay-Gün) 
ve saat (Saat:Dakika:Saniye) bilgilerini içerir.

## TIMESTAMP kullanılan sütunlar:
**Members tablosunda:** registration_date

**Enrollments tablosunda:** enrollment_date

**BlogPosts tablosunda:** publish_date

# TEXT
Çok büyük metin verilerini saklamak için kullanılır. Bir TEXT alanı, sınırsız uzunlukta karakter dizileri içerebilir. Bu, uzun açıklamalar, blog içerikleri 
veya makaleler gibi veriler için kullanışlıdır.

## TEXT kullanılan sütunlar:

**Courses tablosunda:** description

**BlogPosts tablosunda:** content

# DATE
Date veri tipi, yalnızca tarih bilgisini saklamak için kullanılan bir veri tipidir. DATE, yıl, ay ve gün bilgilerini tutar, ancak saat, dakika, saniye gibi zaman bilgilerini içermez.

## DATE kullanılan sütunlar:

**Courses tablosunda:** start_date, end_date

**Certificates tablosunda:** issue_date

**CertificateAssignments tablosunda:** assigned_date

# UNIQUE
Bir sütundaki veya birden fazla sütundaki değerlerin birbirinden benzersiz olmasını sağlayan bir kısıtlamadır.

## UNIQUE kullanılan sütunlar:

**Members tablosunda:** username, email

**Certificates tablosunda:** certificate_code

**Enrollments tablosunda:** (member_id, course_id) birleşik olarak

