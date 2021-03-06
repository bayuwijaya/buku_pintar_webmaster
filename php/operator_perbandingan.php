<!DOCTYPE html>
<html>
    <head>
        <title> Operator Perbandingan </title>
    </head>
    <body>
        <!-- BENAR jika $a sama dengan $b -->
        <?php
            $a = "1";
            $b = 1;
            if ($a == $b)
            {
                print "benar";
            }
            else 
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika $a sama dengan $b, dan keduanya memiliki tipe data yang sama --> 
        <?php
            $a = "1";
            $b = 1;
            if ($a === $b)
            {
                print "benar";
            }
            else 
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika $a tidak sama dengan $b -->
        <?php
            $a = "1";
            $b = "2";
            if ($a != $b)
            {
                print "benar";
            }
            else 
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika $a tidak sama dengan $b -->
        <?php
            $a = "1";
            $b = "2";
            if ($a <> $b)
            {
                print "benar";
            }
            else 
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika $a tidak sama dengan $b, atau tidak memiliki tipe data yang sama -->
        <?php
            $a = "1";
            $b = 1;
            if ($a !== $b)
            {
                print "benar";
            }
            else
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika $a kurang dari $b -->
        <?php
            $a = 7;
            $b = 5;
            if ($a < $b)
            {
                print "benar";
            }
            else
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika $a lebih besar dari $b -->
        <?php
            $a = 7;
            $b = 5;
            if ($a > $b) 
            {
                print "benar";
            }
            else
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika $a kurang dari atau sama dengan $b -->
        <?php
            $a = 7;
            $b = 7;
            if ($a <= $b)
            {
                print "benar";
            }
            else
            {
                print "tidak benar";
            }
        ?>
        <br />
        <!-- BENAR jika $a lebih besar dari atau sama dengan $b -->
        <?php
            $a = 5;
            $b = 5;
            if ($a >= $b)
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