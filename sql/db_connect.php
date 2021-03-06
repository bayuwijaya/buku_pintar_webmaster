<!DOCTYPE html>
<html>
    <head>
        <title> Koneksi Database Menggunakan HTML, PHP dan MySQL</title>
    </head>
    <body>
        <?php
            mysql_connect('localhost', 'root', '');
            $data_buffer = mysql_query("SELECT * FROM bisnis.infokaryawan");

            // while($data = mysql_fetch_row($data_buffer)) 
            // {
            //     echo("Ini adalah datanya $data[0], $data[1]");
            //     echo("<br>");
            // }

            // while($data = mysql_fetch_assoc($data_buffer))
            // {
            //     echo("Ini adalah datanya ".$data['kota'].", ".$data['provinsi']);  
            //     echo("<br>");   
            // }

            while($data = mysql_fetch_array($data_buffer))
            {
                echo("Ini adalah datanya ".$data['nama'].", ".$data['marga']);
                echo("&nbsp;&nbsp;");
                echo("Tinggal di ".$data[4].", ".$data[5]);
                echo("<br>");
            }

            mysql_close();
        ?>
    </body>
</html>