<!DOCTYPE html>
<html>
    <head>
        <?php
        function LaskeSauvojenPituus( $HPituus, $hiihtotyyli) {
            switch( $hiihtotyyli ) {
                case "Luisteluhiihto":
                    return $HPituus*0.9;
                case "Perinteinen":
                    return $HPituus*0.85;
                case "Sauvakavely":
                    return $HPituus*0.68;
            }
        }
        ?> 
    </head>
    <body>
        <?php
        $pituus = $_POST["Pituus"];
        $tyyli = $_POST["Hiihtotyyli"];
        echo "<p>Sauvojen pituus: ".LaskeSauvojenPituus($pituus, $tyyli)."</p>";
        ?> 
    </body>
</html>