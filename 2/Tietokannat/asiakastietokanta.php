<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <?php
        $palvelin= "localhost";  
        $kayttajanimi= "root";  
        $salasana= "";  
        $tietokanta= "asiakastietokanta"; 
        $portti="3306";
        $conn = new mysqli($palvelin, $kayttajanimi, $salasana, $tietokanta, $portti);
        if(!$conn){
            die("yhteys epäonnistui". mysqli_connect_error());
        }
        echo"yhteys onnistui";

        $sql = "INSERT INTO `asiakastaulu` (`etunimi`, `sukunimi`, `email`, `osoite`, `postinumero`, `paikkakunta`)
        VALUES ('Testi', 'Henkilö', 'testi.henkilo@gmail.com', 'Testi Osoite 12', '1111', 'Paikkakunta')";

        if ($conn->query($sql) === TRUE) {
            echo "<br>Arvot A lisätty onnistuneesti";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $sql2 = "INSERT INTO `asiakastaulu` (`etunimi`, `sukunimi`, `email`, `osoite`, `postinumero`, `paikkakunta`)
        VALUES ('Tino', 'Hautanen', 'tinhau24@gmail.com', 'tyyneläntie 13', '1111', 'JYVÄSKYLÄ')";

        if ($conn->query($sql2) === TRUE) {
            echo "<br>Arvot B lisätty onnistuneesti";
        } else {
            echo "Error: " . $sql2 . "<br>" . $conn->error;
        }

        $sql3 = "INSERT INTO `tilausrivitaulu` (`tilaus_id`, `tuote_id`, `tilausmaara`)
        VALUES (18, 7, 1)";

        if ($conn->query($sql3) === TRUE) {
            echo "<br>Arvot C lisätty onnistuneesti";
        } else {
            echo "Error: " . $sql3 . "<br>" . $conn->error;
        }

        $sql4 = "INSERT INTO `tilaustaulu` (`asiakas_id`, `pvm`)
        VALUES (41, '2023-12-19')";

        if ($conn->query($sql4) === TRUE) {
            echo "<br>Arvot D lisätty onnistuneesti";
        } else {
            echo "Error: " . $sql4 . "<br>" . $conn->error;
        }
        $conn->close();
        ?>
    </body>
</html>