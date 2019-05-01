-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 30 avr. 2019 à 14:39
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
-- Structure de la vue `v_clients`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_clients`  AS  select `c`.`no_client` AS `no_client`,`c`.`nom_client` AS `nom_client`,`c`.`prenom` AS `prenom`,`c`.`rue_client` AS `rue_client`,`c`.`code_post` AS `code_post`,`c`.`ville` AS `ville`,`c`.`date_inscr` AS `date_inscr`,`c`.`mel` AS `mel`,`c`.`etat_client` AS `etat_client`,`c`.`montant_compte` AS `montant_compte`,max(`p`.`date_emp`) AS `date_dernier_pret` from (`client` `c` left join `pret` `p` on((`c`.`no_client` = `p`.`no_client`))) group by `c`.`no_client`,`c`.`nom_client`,`c`.`prenom`,`c`.`rue_client`,`c`.`code_post`,`c`.`ville`,`c`.`date_inscr`,`c`.`mel`,`c`.`etat_client`,`c`.`montant_compte` ;

--
-- VIEW  `v_clients`
-- Données :  Aucun(e)
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
