<!DOCTYPE html>
<html>
    <head>
        <title> Homepage Pribadi Saya </title>
    </head>
    <body>
        <center><b> Selamat Datang <br/> di Halaman Guest Book </b></center>
        <form method="POST" action="">
            Nama Anda : <input type="text" size="10" maxlength="40" name="nama"> <br/>
            Komentar Anda : <textarea rows="5" cols="20" name="komentar"></textarea> <br/>
            <input type="submit" value="Kirim">
        </form>
    </body>
</html>
<?php
    echo ("Data yang anda input adalah <br>");
    echo ($_POST['nama']);
    echo ("<br/>");
    echo ($_POST['komentar']);
    mysql_connect('localhost','proyek','password');
    mysql_db_query('proyek', "INSERT INTO guestbook (nama, komentar) VALUES ('".$_POST['nama']."', '".$_POST['komentar']."')");
?>