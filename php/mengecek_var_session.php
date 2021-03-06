<!DOCTYPE html>
<html>
    <head>
        <title>Mengecek Variabel Session </title>
    </head>
    <body>
        <?php
            session_start();
            if(isset($_SESSION['pageviews']))
            {
                $_SESSION['pageviews'] = $_SESSION['pageviews'] + 1;
            }
            else
            {
                $_SESSION['pageviews'] = 1;
            }
            echo "Halaman di Lihat = ".$_SESSION['pageviews'];
        ?>
    </body>
</html>