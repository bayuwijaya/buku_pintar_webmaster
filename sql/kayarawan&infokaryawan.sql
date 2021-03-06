C:\Users\myasus>cd \xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 5
Server version: 10.1.19-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> CREATE DATABASE bisnis;
Query OK, 1 row affected (0.01 sec)

MariaDB [(none)]> use bisnis;
Database changed
MariaDB [bisnis]> CREATE TABLE karyawan (id INT(3) NOT NULL AUTO_INCREMENT, nama_belakang VARCHAR(50), nama_depan VARCHAR(25), jabatan VARCHAR(10) DEFAULT 'staf' NULL, PRIMARY KEY(id));


MariaDB [bisnis]> DESCRIBE karyawan;
MariaDB [bisnis]> DROP TABLE karyawan;

MariaDB [bisnis]> CREATE TABLE karyawan (id INT(3) NOT NULL AUTO_INCREMENT, full_name VARCHAR(50), job_desk VARCHAR(50), age INT(3), sallary BIGINT(15), PRIMARY KEY(id));

USE bisnis;
INSERT INTO karyawan (full_name, age, job_desk, sallary) VALUES ('Lara Croft', 28, 'Sekretaris', 1950000);
INSERT INTO karyawan (full_name, age, job_desk, sallary) VALUES ('Bambang Gentolet', 32, 'Programmer', 4530000);
INSERT INTO karyawan (full_name, age, job_desk, sallary) VALUES ('Dicky Sumilar', 45, 'Programmer II', 7502000);

USE bisnis;
SELECT * FROM karyawan;

-- Membuat Table Infokaryawan
USE bisnis;
CREATE TABLE infokaryawan (nama VARCHAR(25) NOT NULL, marga VARCHAR(10) NOT NULL, id CHAR(5) NOT NULL, umur CHAR(3) NOT NULL, kota VARCHAR(10) NOT NULL, provinsi VARCHAR(15) NOT NULL);


-- Insert Data Tabel infokaryawan
USE bisnis;
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Bambang', 'Lukito', 99980, 45, 'Magelang', 'Jawa Tengah');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Retno', 'Julaika', 99982, 25, 'Yogyakarta', 'Yogyakarta');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Marven', 'Pagaribuan', 88232, 32, 'Semarang', 'Jawa Tengah');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('MeryA', 'Andani', 88233, 32, 'Bantul', 'Yogyakarta');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Salim', 'Gunawan', 98002, 42, 'Kudus', 'JawaTengah');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Sugiarto', 'Lumbono', 92001, 23, 'Pekalongan', 'JawaTengah');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Andi', 'Priyanto', 22322, 35, 'Tegal', 'JawaTengah');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Mery', 'Lestari', 32326, 52, 'Purwokerto', 'JawaTengah');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Erika', 'Waluyo', 32327, 60, 'Temanggung', 'JawaTengah');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Lumintu', 'Rahayu', 32380, 22, 'Parakan', 'JawaTengah');
INSERT INTO infokaryawan (nama, marga, id, umur, kota, provinsi) VALUES ('Andi', 'Sapta', 32382, 22, 'Kudus', 'JawaTengah');

-- Statement SELECT
USE bisnis;
SELECT nama, kota FROM infokaryawan WHERE nama LIKE 'Bam%';
-- menampilkan semua nama yang diawali dengan Bam, Ingat kembali, String harus diapit oleh tanda kutip tunggal
SELECT nama FROM infokaryawan WHERE nama LIKE '%s';
-- mengambil semua nama yang diakhiri dengan huruf S 
SELECT * FROM infokaryawan WHERE nama = 'Bambang';
-- menampilkan karyawan yang namanya 'Bambang'

-- Latihan Statement SELECT
SELECT nama, marga, kota FROM infokaryawan;
-- menampilkan isi kolom nama, marga, kota dari tabel infokaryawan
SELECT nama, kota, umur FROM infokaryawan WHERE umur > 30;
-- menampilkan isi kolom nama, kota, umur dari tabel infokaryawan dimana syarat kondisinya isi kolom umur > 30 
SELECT nama, marga, kota, provinsi FROM infokaryawan WHERE marga LIKE 'J%';
-- menampilkan isi kolom nama, marga, kota, provinsi dari tabel infokaryawan dimana syarat kondisinya isi kolom marga harus berawalan huruf J 
SELECT * FROM infokaryawan;
-- menampilkan isi semua kolom dari tabel infokaryawan 
SELECT nama, marga FROM infokaryawan WHERE marga LIKE '%o';
-- menampilkan isi kolom nama, marga dari tabel infokaryawan dimana syarat kondisinya isi kolom marga harus berakhiran huruf o 
SELECT nama, marga, umur FROM infokaryawan WHERE marga LIKE '%iyan%';
-- menampilkan isi kolom nama, marga, umur dari tabel infokaryawan dimana syarat kondisinya isi kolom marga harus diantara huruf iyan 
SELECT * FROM infokaryawan WHERE nama = 'Andi';
-- menampilkan semua isi kolom dari tabel infokaryawan dimana syarat kondisinya isi kolom nama sama dengan 'Andi'

