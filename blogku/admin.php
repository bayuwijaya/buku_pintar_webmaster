<!DOCTYPE html>
<html>
    <head>
        <title> Dashboard Admin </title>
    </head>
    <body>
        <?php
            require('sql_connect.inc'); // require berarti wajib di jalankan 
            include('cek.inc');         // include berarti sewaktu2 butuh akan dijalankan

            // Menghubungi database MySQL kita
            konek_sql('blog');

            // Ini adalah query untuk keperluan admin;
            // Kita mengambil semua artikel yang ada beserta seluruh kolomnya.
            $query = 'SELECT * FROM blog ORDER BY tanggal DESC';

            // Baris kode ini untuk mengeksekusi query 
            // Jika kita memperoleh hasil positif, akan dilanjutkan dengan proses loop while
            if($r = mysql_query($query))
            {
                // Membuat Tampilan Tabel
        ?>
                <table align="center" border="1" width="80%">
                    <tr>
                        <td colspan="2">
                            <b><center>Pengelolaan Berita</center></b>
                        </td>
                    </tr>
                    <?php
                        while($baris = mysql_fetch_array($r)) // memasukkan data ke dalam bentuk tabel
                        {
                            $judul   = $baris['judul'];
                            $user    = $baris['user'];
                            $isi     = $baris['isi']; 
                            $id      = $baris['id'];

                            $tanggal = date('M j y g:i A', strtotime($baris['tanggal'])); // Data tanggal disesuaikan agar tampil dengan baik
                            $isi     = nl2br($isi);
                    ?>
                        <tr>
                            <td colspan="2">
                                <table align="center" border="0" width="100%">
                                    <tr>
                                        <td><b><?php echo $judul; ?></b> - Diposting oleh : <b><?php echo $user; ?></b></td>
                                        <td><div align="right"><?php echo $tanggal; ?></div></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><?php echo $isi; ?></td>
                        </tr>
                        <tr>
                            <td>
                                <table align="center" width="200" border="0">
                                    <tr>
                                        <td>
                                            <form action="edit.php" method="POST">
                                                <input type="hidden" name="id" value="<?php echo $id; ?>">
                                                <input type="submit" name="submit" value="Edit">
                                            </form>
                                        </td>
                                        <td>
                                            <form action="hapus.php" method="POST">
                                                <input type="hidden" name="id" value="<?php echo $id; ?>">
                                                <input type="submit" name="submit" value="Hapus">
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    <?php
                        }
                    ?>
                </table>
        <?php
            }
            else
            {
                // kalu query tidak berhasil.
                die("<p>Query tidak berhasil karena : <b>".mysql_error()."</b></p>\n");
            }
            mysql_close(); // Menutup sesi MySQL 
        ?>
            <form action="tambah.php" method="POST">
                <table align="center">
                    <tr>
                        <td>Judul Posting : </td>
                        <td><input type="text" name="judul" size="40" max-size="100" /></td>
                    </tr>
                    <tr>
                        <td>User : </td>
                        <td><input type="text" name="user" size="40" max-size="100" /></td>
                    </tr>
                    <tr>
                        <td>Isi Posting : </td>
                        <td><textarea name="isi" cols="100" rows="10"></textarea></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="submit" value="Kirim"></td>
                    </tr>
                </table>
            </form>
    </body>
</html>