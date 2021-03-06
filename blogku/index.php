<!DOCTYPE html>
<htmL>
    <head>
        <title> Selamat Datang di Blog Saya </title>
    </head>
    <body>
        <?php
            require('sql_connect.inc'); // require berarti dibutuhkan / wajib dijalankan kalo tidak skrip "FATAL ERROR"
            $namadb = "blog";
            // Menghubungi database MySQL kita.
            konek_sql($namadb);

            $query = "SELECT judul, isi, tanggal, user 
                      FROM blog
                      ORDER BY tanggal DESC";
        ?>

        <table align="center" border="0" width="80%">
            <tr>
                <td colspan="2" background="header.jpg">
                    <center><font size="5" face="arial" style="color:white"> MYBLOG PROJECT </font></center>
                    <br /><br />
                    <font size="3" face="arial" style="color:white"><b> Blog buatan saya sendiri </b></font>
                    <br /><br />
                </td>
            </tr>
            <tr>
                <td><a href="login.php">Admin</a></td>
            </tr>
        </table>
        <?php
            if($r = mysql_query($query))
            {
                // mengirimkan query ke server MySQL
                while($baris = mysql_fetch_array($r))
                {
                    //melakukan input data ke dalam tabel
                    //Loop while mengambil semua data dalam array $r
                    
                    $tanggal = date('M j y g:i A', strtotime($baris['tanggal']));
                    // Data waktu kita ubah formatnya agar bisa tampil dengan baik

                    $user  = $baris['user'];
                    $judul = $baris['judul']; 
                    $isi   = $baris['isi'];
                    $isi   = nl2br($isi);
        ?>

        <table align="center" border="0" width="80%">
            <tr>
                <td>
                    <b><?php echo $judul; ?></b> - Di posting oleh: <b><?php echo $user; ?></b>
                </td>
                <td>
                    <div align="right"><?php echo $tanggal; ?></div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <?php echo $isi; ?>
                </td>
            </tr>
        </table>

        <br />

        <?php            
                }
            }
            else
            {
                die();
                // query tidak bekerja
            }    

            mysql_close();
        ?>
    </body>
</htmL>