-- Test SELECT
-- 1. Menampilkan marga dan umur untuk semua orang dalam tabel
SELECT marga, umur FROM infokaryawan;
-- 2. Menampilkan nama, marga dan kota untuk orang-orang yang tidak berasal dari kudus 
SELECT nama, marga, kota FROM infokaryawan WHERE kota <> 'kudus';
-- 3. Menampilkan semua kolom dari para karyawan yang berumur lebih dari 40 tahun 
SELECT * FROM infokaryawan WHERE umur > 40;
-- 4. Menampilkan nama dan marga karyawan yang marganya diakhiri dengan "an" 
SELECT nama, marga FROM infokaryawan WHERE marga LIKE '%an';
-- 5. Menampilkan semua kolom untuk karyawan yang namanya "Mery" 
SELECT * FROM infokaryawan WHERE nama = 'Mery';
-- 6. Menampilkan semua kolom untuk karyawan yang namanya mengandung kata "Mery" 
SELECT * FROM infokaryawan WHERE nama LIKE '%Mery%'; 

-- Statement UPDATE
UPDATE infokaryawan SET kota = 'Muntilan' WHERE id = 99980;
UPDATE infokaryawan SET umur = umur+1 WHERE nama = 'Retno' AND marga = 'Julaika';

-- Statement DELETE
-- Berfungsi Menghapus Seluruh isi Record/Baris dalam sebuah Tabel 
DELETE FROM infokaryawan;
-- Berfungsi Menghapus isi Record/Baris dalam sebuah Tabel dengan syarat suatu kondisinya 
DELETE FROM infokaryawan WHERE marga = 'Lukito';
-- Berfungsi Menghapus isi Record/Baris dalam sebuah Tabel dengan kondisi 2 Syarat / Salah satunya 
DELETE FROM infokaryawan WHERE nama = 'Bambang' OR marga = 'Sapta';

-- Statement DROP 
-- Berfungsi Menghapus Database Beserta Seluruh Tabelnya 
DROP DATABASE bisnis;
-- Berfungsi Menghapus Tabel Beserta Seluruh Isi Data Record/Baris 
DROP TABLE infokaryawan;

-- Lebih Lanjut tentang SELECT
-- Format Umum SELECT

SELECT   "ALL|DISTINCT" kolom1, kolom2
FROM     tabel1, tabel2
WHERE    kondisi
GROUP BY daftar_kolom
HAVING   kondisi
ORDER BY daftar_kolom "ASC|DESC"
LIMIT    numbers ;

SELECT nama, marga, umur FROM infokaryawan WHERE umur > 50;
-- Statement diatas akan memilih semua nilai kolom nama, marga dan umur dari tabel infokaryawan yang umurnya lebih dari 50 tahun

SELECT nama, marga, kota FROM infokaryawan WHERE nama LIKE 'Mer%';
-- Statement diatas akan memilih semua nilai kolom nama, marga dan kota dari tabel infokaryawan yang namanya diawali dengan 'Mer'

SELECT DISTINCT provinsi FROM infokaryawan;
-- Statement ini akan menampilkan semua provinsi yang unik dalam tabel infokaryawan 

SELECT ALL provinsi FROM infokaryawan;
-- Statement ini akan menampilkan semua provinsi yang sama & unik dalam tabel infokaryawan 

-- Latihan Review SELECT
SELECT idpelanggan, nama_barang, harga FROM pemesanan_barang WHERE idpelanggan = 10449;

SELECT * FROM pemesanan_barang WHERE nama_barang = 'Tenda';

SELECT idpelanggan, tanggal_pemesanan, nama_barang FROM pemesanan_barang WHERE nama_barang LIKE 'S%';

SELECT DISTINCT nama_barang FROM pemesanan_barang; 

