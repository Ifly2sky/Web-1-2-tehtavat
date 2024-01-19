<!DOCTYPE html>
<html>
    <head>
        <header>PHP sukupuoli ja ikä</header>
        <?php
        $ika = $_POST["ika"];
        $sukupuoli = $_POST["sukupuoli"];
        ?>
    </head>
    <body>
        <form action="ehtolause.php" method=post>
            ika: <input type="text" name="ika"> <br>
            sukupuoli: <input type="text" name="sukupuoli"> <br>
            <input type="submit" value="Lähetä">
        </form>
        <p> 
            <?php 
            if ($ika > 110 || $ika < 0){
                echo "Invalid age";
            }
            elseif ($ika < 13) {
                echo "Mitä, ".$sukupuoli;
            }
            elseif ($ika < 25) {
                echo "Mitä, nuori ".$sukupuoli;
            }
            elseif ($ika < 56) {
                echo "Olet ".$sukupuoli. " parhaassa iässäsi";
            }
            elseif ($ika > 70) {
                echo "Olet jo eläke iässä";
            }
            else{
                echo $sukupuoli . $ika;
            }
            ?>
        </p>
    </body>
</html>