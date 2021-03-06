<!DOCTYPE html>
<html>
    <head>
        <title> Operator Logika </title>
    </head>
    <body>
        <!-- BENAR jika baik $a dan $b keduanya BENAR -->
        <?php
            $a = 90;
            $b = 100;
            $c = ($a == 100);
            $d = ($b == 80);

            if ($c and $d)
            {
                print "benar";
            }
            else
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika salah satu dari $a atau $b BENAR atau Keduanya benar -->
        <?php
            $a = 100;
            $b = 50;
            if (($a == 100) or ($b == 80))
            {
                print "benar";
            }
            else 
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika salah satu dari $a atau $b BENAR, tetapi tidak keduanya -->
        <?php
            $a = 100;
            $b = 50;
            if (($a == 100) xor ($b == 80))
            {
                print "benar";
            }
            else
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika $a tidak BENAR --> 
        <?php
            $a = 10;
            if (!($a == 100))
            {
                print "benar";
            }
            else
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika baik $a dan $b keduanya BENAR -->
        <?php
            $a = 100;
            $b = 80;
            if (($a == 100) && ($b == 80))
            {
                print "benar";
            }
            else
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika salah satu dari $a atau $b BENAR atau keduanya BENAR-->
        <?php
            $a = 10;
            $b = 80;
            if (($a == 100) || ($b == 80))
            {
                print "benar";
            }
            else
            {
                print "tidak benar";
            }
        ?>
    </body>
</html>