SELECT purchase.tanggal_pemesanan, costumer.nama, costumer.kota, purchase.nama_barang, purchase.jumlah, purchase.harga
FROM pelanggan AS costumer, pemesanan_barang AS purchase
WHERE costumer.idpelanggan = purchase.idpelanggan AND purchase.jumlah > 1 AND purchase.harga >= 150000;

-- Fungsi Agregat
 /* 
    Fungsi Agregat digunakan untuk melakukan perhitungan pada "kolom data numerik" hasil dari perintah SELECT
    fungsi2 tersebut pada dasarnya melakukan proses terhadap hasil pemilihan data dari kolom tertentu. Anda akan mempelajari 
    disini karena mereka akan anda perlukan untuk mempelajari topik berikutnya, "GROUP BY". Meskipun fungsi agregat diperlukan
    oleh klausul "GROUP BY", mereka dapat digunakan tanpa klausul tersebut.

    Example
 */  
    SELECT AVG(harga) FROM pemesanan_barang;
/* 
   Perintah diatas akan menghasilkan hasil tunggal yang merupakan 
   nilai rata-rata dari semua yang dihasilkan dari kolom harga pada tabel
   pemesanan_barang. Anda juga bisa menambahkan klausa WHERE untuk mencari
   rata-rata dari baris-baris tertentu saja.

   Contoh :
   Misalnya anda hanya memerlukan rata-rata harga barang yang jumlah stoknya 1,
   maka querynya bisa seperti ini.
*/
    SELECT AVG(harga) FROM pemesanan_barang WHERE jumlah = 4;
/*
   Contoh lain :
*/
    SELECT COUNT(*) FROM pemesanan_barang;
/*
   Perintah tersebut agak berbeda dibandingkan fungsi agregat lain
   karena tidak ada satu kolom-pun yang dijadikan referensi. perintah ini  
   akan menghasilkan jumlah baris dalam tabel pemesanan_barang.
*/
    SELECT COUNT(*) FROM pemesanan_barang WHERE jumlah > 1;
/* 
    Fungsi MIN
    Menghasilkan nilai terkecil pada kolom yang ditentukan
*/    
    SELECT MIN(harga) AS smallest_price FROM pemesanan_barang;
/*
    Fungsi MAX
    Menghasilkan nilai terbesar pada kolom yang ditentukan 
*/
    SELECT MAX(harga) AS largest_price FROM pemesanan_barang;
/*
    Fungsi SUM
    Menghasilkan jumlah dari nilai-nilai pada kolom yang ditentukan
*/
    SELECT SUM(harga) FROM pemesanan_barang;
/*
    Fungsi AVG
    Menghasilkan nilai rata-rata dari kolom yang ditentukan 
*/
    SELECT AVG(harga) FROM pemesanan_barang WHERE tanggal_pemesanan = '1999-07-01';    
/* 
    Fungsi COUNT
    Menghasilkan Jumlah baris pada kolom yang ditentukan
*/
    SELECT COUNT(idpelanggan) FROM pemesanan_barang WHERE harga > 380000;
/*
    
-- GROUP BY
/* 
   Klausul GROUP BY akan mengelompokkan baris-baris berisi data dalam kolom-kolom yang anda tentukan dan memungkinkan penerapan fungsi agregat 
   terhadap satu atau lebih kolom. anda akan lebih mudah memahami dengan melihat contohnya nanti.

    Syntax klausul GROUP BY
*/
        SELECT kolom1, SUM(kolom2)
        FROM "daftar-tabel"
        GROUP BY "daftar-kolom";
/*
    Misalkan Anda ingin membuat daftar gaji tertinggi dari setiap departemen
*/
    SELECT MAX(gaji), departemen FROM infokaryawan GROUP BY departemen;

/*
    Perintah tersebut akan memilih gaji maksimum dari orang-orang yang berada di setiap departemen
    Pada dasarnya, yang akan ditampilkan adalah gaji orang terbesar dari setiap departemen. Ingatlah,
    Anda juga dapat melakukan pengelompokkan dengan lebih dari satu kolom. Pengelompokkan akan dilakukan 
    secara berurutan mulai dari kolom yang paling dulu anda tuliskan.

    Sebagai contoh, silahkan lihat lagi tabel pemesanan_barang. katakanlah anda ingin mengelompokkan
    pemesanan dengan jumlah 1, 2, 3, dan seterusnya. Jika anda ingin menentukkan berapa harga yang termahal 
    dari setiap jumlah pembelian yang dikelompokkan tersebut (semua jumlah pembelian 1, 2, 3, dst) Anda 
    akan memasukkan :  
*/

    SELECT jumlah, MAX(harga) FROM pemesanan_barang GROUP BY jumlah;

