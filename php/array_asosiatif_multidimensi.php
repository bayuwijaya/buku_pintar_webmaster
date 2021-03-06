<!DOCTYPE html>
<html>
    <head>
        <title>Array Multidimensi Pacar</title>
    </head>
    <body>
        <?php
            $pacarku = array(
                        array(
                            'nama'   =>  "Rosa",
                            'sifat'  =>  "Baik Hati",
                            'umur'   =>  17
                            ),
                        array(
                            'nama'  =>  "Ruby",
                            'sifat' =>  "Tidak Sombong",
                            'umur'  =>  27
                             ),
                        array(
                            'nama'  =>  "Sri",
                            'sifat' =>  "Rajin Menabung",
                            'umur'  =>  37
                            ),
                        array(
                            'nama'  => "Nety",
                            'sifat' => "Pemalas",
                            'umur'  => 15
                            )
                        );

            print $pacarku[2]['sifat'];
            print "<br />";
            print $pacarku[3]['umur']
        ?>
    </body>
</html>