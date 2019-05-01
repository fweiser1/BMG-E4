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
-- Structure de la table `auteur_ouvrage`
--

DROP TABLE IF EXISTS `auteur_ouvrage`;
CREATE TABLE IF NOT EXISTS `auteur_ouvrage` (
  `no_ouvrage` int(11) NOT NULL,
  `id_auteur` int(11) NOT NULL,
  PRIMARY KEY (`no_ouvrage`,`id_auteur`),
  KEY `idx_fk_auteur_ouvrage_ouvrage` (`no_ouvrage`),
  KEY `idx_fk_auteur_ouvrage_auteur` (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur_ouvrage`
--

INSERT INTO `auteur_ouvrage` (`no_ouvrage`, `id_auteur`) VALUES
(1, 1),
(1, 2),
(1, 79),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 4),
(8, 7),
(9, 3),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(15, 1),
(16, 9),
(17, 13),
(18, 14),
(19, 15),
(20, 16),
(21, 17),
(22, 4),
(23, 18),
(24, 19),
(25, 20),
(26, 3),
(27, 21),
(28, 22),
(29, 23),
(30, 24),
(31, 25),
(32, 26),
(33, 27),
(34, 28),
(35, 29),
(36, 30),
(37, 12),
(38, 31),
(39, 32),
(40, 33),
(41, 34),
(42, 35),
(43, 36),
(44, 37),
(45, 38),
(46, 39),
(47, 40),
(48, 41),
(49, 19),
(50, 42),
(51, 43),
(52, 44),
(53, 45),
(54, 4),
(55, 16),
(56, 46),
(57, 47),
(58, 48),
(59, 13),
(60, 31),
(61, 49),
(62, 50),
(63, 51),
(64, 52),
(65, 53),
(66, 54),
(67, 55),
(68, 56),
(69, 57),
(70, 58),
(71, 59),
(72, 42),
(73, 60),
(74, 61),
(75, 60),
(76, 62),
(77, 60),
(78, 63),
(79, 64),
(80, 65),
(81, 66),
(82, 67),
(83, 68),
(84, 69),
(85, 70),
(86, 71),
(87, 72),
(88, 73),
(89, 74),
(90, 75),
(91, 27),
(92, 76),
(93, 77),
(94, 75),
(95, 78),
(96, 3),
(97, 79),
(98, 62),
(99, 41),
(100, 80),
(101, 81),
(102, 82),
(103, 83),
(104, 84),
(105, 85),
(106, 86),
(107, 87),
(108, 88),
(109, 89),
(110, 90),
(111, 7),
(112, 91),
(113, 67),
(114, 92),
(115, 93),
(116, 94),
(117, 95),
(118, 96),
(119, 97),
(120, 98),
(121, 99),
(122, 100),
(123, 71),
(124, 101),
(125, 22),
(126, 102),
(127, 103),
(128, 104),
(129, 105),
(130, 96),
(131, 106),
(132, 23),
(133, 105),
(134, 107),
(135, 108),
(136, 55),
(137, 31),
(138, 109),
(139, 110),
(140, 111),
(141, 112),
(142, 113),
(143, 92),
(144, 114),
(145, 115),
(146, 116),
(147, 117),
(148, 118),
(149, 119),
(150, 120),
(151, 84),
(152, 121),
(153, 122),
(154, 84),
(155, 123),
(156, 10),
(157, 124),
(158, 125),
(159, 26),
(160, 22),
(161, 107),
(162, 126),
(163, 123),
(164, 110),
(165, 127),
(166, 128),
(167, 129),
(168, 33),
(169, 98),
(170, 110),
(171, 11),
(172, 79);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auteur_ouvrage`
--
ALTER TABLE `auteur_ouvrage`
  ADD CONSTRAINT `fk_auteur_ouvrage_auteur` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id_auteur`),
  ADD CONSTRAINT `fk_auteur_ouvrage_ouvrage` FOREIGN KEY (`no_ouvrage`) REFERENCES `ouvrage` (`no_ouvrage`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
