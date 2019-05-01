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
-- Structure de la vue `v_prets_en_cours`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_prets_en_cours`  AS  select `v_prets`.`id_pret` AS `id_pret`,`v_prets`.`no_ouvrage` AS `no_ouvrage`,`v_prets`.`titre` AS `titre`,`v_prets`.`salle` AS `salle`,`v_prets`.`rayon` AS `rayon`,`v_prets`.`no_client` AS `no_client`,`v_prets`.`prenom` AS `prenom`,`v_prets`.`nom_client` AS `nom_client`,`v_prets`.`date_emp` AS `date_emp`,`v_prets`.`date_ret` AS `date_ret`,`v_prets`.`date_limite` AS `date_limite`,`v_prets`.`duree` AS `duree`,`v_prets`.`penalite` AS `penalite`,if((`v_prets`.`duree` > 15),(to_days(curdate()) - to_days(`v_prets`.`date_limite`)),0) AS `nb_jours_retard` from `v_prets` where isnull(`v_prets`.`date_ret`) ;

--
-- VIEW  `v_prets_en_cours`
-- Données :  Aucun(e)
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
