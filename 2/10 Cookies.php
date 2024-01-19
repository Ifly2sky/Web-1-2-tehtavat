<!DOCTYPE html>
<html>
    <head>
        <?php
        function ShowInfo($name, $address, $email){
            echo"<h1>Lähetyksen tiedot</h1>";
            echo"<p>Name: ".$name."</p><p>Address: ".$address."</p><p>Email: ".$email."</p><br>";
        }
        ?> 
    </head>
    <body>
        <?php 
            session_start();
            setcookie("Name",$_POST["Name"]);
            setcookie("Address",$_POST["Address"]);
            setcookie("Email",$_POST["Email"]);
            ShowInfo($_POST["Name"], $_POST["Address"], $_POST["Email"]);
        ?> 
    </body>
</html>