-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24.01.2020 klo 10:29
-- Palvelimen versio: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asiakastietokanta`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `asiakastaulu`
--

CREATE TABLE `asiakastaulu` (
  id int(5) NOT NULL AUTO_INCREMENT,
  `etunimi` varchar(10) NOT NULL,
  `sukunimi` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `osoite` varchar(30) NOT NULL,
  `postinumero` int(5) NOT NULL,
  `paikkakunta` varchar(15) NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `asiakastaulu`
--

INSERT INTO `asiakastaulu` (`etunimi`, `sukunimi`, `email`, `osoite`, `postinumero`, `paikkakunta`) VALUES
('Kati', 'Rautiainen', 'kati.rautiainen@sally.fi', 'Etelänkatu 4C12', 70100, 'KUOPIO'),
('Tuomo', 'Naukkarinen', 'tuomo.naukkarinen@luukku.com', 'Hiihtäjäntie 15', 70460, 'KUOPIO'),
('Heikki', 'Vänskä', 'heikki.vanska@saky.fi', 'Keisarinkatu 1', 70100, 'KUOPIO'),
('Juhani', 'Nieminen', 'juhani.nieminen@luukku.com', 'Vanginkatu 19', 67100, 'KOKKOLA'),
('Risto', 'Kuusinen', 'risto.kuusinen@helsinki.fi', 'Junailijankatu 12', 520, 'HELSINKI'),
('Tuula', 'Notko', 'tuula.notko@vaasa.fi', 'Kellarikatu 8', 65100, 'VAASA'),
('Aimo', 'Väänänen', 'ami@hotmail.com', 'Backen 1 A', 2630, 'ESPOO'),
('Reino', 'Konttinen', 'reino.konttinen@helsinki.fi', 'Malminkatu 36 F', 440, 'HELSINKI'),
('Unto', 'Honkavaara', 'unski@luukku.com', 'Jussilanpiha 2 A', 4250, 'KERAVA'),
('Aila', 'Sipilä', 'aila.sipila@ibm.fi', 'Isokuja 5', 200, 'HELSINKI'),
('Eino', 'Jokinen', 'eikka@posti.fi', 'Jokipalstantie 4', 5250, 'KILJAVA'),
('Pirjo', 'Lindroos', 'pirjo.lindroos@helsinki.fi', 'Tehtaankatu 18 C 2', 960, 'HELSINKI'),
('Karl', 'Pailomaa', 'kalle@sskky.fi', 'Keulakuja 5', 2320, 'ESPOO'),
('Heikki', 'Lindroos', 'heikki.lindroos@slk.fi', 'Vanamonkuja 4 F', 5260, 'HYVINKÄÄ'),
('Matias', 'Laitakari', 'matias.laitakari@juupati.fi', 'Hakalantie 2 G', 3600, 'KARKKILA'),
('Eero', 'Sulonen', 'eero.salonen@rock.fi', 'Ajomiehentie 2', 4300, 'TUUSULA'),
('Pirjo', 'Kannisto', 'pirjo.kannisto@luukku.com', 'Ilmattarenkatu 2', 610, 'HELSINKI'),
('Mauri', 'Heimo', 'maukka@yahoo.com', 'Laivastokatu 4 A', 880, 'HELSINKI'),
('Aune', 'Hirn', 'aune.hirn@apu.fi', 'Torkkelintie 19 C', 110, 'HELSINKI'),
('Heidi', 'Kaurismäki', 'heidi.kauris@espoo.fi', 'Keulakuja 4', 2320, 'ESPOO'),
('Tuomo', 'Kokkonen', 'tumppi22@sakky.fi', 'Pohjoiskuja 2 A', 270, 'HELSINKI'),
('Kari', 'Syrjänen', 'kari.syrjanen@klaku.fi', 'Viertomäki 2', 1800, 'KLAUKKALA'),
('Martta', 'Johansson', 'martta.johansson@hesa.com', 'Riistavuorenkatu 4', 300, 'HELSINKI'),
('Onni', 'Sparre', 'onni.sparre@ssllkky.fi', 'Haahkakatu 3 E 15', 570, 'HELSINKI'),
('Stella', 'Jolkkonen', 'stella.jolkkonen@ttkky.fi', 'Viikintie 1 A', 2130, 'ESPOO'),
('Kristiina', 'Hotakainen', 'kristiina.hotakainen@luukku.co', 'Kumpuntie 41', 6100, 'PORVOO'),
('Eino', 'Aalto', 'eno.aalto@vpl.fi', 'Kaarenjalka 4', 3400, 'VIHTI'),
('Heikki', 'Koskinen', 'heikki.koskinen@helsinki.fi', 'Kalevantie 28 C', 530, 'HELSINKI'),
('Terho', 'Nykänen', 'terho.nykanen@riento.com', 'Ellinkuja 3 A 12', 2210, 'ESPOO'),
('Mauri', 'Mäkelä', 'mauri.makela@nummela.fi', 'Kellarikuja 3', 3100, 'NUMMELA'),
('Ossi', 'Reponen', 'ossi.reponen@tusu.fi', 'Kotorannankuja 7', 4310, 'TUUSULA'),
('Sinikka', 'Sirkkala', 'sinikka.sirkkala@pusu.fi', 'Kotimäentie 2 B', 2130, 'ESPOO'),
('Matti', 'Myllyrinne', 'matti.myllyrinne@huhu.fi', 'Vaakatie 3', 2340, 'ESPOO'),
('Matias', 'Mäkelä', 'matsu@yahoo.com', 'Laattatie 3 C', 2770, 'ESPOO'),
('Hillevi', 'Sukki', 'hillevi.sukki@jarvenpaa.fi', 'Lumikero 6 B', 4440, 'JÄRVENPÄÄ'),
('Hannu', 'Eklund', 'hannu.eklunnd@helsinki.fi', 'Vallitie 32 B', 510, 'HELSINKI'),
('Lasse', 'Leminen', 'lasse.lem@microsoft.com', 'Kullervonkatu 18C9', 720, 'HELSINKI'),
('Antti', 'Seppänen', 'antti.seppanen@raku.fi', 'Mannerheimintie 19A2', 100, 'HELSINKI'),
('Harri', 'Seppänen', 'sepu@siilinjarvi.fi', 'Toritie 8', 70800, 'SIILINJÄRVI'),
('Laura', 'Luukkonen', 'laura.luukkonen@muutto.com', 'Kivistönkatu 18', 100, 'HELSINKI');

-- --------------------------------------------------------

--
-- Rakenne taululle `tilausrivitaulu`
--

CREATE TABLE `tilausrivitaulu` (
  id int(5) NOT NULL AUTO_INCREMENT,
  `tilaus_id` int(5) NOT NULL,
  `tuote_id` int(5) NOT NULL,
  `tilausmaara` int(5) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `tilausrivitaulu` AUTO_INCREMENT=4; 

--
-- Vedos taulusta `tilausrivitaulu`
--

INSERT INTO `tilausrivitaulu` (`tilaus_id`, `tuote_id`, `tilausmaara`) VALUES
(1, 3, 1),
(1, 3, 2),
(1, 5, 1),
(1, 6, 2),
(2, 2, 2),
(2, 7, 1),
(3, 5, 2),
(3, 1, 5),
(3, 6, 5),
(3, 7, 3),
(4, 4, 1),
(4, 6, 2),
(4, 7, 1),
(5, 3, 2),
(5, 5, 1),
(5, 6, 1),
(6, 1, 1),
(6, 7, 1),
(7, 3, 2),
(7, 6, 5),
(7, 7, 8),
(7, 5, 2),
(8, 4, 1),
(8, 7, 3),
(9, 2, 3),
(9, 6, 3),
(10, 1, 2),
(11, 3, 2),
(12, 4, 1),
(13, 7, 2),
(13, 6, 2),
(14, 3, 2),
(14, 5, 1),
(14, 7, 2),
(15, 2, 2),
(15, 7, 2),
(16, 1, 1),
(17, 3, 3),
(17, 5, 1),
(17, 7, 3);

-- --------------------------------------------------------

--
-- Rakenne taululle `tilaustaulu`
--

CREATE TABLE `tilaustaulu` (
  id int(5) NOT NULL AUTO_INCREMENT,
  `asiakas_id` int(15) NOT NULL,
  `pvm` date NOT NULL,
   PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `tilaustaulu`
--

INSERT INTO `tilaustaulu` (`asiakas_id`, `pvm`) VALUES
(27, '2014-01-03'),
(25, '2014-01-03'),
(9, '2014-01-03'),
(21, '2014-01-07'),
(19, '2014-01-07'),
(28, '2014-01-07'),
(8, '2014-01-07'),
(36, '2014-01-08'),
(26, '2014-01-08'),
(1, '2014-01-08'),
(24, '2014-01-08'),
(16, '2014-01-08'),
(7, '2014-01-15'),
(22, '2014-01-15'),
(32, '2014-01-15'),
(29, '2014-01-15'),
(38, '2014-01-15');

-- --------------------------------------------------------

--
-- Rakenne taululle `tuotetaulu`
--

CREATE TABLE `tuotetaulu` (
  id int(5) NOT NULL AUTO_INCREMENT,
  `tuotenimi` varchar(20) NOT NULL,
  `hinta` int(5) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `tuotetaulu`
--

INSERT INTO `tuotetaulu` (`tuotenimi`, `hinta`) VALUES
('Perjantain lippu', 38),
('Lauantain lippu', 43),
('2 päivän lippu', 56),
('Täyshoito lippu', 76),
('Autopaikka leirintää', 5),
('Rock-Cock lippis', 15),
('Rock-Cock T-paita', 25);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