-- HAVING
/*
    Klausul HAVING memungkinkan anda untuk menentukan kondisi pada baris dalam setiap grup - atau dengan kata lain,
    baris mana yang harus dipilih akan ditentukan berdasarkan kondisi yang anda tentukan. Klausul HAVING harus disertai
    klausul GROUP BY

     Syntax klausul HAVING
*/
        SELECT kolom1, SUM(kolom2)
        FROM "daftar-tabel"
        GROUP BY "daftar-kolom"
        HAVING "kondisi";
/*
    Katakanlah anda memiliki tabel karyawan yang terdiri dari kolom nama, departemen, gaji dan umur karyawan anda. Jika
    anda ingin memilih gaji rata-rata untuk setiap karyawan untuk setiap departemen, anda dapat menggunakan :
*/

    SELECT departemen, AVG(gaji) FROM infokaryawan GROUP BY departemen; 

/*
    Namun demikian, jika anda hanya ingin menghitung dan menampilkan rata-rata untuk gaji di atas 2700 saja, maka query
    tersebut harus kita tambah klausul HAVING seperti ini.
*/
    SELECT departemen, AVG(gaji) FROM infokaryawan GROUP BY departemen HAVING AVG(gaji) > 2700;

-- Latihan Review GROUP BY & HAVING
SELECT provinsi, COUNT(*) AS jumlah_pelanggan FROM pelanggan GROUP BY provinsi HAVING COUNT(*) > 1;

SELECT nama_barang, MAX(harga), MIN(harga) FROM pemesanan_barang GROUP BY nama_barang HAVING MAX(harga) > 300000;

SELECT idpelanggan, COUNT(*), jumlah FROM pemesanan_barang GROUP BY idpelanggan HAVING jumlah > 1 ;

-- ORDER BY
/*
    ORDER BY adalah klausul opsional yang akan memungkinkan anda untuk menampilkan hasil query anda berurutan 
    (baik urutan naik maupun turun) berdasarkan kolom yang anda tentukan untuk diurutkan

     Syntax klausul ORDER BY
*/
        SELECT kolom1, SUM(kolom2)
        FROM "daftar-table"
        ORDER BY 
        "daftar-kolom" [ASC | DESC];
/*
    [] = Opsional
    Perintah di atas akan memilih id_karyawan, departemen, nama, umur, dan gaji dari tabel infokaryawan 
    di mana departemennya adalah 'Sales' dan akan menampilkan daftar secara berurutan kecil ke besar (default) 
    berdasarkan gaji mereka.
    Sebagai catatan, anda bisa memilih ASC dan DESC untuk mengurutkan dengan cara berbeda.

        ASC  = Urutan kecil ke besar - default
        DESC = Urutan besar ke kecil

    Contoh
*/
    SELECT id, departemen, nama, umur, gaji FROM infokaryawan WHERE departemen = 'Marketing' ORDER BY gaji; 
/*
    Jika Anda ingin untuk mengurutkan berdasarkan beberapa kolom, anda harus memisahkan antar kolom dengan koma.
    jika salah satu kolom tidak menuliskan cara pengurutan [ASC | DESC] maka kolom itu di urutkan 'ASC' secara 
    DEFALUT.
*/
    SELECT id, departemen, nama, umur, gaji FROM infokaryawan WHERE departemen = 'Marketing' ORDER BY umur, gaji DESC;
/*
    Pernyataan SQL diatas memilih id, departemen, nama, umur, gaji dari tabel "infokaryawan", diurutkan berdasarkan 
    kolom "umur" dan "gaji". Ini berarti bahwa ia diurutkan berdasarkan 'umur' ASC, tetapi jika beberapa baris memiliki 'umur' yang sama,
    ia diurutkan berdasarkan gaji dengan cara 'DESC':
*/
-- Menggabungkan Kondisi dan Operator Boolean 
/*
    Operator AND dapat digunakan untuk menggabungkan 2 kondisi atau lebih pada klausul 'WHERE'. kedua sisi AND harus bernilai benar
    agar kondisinya terpenuhi dan baris yang diinginkan dapat tampil.
*/
    SELECT kolom1, SUM(kolom2)
    FROM "daftar-table"
    WHERE "kondisi1" AND "kondisi2";
