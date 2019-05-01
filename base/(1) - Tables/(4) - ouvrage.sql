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
-- Structure de la table `ouvrage`
--

DROP TABLE IF EXISTS `ouvrage`;
CREATE TABLE IF NOT EXISTS `ouvrage` (
  `no_ouvrage` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(128) NOT NULL,
  `salle` tinyint(4) DEFAULT NULL,
  `rayon` char(2) DEFAULT NULL,
  `code_genre` char(3) NOT NULL,
  `date_acquisition` date DEFAULT NULL,
  PRIMARY KEY (`no_ouvrage`),
  KEY `idx_fk_ouvrage_genre` (`code_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ouvrage`
--

INSERT INTO `ouvrage` (`no_ouvrage`, `titre`, `salle`, `rayon`, `code_genre`, `date_acquisition`) VALUES
(1, 'Le horla', 2, 'J7', 'ROM', '2014-07-02'),
(2, 'Le moulin de Pologne', 2, 'K5', 'ROM', '2014-07-02'),
(3, 'Les misérables', 2, 'H3', 'ROM', '2014-07-02'),
(4, 'Eugénie Grandet', 2, 'C8', 'ROM', '2014-07-02'),
(5, 'Les champs d\'honneur', 2, 'L2', 'ROM', '2014-07-02'),
(6, 'Les mots', 2, 'E5', 'ROM', '2014-07-02'),
(7, 'Le père Goriot', 2, 'A5', 'ROM', '2014-07-02'),
(8, 'Mille milliards de poèmes', 1, 'B4', 'POE', '2014-07-02'),
(9, 'Les Contemplations', 1, 'H3', 'POE', '2014-07-02'),
(10, 'Théâtre complet', 1, 'M1', 'THE', '2014-07-02'),
(11, 'La chartreuse de Parme', 2, 'J3', 'ROM', '2014-07-02'),
(12, 'La dame aux camélias', 2, 'J2', 'ROM', '2014-07-02'),
(13, 'Le moine', 2, 'C2', 'ROM', '2014-07-02'),
(14, 'Poésies', 1, 'E6', 'POE', '2014-07-02'),
(15, 'Mademoiselle Fifi', 2, 'F4', 'ROM', '2014-07-02'),
(16, 'Le rouge et le noir', 2, 'F8', 'ROM', '2014-07-02'),
(17, 'Poèmes Saturniens', 1, 'K2', 'POE', '2014-07-02'),
(18, 'La bête humaine', 2, 'D3', 'ROM', '2014-07-02'),
(19, 'Aurélien', 2, 'A9', 'ROM', '2014-07-02'),
(20, 'Théâtre complet', 1, 'M3', 'THE', '2014-07-02'),
(21, 'Les météores', 2, 'A2', 'ROM', '2014-07-02'),
(22, 'La recherche de l\'absolu', 2, 'L8', 'ROM', '2014-07-02'),
(23, 'Les trois mousquetaires', 2, 'L1', 'ROM', '2014-07-02'),
(24, 'Madame Bovary', 2, 'M1', 'ROM', '2014-07-02'),
(25, 'Le neveu de Rameau', 2, 'J1', 'ROM', '2014-07-02'),
(26, 'Hernani', 1, 'H3', 'THE', '2014-07-02'),
(27, 'Le monde selon Garp', 2, 'G1', 'ROM', '2014-07-02'),
(28, 'Hamlet', 1, 'H4', 'THE', '2014-07-02'),
(29, 'Du côté de chez Swann', 2, 'B7', 'ROM', '2014-07-02'),
(30, 'Essais', 1, 'M1', 'ESS', '2014-07-02'),
(31, 'Gargantua', 2, 'C4', 'ROM', '2014-07-02'),
(32, 'Les Fleurs du mal', 1, 'H4', 'POE', '2014-07-02'),
(33, 'Pensées', 1, 'N8', 'ESS', '2014-07-02'),
(34, 'Le Misanthrope', 1, 'H4', 'THE', '2014-07-02'),
(35, 'Les Confessions', 1, 'A4', 'JNL', '2014-07-02'),
(36, 'La République', 1, 'I5', 'THE', '2014-07-02'),
(37, 'Le Testament', 1, 'N7', 'POE', '2014-07-02'),
(38, 'Illuminations', 1, 'H1', 'POE', '2014-07-02'),
(39, 'Mémoires', 2, 'C3', 'BIO', '2014-07-02'),
(40, 'Guerre et Paix', 2, 'V2', 'ROM', '2014-07-02'),
(41, 'Mémoires', 2, 'C8', 'BIO', '2014-07-02'),
(42, 'L\'Ingénieux Hidalgo Don Quichotte de la Manche', 2, 'B3', 'ROM', '2014-07-02'),
(43, 'Andromaque', 1, 'N5', 'THE', '2014-07-02'),
(44, 'L\'Orestie', 1, 'D2', 'THE', '2014-07-02'),
(45, 'Les Frères Karamazov', 2, 'D5', 'ROM', '2014-07-02'),
(46, 'Poésies', 1, 'G9', 'POE', '2014-07-02'),
(47, 'Fables', 1, 'L3', 'POE', '2014-07-02'),
(48, 'Alcools', 1, 'A2', 'POE', '2014-07-02'),
(49, 'L\'Éducation sentimentale', 2, 'F3', 'ROM', '2014-07-02'),
(50, 'L\'Odyssée', 1, 'F5', 'REC', '2014-07-02'),
(51, 'Le Cid', 1, 'C4', 'THE', '2014-07-02'),
(52, 'La Divine Comédie', 1, 'D5', 'POE', '2014-07-02'),
(53, 'Mémoires d\'outre-tombe', 2, 'C5', 'BIO', '2014-07-02'),
(54, 'La Maison du chat-qui-pelote', 2, 'B3', 'ROM', '2014-07-02'),
(55, 'Œdipe Roi', 1, 'S9', 'THE', '2014-07-02'),
(56, 'Ulysse', 2, 'J5', 'ROM', '2014-07-02'),
(57, 'Les Liaisons dangereuses', 2, 'L7', 'ROM', '2014-07-02'),
(58, 'Les Voyages de Gulliver', 2, 'S5', 'ROM', '2014-07-02'),
(59, 'Poèmes saturniens', 1, 'V7', 'POE', '2014-07-02'),
(60, 'Une saison en enfer', 1, 'R4', 'POE', '2014-07-02'),
(61, 'Discours de la méthode', 1, 'D6', 'ESS', '2014-07-02'),
(62, 'Histoire du Chevalier des Grieux et de Manon Lescaut', 2, 'P2', 'ROM', '2014-07-02'),
(63, 'Odes', 1, 'R7', 'POE', '2014-07-02'),
(64, 'Lysistrata', 1, 'A2', 'THE', '2014-07-02'),
(65, 'L\'Éthique', 1, 'S5', 'ESS', '2014-07-02'),
(66, 'Poèmes', 1, 'H8', 'POE', '2014-07-02'),
(67, 'Les filles du feu', 2, 'N3', 'ROM', '2014-07-02'),
(68, 'Robinson Crusoé', 2, 'D1', 'ROM', '2014-07-02'),
(69, 'Les Chants de Maldoror', 2, 'L2', 'ROM', '2014-07-02'),
(70, 'Les Aventures d\'Alice au pays des merveilles', 2, 'C1', 'CTE', '2014-07-02'),
(71, 'Journal', 1, 'R2', 'BIO', '2014-07-02'),
(72, 'L\'illiade', 1, 'H2', 'REC', '2014-07-02'),
(73, 'L\'idiot', 2, 'D4', 'ROM', '2014-07-02'),
(74, 'Les Hauts de Hurlevent', 2, 'B6', 'ROM', '2014-07-02'),
(75, 'Les Démons', 2, 'D4', 'ROM', '2014-07-02'),
(76, 'Candide ou l\'optimisme', 2, 'V8', 'ROM', '2014-07-02'),
(77, 'Crime et Châtiment', 2, 'D4', 'ROM', '2014-07-02'),
(78, 'Vies Parallèles', 1, 'P8', 'ESS', '2014-07-02'),
(79, 'La Princesse de Clèves', 2, 'L1', 'ROM', '2014-07-02'),
(80, 'Le Capital. Critique de l\'économie politique', 1, 'M1', 'ESS', '2014-07-02'),
(81, 'Adolphe', 2, 'C6', 'ROM', '2014-07-02'),
(82, 'Le Mariage de Figaro', 2, 'B2', 'THE', '2014-07-02'),
(83, 'Les tragiques', 1, 'A2', 'POE', '2014-07-02'),
(84, 'Les Destinées', 1, 'D5', 'POE', '2014-07-02'),
(85, 'Pleur pour Ignacio Sanchez Myas', 1, 'G1', 'POE', '2014-07-02'),
(86, 'La Condition humaine', 2, 'M1', 'ROM', '2014-07-02'),
(87, 'Maximes', 1, 'R7', 'ESS', '2014-07-02'),
(88, 'Les Caractères', 1, 'B9', 'ESS', '2014-07-02'),
(89, 'Ubu Roi', 2, 'J1', 'THE', '2014-07-02'),
(90, 'La jeune Parque', 2, 'V1', 'ROM', '2014-07-02'),
(91, 'Les provinciales', 2, 'P1', 'COR', '2014-07-02'),
(92, 'Les Sept piliers de la sagesse', 2, 'L2', 'ROM', '2014-07-02'),
(93, 'Carmen', 2, 'P7', 'NVL', '2014-07-02'),
(94, 'Variétés', 1, 'V1', 'ESS', '2014-07-02'),
(95, 'Théâtre complet', 1, 'M1', 'THE', '2014-07-02'),
(96, 'La Légende des siècles', 2, 'H8', 'POE', '2014-07-02'),
(97, 'Le Procès', 2, 'K1', 'ROM', '2014-07-02'),
(98, 'Correspondance', 2, 'V8', 'COR', '2014-07-02'),
(99, 'Calligrammes', 1, 'A3', 'POE', '2014-07-02'),
(100, 'Contes', 2, 'A2', 'CTE', '2014-07-02'),
(101, 'Histoire de ma vie', 1, 'C1', 'BIO', '2014-07-02'),
(102, 'Lord Jim', 2, 'C7', 'ROM', '2014-07-02'),
(103, 'Fragments', 1, 'N6', 'ESS', '2014-07-02'),
(104, 'Ainsi parlait Zarathoustra', 1, 'N5', 'ESS', '2014-07-02'),
(105, 'Le Soulier de satin', 2, 'C3', 'ROM', '2014-07-02'),
(106, 'Les Amours jaunes', 1, 'C8', 'POE', '2014-07-02'),
(107, 'La Nuit obscure de l\'Âme', 1, 'D2', 'ESS', '2014-07-02'),
(108, 'Les Âmes mortes', 2, 'G4', 'ROM', '2014-07-02'),
(109, 'L\'Énéide', 1, 'V4', 'POE', '2014-07-02'),
(110, 'Journal d\'un curé de campagne', 2, 'B3', 'ROM', '2014-07-02'),
(111, 'Pour une Bibliothèque Idéale', 1, 'Q2', 'ESS', '2014-07-02'),
(112, 'Lettres', 2, 'S2', 'COR', '2014-07-02'),
(113, 'Le Mariage de Figaro', 1, 'B2', 'THE', '2014-07-02'),
(114, 'Voyage au bout de la nuit', 2, 'C4', 'ROM', '2014-07-02'),
(115, 'Le Festin nu', 2, 'B8', 'ROM', '2014-07-02'),
(116, 'Les Détectives sauvages', 2, 'B6', 'ROM', '2014-07-02'),
(117, 'Lolita', 2, 'N1', 'ROM', '2014-07-02'),
(118, '1984', 2, 'O5', 'ROM', '2014-07-02'),
(119, 'American Psycho', 2, 'E1', 'ROM', '2014-07-02'),
(120, 'Fictions', 2, 'B7', 'NVL', '2014-07-02'),
(121, 'Sur la route', 2, 'K4', 'ROM', '2014-07-02'),
(122, 'L\'Étranger', 2, 'C1', 'ROM', '2014-07-02'),
(123, 'L\'espoir', 2, 'M2', 'ROM', '2014-07-02'),
(124, 'De sang-froid', 2, 'C1', 'ROM', '2014-07-02'),
(125, 'Macbeth', 1, 'S3', 'THE', '2014-07-02'),
(126, 'Nouveaux contes de la folie ordinaire', 2, 'B7', 'NVL', '2014-07-02'),
(127, 'Marelle', 2, 'C6', 'ROM', '2014-07-02'),
(128, 'Le Loup des Steppes', 2, 'H3', 'ROM', '2014-07-02'),
(129, 'Nouvelles histoires extraordinaires', 2, 'P6', 'NVL', '2014-07-02'),
(130, 'Dans la dèche à Paris et à Londres', 1, 'O8', 'REC', '2014-07-02'),
(131, 'Le Livre de l\'intranquillité', 1, 'P2', 'POE', '2014-07-02'),
(132, 'Albertine disparue', 2, 'P8', 'ROM', '2014-07-02'),
(133, 'Le Corbeau', 1, 'P7', 'POE', '2014-07-02'),
(134, 'À l\'est d\'Eden', 2, 'S9', 'ROM', '2014-07-02'),
(135, 'Martin Eden', 2, 'L6', 'ROM', '2014-07-02'),
(136, 'Les Chimères', 1, 'N3', 'POE', '2014-07-02'),
(137, 'Le bateau ivre', 1, 'R5', 'POE', '2014-07-02'),
(138, 'Incendies', 1, 'M7', 'THE', '2014-07-02'),
(139, 'Le Monde d\'hier', 2, 'Z9', 'ESS', '2014-07-02'),
(140, 'Ronde de nuit', 2, 'P7', 'ROM', '2014-07-02'),
(141, 'Le Choix de Sophie', 2, 'S7', 'ROM', '2014-07-02'),
(142, 'La Horde du Contrevent', 2, 'D1', 'ROM', '2014-07-02'),
(143, 'Mort à crédit', 2, 'C2', 'ROM', '2014-07-02'),
(144, 'Vol au-dessus d\'un nid de coucou', 2, 'K2', 'ROM', '2014-07-02'),
(145, 'Notre besoin de consolation est impossible à rassasier', 1, 'D1', 'ESS', '2014-07-02'),
(146, 'Éloge de l\'ombre', 1, 'J5', 'ESS', '2014-07-02'),
(147, 'Ma vallée', 1, 'P6', 'CTE', '2014-07-02'),
(148, 'Cahier d\'un retour au pays natal', 1, 'C2', 'POE', '2014-07-02'),
(149, 'Middlesex', 2, 'E7', 'ROM', '2014-07-02'),
(150, 'La Peur du sage', 2, 'R8', 'ROM', '2014-07-02'),
(151, 'Le Gai savoir', 1, 'N4', 'ESS', '2014-07-02'),
(152, 'Le Seigneur des porcheries', 2, 'E4', 'ROM', '2014-07-02'),
(153, 'La montagne magique', 2, 'M1', 'ROM', '2014-07-02'),
(154, 'La Généalogie de la morale', 1, 'N4', 'ESS', '2014-07-02'),
(155, 'La Communauté de l\'anneau', 2, 'T6', 'ROM', '2014-07-02'),
(156, 'Le Comte de Monte-Cristo', 2, 'D8', 'ROM', '2014-07-02'),
(157, 'Des fleurs pour Algernon', 2, 'K2', 'ROM', '2014-07-02'),
(158, 'L\'Usage du monde', 2, 'B8', 'REC', '2014-07-02'),
(159, 'Le Spleen de Paris', 1, 'B1', 'POE', '2014-07-02'),
(160, 'Richard III', 1, 'S3', 'THE', '2014-07-02'),
(161, 'Les Raisins de la colère', 2, 'S8', 'ROM', '2014-07-02'),
(162, 'Le Maître et Marguerite', 2, 'B9', 'ROM', '2014-07-02'),
(163, 'Le Seigneur des Anneaux', 2, 'T6', 'ROM', '2014-07-02'),
(164, 'Lettre d\'une inconnue', 2, 'Z9', 'NVL', '2014-07-02'),
(165, 'Malevil', 2, 'M2', 'ROM', '2014-07-02'),
(166, 'Tandis que j\'agonise', 2, 'F1', 'ROM', '2014-07-02'),
(167, 'Cyrano de Bergerac', 1, 'R6', 'THE', '2014-07-02'),
(168, 'Anna Karénine', 2, 'T7', 'ROM', '2014-07-02'),
(169, 'Fictions', 2, 'B8', 'ROM', '2014-07-02'),
(170, 'Le Joueur d\'échecs', 2, 'Z9', 'NVL', '2014-07-02'),
(171, 'L\'ombilic des limbes', 1, 'A5', 'POE', '2014-07-02'),
(172, 'Le Château', 2, 'K1', 'ROM', '2014-07-02');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ouvrage`
--
ALTER TABLE `ouvrage`
  ADD CONSTRAINT `ouvrage_ibfk_1` FOREIGN KEY (`code_genre`) REFERENCES `genre` (`code_genre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
