<html>
    <head>
        <title> Contoh Halaman PHP </title>
    </head>
    <body>
        <font color="blue"> PHP kode saya akan membuat halaman ini menampilkan : </font>
        <?php
            print(" Anda berada di situs Prothelon! ");
        ?> 
        <p>
            <?php
                //Baris ini akan diabaikan. Catatan untuk kita sendiri
                //Saya membuat script ini sambil
                //Membaca, berenang dan menyelam.
                print(" Anda berada di situs Prothelon! ");
                print("<p>");
                /*
                    Tiga baris berikut ini juga akan diabaikan.
                    Dan jangan lupa untuk kembali ke situs ini setiap minggu
                    untuk melihat artikel/tutorial baru!
                */
            ?>

            <?php
                echo ("Tuliskan apa yang ingin anda tampilkan pada browser disini");
            ?>

            <?php
                // contoh pertama yang kita gunakan, phpversion ini adalah 
                // sebuah fungsi yang akan menampilkan versi PHP yang anda gunakan 

                phpversion();

                // berikutnya, kita coba menampilkan kode HTML
                // ke browser untuk membentuk
                // layout halaman yang kita tampilkan.
                // Dalam kasus contoh kali ini, kita akan menggunakan tag <p>,
                // tag <p> dapat diletakkan
                // dalam baris print yang sama seperti saat kita menuliskan
                // teks "Anda berada di situs prothelon.com"
                // di antara teks phpversion dan 
                // hal-hal lain di baris sesudahnya.

                print("<p>"); /* tag <p> digunakan untuk membuat paragraf baru */
                print(" Anda berada di situs Prothelon.com ");
                print("<p>");

                /*  fungsi "phpinfo" berikut ini akan menampilkan sebuah halaman
                    yang panjang yang memberikan kita informasi mengenai konfigurasi
                    versi PHP yang kita gunakan. Ini akan sangat berguna saat kita 
                    melakukan troubleshooting nantinya */

                phpinfo();
            ?>

            <?php
                $isi_variabel = "Ini isi awal variabel!";
                print("Menampilkan isi variabel awal : $isi_variabel " );
                print("<p>");
                $isi_variabel = "Ini isi variable setelah di update!";
                print("Isi variable setelah di update : $isi_variabel ");
            ?>

            <?php
                print("<br>");
                print(" \"Ini contoh escape characters\" ");
            ?>

        </p>
    </body>
</html>