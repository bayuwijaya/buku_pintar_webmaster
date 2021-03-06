<?php
    $username = "user"; // Ini adalah nama user yang boleh masuk ke halaman admin
    $password = "pass"; // dan ini passwordnya

    if($_POST['myusername'] == $username && $_POST['mypassword'] == $password)
    {
        session_start();
        $_SESSION['myusername'] = $_POST['myusername'];
        //session_register(myusername); // the function has been deprecated in php ver 5.3
        echo("Login berhasil. Silahkan klik <a href=admin.php>di sini</a> untuk menuju halaman admin");
    }
    else 
    {
        echo("Login Gagal");
    }
?>