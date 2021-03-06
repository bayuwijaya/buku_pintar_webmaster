<?php
    function konek_sql($database) // Fungsi membuat koneksi ke MySQL
    {
        if($dbc = mysql_connect('localhost', 'user', 'pass'))
        {
            if(!@mysql_select_db("$database")) // tidak jalan & menemukan database, tanda @ berfungsi untuk menghilangkan warning 
            {
                die(); // Jika pemilihan database gagal, skrip akan berhenti
            }
        }
        else
        {
            die(); // Jika server MySQL tidak bisa dihubungi, skrip akan berhenti.
        }
    }
?>