/*
    Operator OR juga dapat digunakan untuk menggabungkan 2 kondisi atau lebih pada klausul WHERE. Namun demikian,
    hanya salah satu sisi saja yang harus bernilai benar agar kondisi yang diinginkan dapat terpenuhi. Operator OR
    mensyaratkan salah satu atau kedua sisi bernilai benar
*/
    SELECT id, nama, marga, jabatan, gaji FROM infokaryawan WHERE gaji >= 2700 AND jabatan = 'Staff';
/*
    Perintah di atas akan memilih id, nama, marga, jabatan, dan gaji dari tabel infokaryawan yang gajinya 
    lebih dari atau sama dengan 2700 dan jabatannya 'Staff'. kedua kondisi ini harus terpenuhi agar record 
    tertentu dapat ditampilkan. jika salah satu tidak terpenuhi, maka record tidak akan ditampilkan. 
    Meskipun tidak disyaratkan, anda dapat menggunakan tanda kurung pada kondisi yang anda tentukan untuk 
    memudahkan pembacaan.
*/
    SELECT id, nama, marga, jabatan, gaji FROM infokaryawan WHERE (gaji >= 2700) AND (jabatan = 'Manager');

    SELECT nama, marga, jabatan, gaji FROM infokaryawan WHERE (departemen = 'Admin') OR (departemen = 'IT');
/*
    Perintah tersebut akan memilih nama, marga, jabatan, dan gaji dari tabel infokaryawan di mana departemennya 'Admin' atau 'IT'
*/

-- Latihan Review Menggabungkan 'Kondisi' dan 'Operator Boolean'
SELECT idpelanggan, tanggal_pemesanan, nama_barang FROM pemesanan_barang WHERE (nama_barang <> 'Sepatu Salju') XOR (nama_barang <> 'Pelindung Telinga'); 

SELECT nama_barang, harga FROM pemesanan_barang WHERE (nama_barang LIKE 'S%') OR (nama_barang LIKE 'P%') OR (nama_barang LIKE 'F%');

-- Operator Kondisional IN dan BETWEEN
/*
    Penggunaan Operator dalam klausul WHERE sudah sangat membantu kita memilih data mana saja yang akan ditampilkan. namun demikian, 
    pada saat kriterianya menjadi sangat banyak, maka penulisan query menggunakan operator logika dan perbandingan akan menghasilkan 
    query yang sangat panjang
    MySQL memiliki solusi lain untuk mengatasi masalah ini yaitu menggunakan operator kondisional IN dan BETWEEN

    Berikut bentuk umumnya
*/
    SELECT kol1, SUM(kol2) 
    FROM "daftar-table"
    WHERE kol3 IN (daftar-nilai);

    SELECT kol1, SUM(kol2)
    FROM "daftar-table"
    WHERE kol3 BETWEEN nilai1 AND nilai2;
/*
    Operator kondisional IN merupakan operator pengetesan untuk beberapa nilai sekaligus. untuk itu, operator tersebut digunakan 
    untuk menguji apakah sebuah nilai (yang ditulis sebelum keyword IN) berada dalam daftar nilai yang disediakan setelah keyword IN.
    Contoh :
*/
    SELECT id, marga, gaji FROM infokaryawan WHERE marga IN ('Siregar', 'Pasaribu', 'Saragih', 'Lumbono');
/*
    Perintah tersebut akan menampilkan id, marga, gaji dari tabel infokaryawan yang marganya siregar, pasaribu, saragih, atau lumbono.
    perintah tersebut akan memunculkan baris-baris yang memiliki salah satu dari nilai-nilai tersebut.
    Operator kondisional IN dapat ditulis juga dengan menggunakan kondisi gabungan menggunakan operator sama dengan yang dikombinasikan
    dengan OR dengan hasil yang sama persis
*/
    SELECT id, marga, gaji FROM Infokaryawan WHERE marga = 'Siregar' OR marga = 'Pasaribu' OR marga = 'Saragih' OR marga = 'Lumbono';
/*
    Jika anda bandingkan, operator IN jauh lebih pendek dan mudah untuk dibaca saat anda akan menguji lebih dari 2 atau 3 nilai. 
    Anda juga dapat menggunakan NOT IN untuk mengecualikan baris-baris dalam daftar anda 
*/
    SELECT id, marga, gaji FROM infokaryawan WHERE marga NOT IN ('Siregar', 'Pasaribu', 'Saragih', 'Lumbono');
