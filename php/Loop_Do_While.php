<!DOCTYPE html>
<html>
    <head>
        <title>Perulangan Do While</title>
    </head>
    <body>
        <?php
            $counter = 0;
            while($counter > 1)
            {
                echo "Isi blok kode while";
                $counter--;
            }
        ?>
        <br />
        <?php
            $counter2 = 0;
            do 
            {
                echo "Isi Blok Kode Do While";
                echo "<br>";
                $counter2--;
            }
            while($counter2 > 1);
        ?>
    </body>
</html>