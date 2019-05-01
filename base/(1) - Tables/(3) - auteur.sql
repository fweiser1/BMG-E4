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
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `id_auteur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_auteur` varchar(128) NOT NULL,
  `prenom_auteur` varchar(128) DEFAULT NULL,
  `alias` varchar(128) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `nom_auteur`, `prenom_auteur`, `alias`, `notes`) VALUES
(1, 'Maupassant', 'Guy', NULL, NULL),
(2, 'Giono', 'Jeau', NULL, NULL),
(3, 'Hugo', 'Victor', NULL, NULL),
(4, 'Balzac', 'Honoré', NULL, NULL),
(5, 'Rouaud', 'Jean', NULL, NULL),
(6, 'Sartre', 'Jean-Paul', NULL, NULL),
(7, 'Queneau', 'Raymond', NULL, NULL),
(8, 'Euripide', NULL, NULL, NULL),
(9, 'Beyle', 'Henri', 'Stendhal', NULL),
(10, 'Dumas', 'Alexandre', 'Alexandre Dumas fils', NULL),
(11, 'Artaud', 'Antonin', NULL, NULL),
(12, 'Villon', 'François', NULL, NULL),
(13, 'Verlaine', 'Paul', NULL, NULL),
(14, 'Zola', 'Emile', NULL, NULL),
(15, 'Aragon', 'Louis', NULL, NULL),
(16, 'Sophocle', NULL, NULL, NULL),
(17, 'Tournier', 'Michel', NULL, NULL),
(18, 'Dumas', 'Alexandre', 'Alexandre Dumas père', ''),
(19, 'Flaubert', 'Gustave', NULL, NULL),
(20, 'Diderot', 'Denis', NULL, NULL),
(21, 'Irving', 'John', NULL, NULL),
(22, 'Shakespeare', 'William', NULL, NULL),
(23, 'Proust', 'Marcel', NULL, NULL),
(24, 'Montaigne', 'Michel', NULL, NULL),
(25, 'Rabelais', 'François', NULL, NULL),
(26, 'Baudelaire', 'Charles', NULL, NULL),
(27, 'Pascal', 'Blaise', NULL, NULL),
(28, 'Poquelin', 'Jean-Baptiste', 'Molière', NULL),
(29, 'Rousseau', 'Jean-Jacques', NULL, NULL),
(30, 'Platon', NULL, NULL, NULL),
(31, 'Rimbaud', 'Arthur', NULL, NULL),
(32, 'De Gondi', 'Jean-François', 'Cardinal de Retz', NULL),
(33, 'Tolstoï', 'Léon', NULL, NULL),
(34, 'Saint-Simon', 'Louis', NULL, NULL),
(35, 'Cervantès', 'Miguel', NULL, NULL),
(36, 'Racine', 'Jean', NULL, NULL),
(37, 'Eschyle', NULL, NULL, NULL),
(38, 'Dostoïevski', 'Fiodor', NULL, NULL),
(39, 'Mallarmé', 'Stéphane', NULL, NULL),
(40, 'La Fontaine', 'Jean', NULL, NULL),
(41, 'Apollinaire', 'Guillaume', '', ''),
(42, 'Homère', NULL, NULL, NULL),
(43, 'Corneille', 'Pierre', NULL, NULL),
(44, 'Alighieri', 'Durante', 'Dante', NULL),
(45, 'Chateaubriand', 'François-René', NULL, NULL),
(46, 'Joyce', 'James', NULL, NULL),
(47, 'Laclos', 'Choderlos', NULL, NULL),
(48, 'Swift', ' Jonathan', NULL, NULL),
(49, 'Descartes', 'René', NULL, NULL),
(50, 'Prévost', 'Antoine François', 'Abbé Prévost', ''),
(51, 'Ronsard', 'Pierre', NULL, NULL),
(52, 'Aristophane', '', '', ''),
(53, 'Spinozza', 'Baruch', NULL, NULL),
(54, 'Hölderlin', 'Friedrich', NULL, NULL),
(55, 'Nerval', 'Gérard', NULL, NULL),
(56, 'Defoe', 'Daniel', NULL, NULL),
(57, 'Ducasse', 'Isidore', 'Comte de Lautréamont', NULL),
(58, 'Carroll', 'Lewis', NULL, NULL),
(59, 'Renard', 'Jules', NULL, NULL),
(60, 'Dostoïevski', 'Fédor', NULL, NULL),
(61, 'Brontë', 'Emily', NULL, NULL),
(62, 'Arouet', 'François-Marie', 'Voltaire', NULL),
(63, 'Plutarque', NULL, NULL, NULL),
(64, 'Pioche de La Vergne', 'Marie-Madeleine', 'Madame de La Fayette', NULL),
(65, 'Marx', 'Karl', NULL, NULL),
(66, 'Constant', 'Benjamin', NULL, NULL),
(67, 'Caron de Beaumarchais', 'Pierre-Augustin', 'Beaumarchais', NULL),
(68, 'Agrippa d\'Aubigné', 'Théodore', NULL, NULL),
(69, 'De Vigny', 'Alfred', NULL, NULL),
(70, 'García Lorca', ' Federico', NULL, NULL),
(71, 'Malraux', 'André', NULL, NULL),
(72, 'De La Rochefoucauld', 'François', NULL, NULL),
(73, 'La Bruyère', 'Jean', NULL, NULL),
(74, 'Jarry', 'Alfred', NULL, NULL),
(75, 'Valéry', 'Paul', NULL, NULL),
(76, 'Lawrence', 'Thomas Edward', NULL, NULL),
(77, 'Mérimée', 'Prosper', NULL, NULL),
(78, 'Carlet de Chamblain de Marivaux', 'Pierre', 'Marivaux', NULL),
(79, 'Kafka', 'Franz', NULL, NULL),
(80, 'Andersen', 'Hans-Christian', NULL, NULL),
(81, 'Casanova', 'Giacomo Girolamo', NULL, NULL),
(82, 'Conrad', 'Joseph', NULL, NULL),
(83, 'Friedrich', 'Georg Philipp', 'Novalis', NULL),
(84, 'Nietzsche', 'Friedrich', NULL, NULL),
(85, 'Claudel', 'Paul', NULL, NULL),
(86, 'Corbière', 'Tristan', NULL, NULL),
(87, 'De La Croix', 'Jean', NULL, NULL),
(88, 'Gogol', 'Nicolas', NULL, NULL),
(89, 'Virgile', NULL, NULL, NULL),
(90, 'Bernanos', 'Georges', NULL, NULL),
(91, 'Rabutin-Chantal', 'Marie', 'Marquise de Sévigné', NULL),
(92, 'Céline', 'Louis-Ferdinand', NULL, NULL),
(93, 'Burroughs', 'William', NULL, NULL),
(94, 'Bolaño', 'Roberto', NULL, NULL),
(95, 'Nabokov', 'Vladimir', NULL, NULL),
(96, 'Orwell', 'George', NULL, NULL),
(97, 'Easton Ellis', 'Bret', NULL, NULL),
(98, 'Borges', 'Jorge Luis', NULL, NULL),
(99, 'Kerouac', 'Jack', NULL, NULL),
(100, 'Camus', 'Albert', NULL, NULL),
(101, 'Capote', 'Truman', NULL, NULL),
(102, 'Bukowski', 'Charles', NULL, NULL),
(103, 'Cortazar', 'Julio', NULL, NULL),
(104, 'Hesse', 'Hermann', NULL, NULL),
(105, 'Poe', 'Edgar Allan', NULL, NULL),
(106, 'Pessoa', 'Fernando', NULL, NULL),
(107, 'Steinbeck', 'John', NULL, NULL),
(108, 'London', 'Jack', NULL, NULL),
(109, 'Mouawad', 'Wajdi', NULL, NULL),
(110, 'Zweig', 'Stefan', NULL, NULL),
(111, 'Pratchett', 'Terry', NULL, NULL),
(112, 'Styron', 'William', NULL, NULL),
(113, 'Damasio', 'Alain', NULL, NULL),
(114, 'Kesey', 'Ken', NULL, NULL),
(115, 'Dagerman', 'Stig', NULL, NULL),
(116, 'Tanizaki', 'Junichirô', NULL, NULL),
(117, 'Ponti', 'Claude', NULL, NULL),
(118, 'Césaire', 'Aimé', NULL, NULL),
(119, 'Eugenides', 'Jeffrey', NULL, NULL),
(120, 'Rothfuss', 'Patrick', NULL, NULL),
(121, 'Egolf', 'Tristan', NULL, NULL),
(122, 'Mann', 'Thomas', NULL, NULL),
(123, 'Tolkien', 'John Ronald Reuel', NULL, NULL),
(124, 'Keyes', 'Daniel', NULL, NULL),
(125, 'Bouvier', 'Nicolas', NULL, NULL),
(126, 'Boulgakov', 'Mikhaïl', NULL, NULL),
(127, 'Merle', 'Robert', NULL, NULL),
(128, 'Faulkner', 'William', NULL, NULL),
(129, 'Rostand', 'Edmond', NULL, NULL);
COMMIT;
