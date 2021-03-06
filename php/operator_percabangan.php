<!DOCTYPE html>
<html>
    <head>
        <title>Contoh Operator Percabangan</title>
    </head>
    <body>
        <?php
            $WarnaKesukaan1 = "Biru";
            if ($WarnaKesukaan1 == "Biru") 
            {
                print("Saya juga suka warna biru lho!");
            }
        ?>
        <br />
        <?php
            $WarnaKesukaan2 = "kuning";
            if ($WarnaKesukaan2 == "biru")
            {
                print("Saya juga suka warna biru lho!");
            }
            else
            {
                print("Anda tidak suka biru?! Dasar!");
            }
        ?>
        <br />
        <?php
            $WarnaKesukaan3 = "kuning";
            if ($WarnaKesukaan3 == "biru")
            {
                print("Saya juga suka warna biru lho!");
            } 
            else if ($WarnaKesukaan3 == "kuning")
            {
                print("Oh, Anda menyukai warna kuning ya ?");
            }
            else 
            {
                print("Anda tidak suka biru & kuning ?! Dasar!");
            }
        ?>
    </body>
</html>