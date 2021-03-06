<!DOCTYPE html>
<html>
    <head>
        <title>Login Admin</title>
    </head>
    <body>
        
        <table width="300" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
            <tr>
                <form name="form1" method="POST" action="ceklogin.php">
                    <td>
                        <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
                            <tr>
                                <td colspan="3"> <strong> Member Login </strong> </td>
                            </tr>
                            <tr>
                                <td width="30%">Username</td>
                                <td width="5%">:</td>
                                <td width="65%"><input name="myusername" type="text" id="myusername"></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>:</td>
                                <td><input name="mypassword" type="password" id="mypassword"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td><input type="submit" name="Submit" value="Login"></td>
                            </tr>
                        </table>
                    </td>
                </form>
            </tr>
        </table>

    </body>
</html>