<!DOCTYPE html>
<html>
    <head>
        <header>PHP verolaskuri</header>
        <?php
        $prosentti = 1 - $_POST["veroprosentti"]/100;
        $palkka = $_POST["palkka"];
        $nettopalkka = $palkka * $prosentti;
        ?>
    </head>
    <body>
        <p> <?php echo "Bruttopalkka: ". $palkka ." Nettopalkka: ". $nettopalkka;?></p>
    </body>
</html>