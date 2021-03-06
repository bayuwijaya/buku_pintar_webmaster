<!DOCTYPE html>
<html>
    <head>
        <title> Implementasi Array pada PHP </title>
    </head>
    <body>
        <!-- Array Numerik -->
        <!-- create melalui fungsi -->
        <?php
            $hewan = array("gajah", "buaya", "ayam");
            print "$hewan[2]";
        ?>
        <br />
        <!-- deklarasi manual -->
        <?php
            /*  $animal[0] = "elepant";
                $animal[1] = "crocodille"; 
                $animal[2] = "chicken";
                $animal[3] = "camel";   */

                $animal[] = "elepant";
                $animal[] = "crocodille";
                $animal[] = "chicken";
                $animal[] = "camel";
                print $animal[3];
        ?>
        <br />
        <!-- Array Asosiatif -->
        <!-- Mengeset langsung dalam fungsi array() -->
        <?php
            $pacarku = array(
                'nama'   => "Juwita",
                'sifat'  => "Baik hati, tidak sombong dan rajin menabung",
                'rambut' => "panjang terurai",
                'umur'   => 17
            );

            print $pacarku['sifat'];
        ?>
        <br />
        <?php
            $mygirlfriend['nama']   = "juwita";
            $mygirlfriend['sifat']  = "Baik hati, tidak sombong dan rajin menabung";
            $mygirlfriend['rambut'] = "panjang terurai";
            $mygirlfriend['umur']   = 17;

            print $mygirlfriend['rambut'];
        ?>
        
    </body>
</html>