<!DOCTYPE html>
<html>
    <head>
        <title>Menghapus Session</title>
    </head>
    <body>
        <?php
          /*
            session_start();
            if(isset($_SESSION['pageviews']))
            {
                unset($_SESSION['pageviews']);
            }
          */

           session_start();
           session_destroy();
        ?>
    </body>
</html>