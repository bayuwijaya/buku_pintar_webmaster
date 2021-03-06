<?php
    // $myusername = false;
    $_SESSION['myusername'] = false;
    session_start();

    if(!$_SESSION['myusername'])
    {
        echo("Anda harus login dahulu");
        die();
    }
?>