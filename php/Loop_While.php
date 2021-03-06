<!DOCTYPE html>
<html>
    <head>
        <title>Perulangan WHILE</title>
    </head>
    <body>
        <?php
            $Angka_Saya = 1;
            while($Angka_Saya <= 10)
            {
                print ("$Angka_Saya");
                print ("<br />");
                $Angka_Saya++;
            }
        ?>
        <br />
        <?php
            $Angka_Saya = 1;
            // mendefinisikan tabel
            echo ("<table border=\"1\">");
            while($Angka_Saya <= 10)
            {
            /*  Tag pembuatan baris baru ini cukup ditulis sekali saja,
                loop while akan mengulanginya secara otomatis sesuai 
                jumlah loop */

                echo ("<tr>");
                $Angka_Saya2 = 1;
                while($Angka_Saya2 <= 30) {
                    print ("<td align=\"center\"> $Angka_Saya </td>");
                    $Angka_Saya2++;
                }
                echo ("</tr>");

                $Angka_Saya++;
            }
            echo ("</table>");
        ?>
    </body>
</html>