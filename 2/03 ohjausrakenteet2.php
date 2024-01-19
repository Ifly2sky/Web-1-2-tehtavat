<!DOCTYPE html>
<html>
    <head>
        <header>PHP</header>
        <?php $numero = 0;?>
    </head>
    <body>
        <form action="ohjausrakenteet2.php" method=post>
        numero: <input type="text" name="numero"> <br>
            <input type="submit" value="Lähetä">
        </form>
        <?php
        $numero = $_POST["numero"];
        echo "<ul>";
        for ($i = 0; $i <= 9; $i++) {
            echo "<li>" . $i + $numero;
        }
        echo "</ul>";
        ?> 
    </body>
</html>