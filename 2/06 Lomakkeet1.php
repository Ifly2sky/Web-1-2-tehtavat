<!DOCTYPE html>
<html>
    <head>
        <header>PHP lomake</header>
        <?php
            $Etunimi=$_POST["Etunimi"];
            $Sukunimi=$_POST["Sukunimi"];
            $Opiskelijanumero=$_POST["Opiskelijanumero"];
            $Ryhmätunnus=$_POST["Ryhmätunnus"];
            $KurssinNimi=$_POST["Kurssinnimi"];
            $KurssinAjankohta=$_POST["Kurssinajankohta"];
            $KurssinOpettaja=$_POST["Kurssinopettaja"];
            $Sahkoposti=$_POST["Sahkoposti"];
        ?>
    </head>
    <body>
        <?php
            echo"<p>".$Etunimi."</p>";
            echo"<p>".$Sukunimi."</p>";
            echo"<p>".$Opiskelijanumero."</p>";
            echo"<p>".$Ryhmätunnus."</p>";
            echo"<p>".$KurssinNimi."</p>";
            echo"<p>".$KurssinAjankohta."</p>";
            echo"<p>".$KurssinOpettaja."</p>";
            echo"<p>".$Sahkoposti."</p>";
            mail($Sahkoposti,"Hello from form", $Etunimi."/n".$Sukunimi."/n".$Opiskelijanumero."/n".$Ryhmätunnus."/n".$KurssinNimi."/n".$KurssinAjankohta);
        ?>
    </body>
</html>