/*
    Operator kondisional BETWEEN digunakan untuk menguji apakah sebuah nilai (yang ditulis sebelum keyword BETWEEN) berada
    "diantara: 2 nilai yang disebutkan sesudah keyword BETWEEN".
    Contoh :
*/ 
    SELECT id, umur, marga, gaji FROM infokaryawan WHERE umur BETWEEN 30 AND 40;
/*
    perintah akan memilih id, umur, marga, dan gaji dari tabel infokaryawan yang berumur 
    antara 30 dan 40 tahun (termasuk juga yang berumur 30 dan 40 tahun). Dapat juga ditulis tanpa operator 
    BETWEEN sebagai berikut : 
*/
    SELECT id, umur, marga, gaji FROM infokaryawan WHERE umur >= 30 AND umur <= 40;
/*
    Anda dapat juga menggunakan NOT BETWEEN untuk melakukan hal sebaliknya yaitu mengecualikan nilai di antara interval yang anda buat
*/
    SELECT id, umur, marga, gaji FROM infokaryawan WHERE umur NOT BETWEEN 30 AND 40;
/*

-- Operator Matematik
/*
    Standar ANSI mendukung 4 operator aritmetika pertama dari tabel berikut.
            Symbol              Fungsi
              +              penjumlahan
              -              pengurangan
              *              Perkalian
              /              Pembagian
              %              Modulus
    Implementasi : 
*/
    SELECT full_name, age + 1 AS age_nextyear FROM karyawan; -- penjumlahan

    SELECT full_name, age - 1 AS age_prevyear FROM karyawan; -- pengurangan

    SELECT idpelanggan, tanggal_pemesanan, nama_barang, jumlah * harga AS subtotal_item FROM pemesanan_barang WHERE jumlah > 1;  -- perkalian

    SELECT idpelanggan, tanggal_pemesanan, nama_barang, harga / jumlah AS price_item FROM pemesanan_barang WHERE jumlah > 1; -- pembagian

    SELECT idpelanggan, tanggal_pemesanan, nama_barang, harga % jumlah AS remainder FROM pemesanan_barang WHERE jumlah > 1; -- Modulus
/*
    Operator modulus menentukan sisa integer dari sebuah pembagian. Operator ini bukan standar ANSI, namun sebagian besar database memiliki
    operator ini
*/

-- Fungsi Matematika
/*
    Dalam latihan berikut, anda akan mempelajari beberapa fungsi matematika yang perlu anda pelajari karena anda sangat mungkin akan menggunakannya.
    fungsi-fungsi ini juga bukan merupakan standar ANSI, karena itu fungsi tersebut mungkin saja tidak ada pada RDBMS tertentu yang anda gunakan.
    Namun demikian, fungsi-fungsi tersebut tersedia pada beberapa database utama yang sering digunakan. 

    ABS(x)                  =   Menghasilkan nilai absolute dari x
*/
    SELECT ABS(-243.5);     =   243.5
/*
    SIGN(x)                 =   menghasilkan tanda dari inputan x seperti -1, 0, atau 1 (negatif, nol, or positif) fungsi sign() mengembalikan tanda dari sebuah angka. 
                                fungsi ini akan mengembalikan salah satu hal berikut:
                                    Jika nomor > 0, ia mengembalikan 1
                                    Jika nomor = 0, ia mengembalikan 0
                                    Jika nomor < 0, ia mengembalikan -1
*/
    SELECT SIGN(255.5);     =   1
    SELECT SIGN(0);         =   0
    SELECT SIGN(-12);       =   -1
/*
    MOD(x, y) atau x MOD y  =   modulus - menghasilkan sisa integer dari x dibagi y (sama seperti x % y)
*/
    SELECT MOD(18, 4);      =   2
    SELECT 18 MOD 4;        =   2     
/*
    FLOOR(x)                =   Menghasilkan nilai integer terbesar yang kurang dari atau sama dengan x. Mengembalikan nilai integer terbesar tidak lebih besar dari X.
                                Untuk argumen numerik nilai-eksak, nilai yang dikembalikan memiliki tipe numerik nilai-eksak. Untuk argumen string atau floating-point, 
                                nilai yang dikembalikan memiliki tipe floating-point.
*/
    SELECT FLOOR(25.75)     =   25
    SELECT FLOOR(-1.23)     =   -2
    SELECT FLOOR(1.23)      =   1
