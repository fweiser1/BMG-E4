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
-- Structure de la vue `v_auteurs`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_auteurs`  AS  select `auteur`.`id_auteur` AS `id_auteur`,if((isnull(`auteur`.`alias`) or (length(`auteur`.`alias`) = 0)),if((isnull(`auteur`.`prenom_auteur`) or (length(`auteur`.`prenom_auteur`) = 0)),`auteur`.`nom_auteur`,concat(`auteur`.`nom_auteur`,' ',`auteur`.`prenom_auteur`)),concat(`auteur`.`alias`,' (',if((isnull(`auteur`.`prenom_auteur`) or (length(`auteur`.`prenom_auteur`) = 0)),`auteur`.`nom_auteur`,concat(`auteur`.`prenom_auteur`,' ',`auteur`.`nom_auteur`)),')')) AS `nom` from `auteur` order by if((isnull(`auteur`.`alias`) or (length(`auteur`.`alias`) = 0)),if((isnull(`auteur`.`prenom_auteur`) or (length(`auteur`.`prenom_auteur`) = 0)),`auteur`.`nom_auteur`,concat(`auteur`.`nom_auteur`,' ',`auteur`.`prenom_auteur`)),concat(`auteur`.`alias`,' (',if((isnull(`auteur`.`prenom_auteur`) or (length(`auteur`.`prenom_auteur`) = 0)),`auteur`.`nom_auteur`,concat(`auteur`.`nom_auteur`,' ',`auteur`.`prenom_auteur`)),')')) ;

--
-- VIEW  `v_auteurs`
-- Données :  Aucun(e)
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
