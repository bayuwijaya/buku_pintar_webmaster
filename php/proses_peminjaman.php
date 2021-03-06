<!DOCTYPE html>
<html>
    <head>
        <title>Form Hasil Transaksi Peminjaman</title>
    </head>
    <body>
        <?php
            $pinjaman   = $_POST['kolom_pinjaman'];
            $suku_bunga = .10;

            HutangAnda($pinjaman, $suku_bunga);

            function HutangAnda($pinjaman, $suku_bunga)
            {
                $pembayaran_bulanan = ($pinjaman * $suku_bunga);
                print "Anda sebaiknya mencicil Rp.".$pembayaran_bulanan." tiap bulan!";
            }
        ?>
    </body>
</html>