/*
    CEILING(x)              =   Menghasilkan nilai integer terkecil yang lebih dari atau sama dengan x. Mengembalikan nilai integer terkecil tidak lebih kurang dari X.
                                Untuk argumen numerik nilai-eksak, nilai yang dikembalikan memiliki tipe numerik nilai-eksak. Untuk argumen string atau floating-point, 
                                nilai yang dikembalikan memiliki tipe floating-point.      
*/
    SELECT CEILING(25.75)   =   26
    SELECT CEILING(-1.23)   =   -1
    SELECT CEILING(1.23)    =   2
/*
    CEIL(x)                 =   CEIL(x) adalah sinonim untuk CEILING(x). Fungsi ini sama dengan fungsi CEILING(x)
*/
    SELECT CEIL(45.50)      =   46
    SELECT CEIL(-10.95)     =   -10
    SELECT CEIL(10.95)      =   11
/*
    POWER(x, y)             =   Menghasilkan nilai x pangkat y. Mengembalikan argumen yang dinaikkan ke pangkat yang ditentukan. 
                                Mengembalikan nilai X yang dipangkatkan dari Y.
*/
    SELECT POWER(8, 3)      =   512
    SELECT POWER(4, 2)      =   16
    SELECT POWER(2, -2)     =   0,25
/*
    POW(X, y)               =   Menghasilkan nilai x pangkat y. Mengembalikan argumen yang dinaikkan ke pangkat yang ditentukan. 
                                Mengembalikan nilai X yang dipangkatkan dari Y.
*/
    SELECT POW(9, 4)        =   6561
    SELECT POW(8, 3)        =   512
    SELECT POW(10, -2)      =   0,01
/*
    ROUND(x)                =   Menghasilkan nilai x dibulatkan ke integer terdekat. menggunakan aturan berikut bergantung pada tipe argumen pertama :

                             A) Untuk bilangan nilai eksak, ROUND () menggunakan aturan "bulat setengah menjauh dari nol" atau "bulat menuju terdekat": 
                                Nilai dengan bagian pecahan 0,5 atau lebih besar dibulatkan ke atas ke bilangan bulat berikutnya jika positif atau turun 
                                ke bilangan bulat berikutnya jika negatif. (Dengan kata lain, nilai dibulatkan menjauh dari nol.) Nilai dengan bagian 
                                pecahan kurang dari 0,5 dibulatkan ke bawah ke bilangan bulat berikutnya jika positif atau naik ke bilangan bulat berikutnya
                                jika negatif.

                             B) Untuk nilai angka perkiraan, hasilnya bergantung pada library C. Pada banyak sistem, ini berarti ROUND() menggunakan aturan 
                                "bulat ke genap terdekat": Nilai dengan bagian pecahan tepat di tengah antara dua bilangan bulat yang dibulatkan ke bilangan bulat 
                                genap terdekat.

                                contoh berikut menunjukkan bagaimana pembulatan berbeda untuk nilai persis dan perkiraan :
*/
    SELECT ROUND(2.5)       =   3
    SELECT ROUND(2.75)      =   3
    SELECT ROUND(2.25)      =   2
    SELECT ROUND(-2.5)      =   -3
    SELECT ROUND(-2.75)     =   -3
    SELECT ROUND(-2.25)     =   -2
    SELECT ROUND(25E-1)     =   2 -- (krn bilangan floating point 25 x 10 pangkat -1 maka kalo diubah ke bentuk desimalnya menjadi 2.5)
    SELECT ROUND(9805E0)    =   9805
    SELECT ROUND(9805E3)    =   9805000
    SELECT ROUND(9805E-1)   =   980
    SELECT ROUND(9806E-1)   =   981
    SELECT ROUND(9805E-2)   =   98
    SELECT ROUND(9805E-3)   =   10
    SELECT ROUND(9405E-3)   =   9
/*
    ROUND(X, D)             =   Membulatkan argumen X ke tempat desimal D. Algoritme pembulatan bergantung pada tipe data X. secara default D adalah 0
                                jika tidak ditentukan. D dapat menjadi negatif sehingga digit X di kiri koma desimal dari nilai X menjadi nol.
                                Nilai absolut maksimum untuk D adalah 30; setiap digit yang melebihi 30 (atau -30) akan dipotong.
*/
    SELECT ROUND(1.298, 1)      =   1.3
    SELECT ROUND(1.298, 0)      =   1
    SELECT ROUND(99.999, 2)     =   100.00
    SELECT ROUND(135.375, 2)    =   135.38
    SELECT ROUND(345.156, 0)    =   345
    SELECT ROUND(150000, 2)     =   150.00
    SELECT ROUND(150, 2)        =   150
    SELECT ROUND(.12345678901234567890123456789012345, 35)  =   0.123456789012345678901234567890
    SELECT ROUND(25.234, -1)    =   30  --  nilai D negatif 1 maka nilai akhir yg harus diubah menjadi 0 adalah 1 digit sebelum koma
    SELECT ROUND(314.98, 0)     =   315 
    SELECT ROUND(314.98, -1)    =   310 --  nilai D negatif 1 maka nilai akhir yg harus diubah menjadi 0 adalah 1 digit sebelum koma
    SELECT ROUND(314.98, -2)    =   300 --  nilai D negatif 2 maka nilai akhir yg harus diubah menjadi 0 adalah 2 digit sebelum koma
    SELECT ROUND(314.98, -3)    =   0   --  nilai D negatif 3 maka nilai akhir yg harus diubah menjadi 0 adalah 3 digit sebelum koma
