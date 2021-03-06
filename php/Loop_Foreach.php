<!DOCTYPE html>
<html>
    <head>
        <title>Perulangan FOREACH</title>
    </head>
    <body>
        <?php
            $umurKaryawan;
            $umurKaryawan["Adhi"]   = "38";
            $umurKaryawan["Osa"]    = "16";
            $umurKaryawan["Ivan"]   = "35";
            $umurKaryawan["Andry"]  = "46";
            $umurKaryawan["Yahya"]  = "34";

            foreach($umurKaryawan as $key => $value)
            {
                echo "Nama : $key, Umur : $value <br />";
            }
        ?>
        <br />
        <?php
            $umurKaryawan;
            $umurKaryawan["Adhi"]   = "38";
            $umurKaryawan["Osa"]    = "16";
            $umurKaryawan["Ivan"]   = "35";
            $umurKaryawan["Andry"]  = "46";
            $umurKaryawan["Yahya"]  = "34";

            foreach($umurKaryawan as $nama => $umur)
            {
                echo "Nama : $nama, Umur : $umur <br />";
            }
        ?>
    </body>
</html>