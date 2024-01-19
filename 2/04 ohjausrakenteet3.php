<!DOCTYPE html>
<html>
    <head>
        <header>PHP</header>
    </head>
    <body>
        <?php
            $i=0;
            echo "<ul>";
            
            do {
                echo "<p>".$i."</p> <br>";
                $i++;
            }
            while ($i<=9);
        ?> 
    </body>
</html>