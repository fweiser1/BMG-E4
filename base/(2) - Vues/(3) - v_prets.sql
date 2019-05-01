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
-- Structure de la vue `v_prets`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_prets`  AS  select `p`.`id_pret` AS `id_pret`,`p`.`no_ouvrage` AS `no_ouvrage`,`o`.`titre` AS `titre`,`o`.`salle` AS `salle`,`o`.`rayon` AS `rayon`,`p`.`no_client` AS `no_client`,`c`.`prenom` AS `prenom`,`c`.`nom_client` AS `nom_client`,`p`.`date_emp` AS `date_emp`,`p`.`date_ret` AS `date_ret`,(`p`.`date_emp` + interval 15 day) AS `date_limite`,if(isnull(`p`.`date_ret`),(to_days(curdate()) - to_days(`p`.`date_emp`)),(to_days(`p`.`date_ret`) - to_days(`p`.`date_emp`))) AS `duree`,`p`.`penalite` AS `penalite` from ((`pret` `p` join `client` `c` on((`p`.`no_client` = `c`.`no_client`))) join `ouvrage` `o` on((`p`.`no_ouvrage` = `o`.`no_ouvrage`))) ;

--
-- VIEW  `v_prets`
-- Données :  Aucun(e)
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
