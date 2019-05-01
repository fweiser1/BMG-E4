-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 30 avr. 2019 à 14:40
-- Version du serveur :  5.7.21
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bmg`
--

-- --------------------------------------------------------

--
-- Structure de la vue `v_ouvrages`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ouvrages`  AS  select `o`.`no_ouvrage` AS `no_ouvrage`,`o`.`titre` AS `titre`,`o`.`salle` AS `salle`,`o`.`rayon` AS `rayon`,`o`.`code_genre` AS `code_genre`,`g`.`lib_genre` AS `lib_genre`,date_format(`o`.`date_acquisition`,'%Y-%m-%d') AS `acquisition`,if((length(`f_auteurs_ouvrage`(`o`.`no_ouvrage`)) = 0),'Indéterminé',convert(`f_auteurs_ouvrage`(`o`.`no_ouvrage`) using utf8)) AS `auteur`,date_format(max(`p`.`date_emp`),'%Y-%m-%d') AS `dernier_pret`,if(exists(select `vpec`.`no_ouvrage` from `v_prets_en_cours` `vpec` where (`o`.`no_ouvrage` = `vpec`.`no_ouvrage`)),'E','D') AS `disponibilite` from ((`ouvrage` `o` join `genre` `g` on((`o`.`code_genre` = `g`.`code_genre`))) left join `pret` `p` on((`o`.`no_ouvrage` = `p`.`no_ouvrage`))) group by `o`.`no_ouvrage`,`o`.`titre`,`o`.`salle`,`o`.`rayon`,`o`.`code_genre`,`g`.`lib_genre`,`acquisition`,`auteur` ;

--
-- VIEW  `v_ouvrages`
-- Données :  Aucun(e)
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
