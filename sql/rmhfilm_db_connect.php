<!DOCTYPE html>
<html>
    <head>
        <title> Update Fungsi Koneksi MySQL -> MySQLi </title>
    </head>
    <body>
        <?php
            include("mysql_connect.ini");

            $kueri = "SELECT film.judul, detailmenyewa.harga_sewa, kelompokfilm.jenis, COUNT(detailmenyewa.kode_film)
                      FROM   film, detailmenyewa, kelompokfilm
                      WHERE  film.kode_film = detailmenyewa.kode_film AND film.id_jenis = kelompokfilm.id_jenis
                      GROUP BY film.kode_film";   
 
            $data_buffer = mysqli_query($con, $kueri);
            mysqli_close($con);
        ?>
        <table border="1">
        <?php
            echo("<tr align=\"center\"><td>Judul Film</td><td>Harga Sewa</td><td>Jenis Film</td><td>Frekuensi Disewa</td></tr>");
            while($data = mysqli_fetch_row($data_buffer))
            {
                echo("<tr align=\"center\">");
                echo("<td>$data[0]</td>");
                echo("<td>$data[1]</td>");
                echo("<td>$data[2]</td>");
                echo("<td>$data[3]</td>");
                echo("</tr>");
            }
        ?>
        </table>
    </body>
</html>