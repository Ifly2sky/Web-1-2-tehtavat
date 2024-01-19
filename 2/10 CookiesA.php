<!DOCTYPE html>
<html>
    <head>
        <title>Nettopalkkalaskuri</title>
    </head>
    <body>
        <form action="Cookies.php" method="post">
            Name: <input type="text" name="Name" value=<?php 
            if(isset($_COOKIE["Name"])){
                echo $_COOKIE["Name"];
            }
            else{
                echo "";
            }
            ?>><br>
            Address: <input type="text" name="Address" value=<?php 
            if(isset($_COOKIE["Address"])){
                echo $_COOKIE["Address"];
            }else{
                echo "";
            }
            ?>><br>
            Email: <input type="email" name="Email" value=<?php 
            if(isset($_COOKIE["Email"])){
                echo $_COOKIE["Email"];
            }else{
                echo "";
            }
            ?>><br>
            <input type="submit" value="Lähetä">
        </form>
    </body>
</html>  