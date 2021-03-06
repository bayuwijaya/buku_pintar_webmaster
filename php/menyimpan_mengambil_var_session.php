<!DOCTYPE html>
<html>
    <head>
        <title>Menyimpan &amp; Mengambil Variabel Session </title>
    </head>
    <body>
        <?php
            session_start();
            $_SESSION['pageviews'] = 1; // proses menyimpan data session
            echo "Halaman di Lihat = ".$_SESSION['pageviews']; //cara mengambil data session 
        ?>
    </body>
</html>