/*
    SQRT(x)                 =   Menghasilkan akar dari x. Mengembalikan akar kuadrat dari argumen. Mengembalikan akar kuadrat dari bilangan bukan negatif X.
*/
    SELECT SQRT(64)         =   8
    SELECT SQRT(13)         =   3.605551275463989
    SELECT SQRT(4)          =   2
    SELECT SQRT(20)         =   4.4721359549996
    SELECT SQRT(-16)        =   NULL
/*
    Sebagai contoh dalam query table
*/
    SELECT ROUND(sallary), full_name FROM karyawan; 
/*
    Perintah tersebut akan memilih gaji yang dibulatkan ke nilai integer terdekat dan nama dari tabel karyawan
*/

-- Penggabungan Tabel
/*
    Join memungkinkan anda untuk menghubungkan data dari dua atau lebih tabel menjadi sebuah hasil tunggal - menggunakan perintah
    SELECT tunggal. Anda dapat mengenali sebuah "JOIN" dalam sebuah perintah SQL jika perintah tersebut memiliki lebih dari satu 
    tabel setelah keyword FROM

    Contoh Syntax :
*/
    SELECT "daftar-kolom"
    FROM tabel1, tabel2
    WHERE "kondisi-pencarian"
/*
    kitq baru saja menghilangkan duplikasi data yang tidak perlu. Hal ini disebut dengan normalisasi database. Perhatikan bahwa setiap tabel memiliki
    kolom yang sama yaitu "id_pelanggan". kolom ini, yang berisi id pelanggan yang unik akan digunakan untuk menggabungkan kedua tabel.
    katakanlah anda ingin untuk memilih nama pelanggan dan nama barang yang mereka beli. berikut adalah contoh perintah penggabungan (JOIN) untuk melakukan
    hal tersebut.
*/
    SELECT pelanggan.nama, pelanggan.marga, pemesanan_barang.nama_barang FROM pelanggan, pemesanan_barang WHERE pelanggan.idpelanggan = pemesanan_barang.idpelanggan;
/*
    Join seperti ini dikenal dengan nama "inner join" atau "Equjoin". Join inilah yang merupakan tipe join yang umum digunakan. 
    Syntax yang anda lihat di atas dapat digunakan pada hampir semua sistem database. namun demikian, jika tidak dapat digunakan
    anda harus merujuk pada dokumentasi sistem database anda
*/
    SELECT pelanggan.nama, pelanggan.marga, pemesanan_barang.nama_barang FROM pelanggan INNER JOIN pemesanan_barang ON pelanggan.idpelanggan = pemesanan_barang.idpelanggan;
/*  Contoh lain  */
    SELECT infokaryawan.id, infokaryawan.marga, penjualan_karyawan.komisi FROM infokaryawan, penjualan_karyawan WHERE infokaryawan.id = penjualan_karyawan.id;

-- latihan
    SELECT pelanggan.idpelanggan, pelanggan.nama, pelanggan.marga, pembelian.tanggal_pemesanan, pembelian.nama_barang, pembelian.harga
    FROM pelanggan LEFT OUTER JOIN pemesanan_barang AS pembelian
    ON pelanggan.idpelanggan = pembelian.idpelanggan;

    SELECT pelanggan.idpelanggan, pelanggan.nama, pelanggan.marga, pelanggan.provinsi, pembelian.tanggal_pemesanan, pembelian.nama_barang, pembelian.harga
    FROM pelanggan LEFT OUTER JOIN pemesanan_barang AS pembelian
    ON pelanggan.idpelanggan = pembelian.idpelanggan
    ORDER BY pelanggan.provinsi DESC;