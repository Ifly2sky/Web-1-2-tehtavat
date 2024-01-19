<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <?php
            $i=0;
            echo "<ul>";
            
            while ($i<=9) {
                echo "<p>";
                $j = $i;
                while ($j>= 0) {
                    echo $i." ";
                    $j--;
                }
                echo "</p>";
                $i++;
            }
        ?> 
    </body>
</html>