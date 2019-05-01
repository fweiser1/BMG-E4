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
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `no_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `rue_client` varchar(50) DEFAULT NULL,
  `code_post` char(5) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `date_inscr` date NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `mel` varchar(128) DEFAULT NULL,
  `etat_client` char(1) NOT NULL DEFAULT 'N',
  `caution` decimal(5,2) NOT NULL DEFAULT '50.00',
  `caution_encaissee` bit(1) NOT NULL DEFAULT b'0',
  `montant_compte` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`no_client`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`no_client`, `nom_client`, `prenom`, `rue_client`, `code_post`, `ville`, `date_inscr`, `login`, `password`, `mel`, `etat_client`, `caution`, `caution_encaissee`, `montant_compte`) VALUES
(1, 'Decajou', 'Benoît', '13 rue des îles', '57157', 'Glumotte', '2014-07-22', 'b.decajou', 'caCGroland', 'benoit.decajou@grocom.gr', 'N', '50.00', b'0', '0.00'),
(2, 'Douch', 'Urbain', '112 rue des thermes', '57000', 'Groville', '2014-07-22', 'u.douch', 'caCGroland', 'urbain.douch@grocom.gr', 'N', '50.00', b'0', '0.00'),
(3, 'Opilon', 'Marthe', '2 rue toujours en travaux', '57000', 'Groville', '2014-07-25', 'm.opilon', 'caCGroland', 'marthe.opilon@grocom.gr', 'N', '50.00', b'0', '0.00'),
(4, 'Gator', 'Nathalie', '4 rue de Floride', '57000', 'Groville', '2014-07-25', 'n.gator', 'caCGroland', 'nathalie.gator@grocom.gr', 'N', '50.00', b'0', '0.00'),
(5, 'Pilaf', 'Henry', '21 rue du Siam', '57000', 'Groville', '2014-07-25', 'h.pilaf', 'caCGroland', 'henry.pilaf@grocom.gr', 'N', '50.00', b'0', '0.00'),
(6, 'Anvil', 'Amandine', '2 rue du samedi soir', '57420', 'Caillebotte', '2014-07-26', 'a.anvil', 'caCGroland', 'amandine.anvil@grocom.gr', 'N', '50.00', b'0', '0.00'),
(7, 'Aulet', 'Fabrice', '31 rue de la friture', '57140', 'Mufflins', '2014-07-27', 'f.aulet', 'caCGroland', 'fabrice.aulet@grocom.gr', 'N', '50.00', b'0', '0.00'),
(8, 'Osseros', 'Catherine', '4 rue du Transvaal', '57000', 'Groville', '2014-07-27', 'c.osseros', 'caCGroland', 'catherine.osseros@grocom.gr', 'N', '50.00', b'0', '0.00'),
(9, 'Audine', 'Anne', '30 rue banale', '57210', 'Glamion', '2014-07-27', 'a.audine', 'caCGroland', 'anne.audine@grocom.gr', 'N', '50.00', b'0', '0.00'),
(10, 'Micoton', 'Mylène', '10 rue des tisserands', '57158', 'Chichigneux', '2014-07-30', 'm.micoton', 'caCGroland', 'mylene.micoton@grocom.gr', 'N', '50.00', b'0', '0.00'),
(11, 'Venissien', 'Nestor', '1 place de la république', '57157', 'Glumotte', '2014-07-31', 'n.venissien', 'caCGroland', 'nestor.venissien@grocom.gr', 'N', '50.00', b'0', '0.00'),
(12, 'Gardien', 'Solange', '13 rue du Paradis', '57000', 'Groville', '2014-08-01', 's.gardien', 'caCGroland', 'solange.gardien@grocom.gr', 'N', '50.00', b'0', '0.00'),
(13, 'Toju', 'Thomas', '6 rue des cuisiniers', '57000', 'Groville', '2014-08-01', 't.toju', 'caCGroland', 'thomas.toju@grocom.gr', 'N', '50.00', b'0', '0.00'),
(14, 'Kopter', 'Elie', '12 rue des Rotors', '57159', 'Théophrigne-les-Gaulards', '2014-08-02', 'e.kopter', 'caCGroland', 'elie.kopter@grocom.gr', 'N', '50.00', b'0', '0.00'),
(15, 'Tombal', 'Pierre', '1 rue du cimetière', '57140', 'Mufflins', '2014-08-02', 'p.tombal', 'caCGroland', 'pierre.tombal@grocom.gr', 'N', '50.00', b'0', '0.00'),
(16, 'Toidelat', 'Aude', '26 rue des gages', '57700', 'Egrillard', '2014-08-03', 'a.toidelat', 'caCGroland', 'aude.toidelat@grocom.gr', 'N', '50.00', b'0', '0.00'),
(17, 'Enfayit', 'Mélusine', '45 avenue de Chine', '57130', 'Maroufle', '2014-08-06', 'm.enfayit', 'caCGroland', 'melusine.enfayit@grocom.gr', 'N', '50.00', b'0', '0.00'),
(18, 'Millotte', 'Berthe', '2 avenue de la gare', '57000', 'Groville', '2014-08-07', 'b.millotte', 'caCGroland', 'berthe.millotte@grocom.gr', 'N', '50.00', b'0', '0.00'),
(19, 'Gaillet', 'Jérôme', '4 rue des gravières', '57680', 'Vichebro', '2014-08-08', 'j.gaillet', 'caCGroland', 'jerome.gaillet@grocom.gr', 'N', '50.00', b'0', '0.00'),
(20, 'Ferry', 'Jeanne', '40 rue Patton', '57157', 'Glumotte', '2014-08-08', 'j.ferry', 'caCGroland', 'jeanne.ferry@grocom.gr', 'N', '50.00', b'0', '0.00'),
(21, 'Gassmann', 'Claude', '56 avenue Foch', '57000', 'Groville', '2014-08-13', 'c.gassmann', 'caCGroland', 'claude.gassmann@grocom.gr', 'N', '50.00', b'0', '0.00'),
(22, 'Viriot', 'Denis', '7 rue des Vosges', '57000', 'Groville', '2014-08-14', 'd.viriot', 'caCGroland', 'denis.viriot@grocom.gr', 'N', '50.00', b'0', '0.00'),
(23, 'Becker', 'Simone', '5 grande rue', '57860', 'Bouzin-les-Roustilles', '2014-08-14', 's.becker', 'caCGroland', 'simone.becker@grocom.gr', 'N', '50.00', b'0', '0.00'),
(24, 'Joly', 'Pierre', '20 rue des prés', '57117', 'Perdrons-la-Louvrette', '2014-08-15', 'p.joly', 'caCGroland', 'pierre.joly@grocom.gr', 'N', '50.00', b'0', '0.00'),
(25, 'Regnier', 'David', '3 route Nationale', '57130', 'Maroufle', '2014-08-16', 'd.regnier', 'caCGroland', 'david.regnier@grocom.gr', 'N', '50.00', b'0', '0.00'),
(26, 'Manck', 'Barbara', '15 route de Thionville', '57700', 'Egrillard', '2014-08-16', 'b.manck', 'caCGroland', 'barbara.manck@grocom.gr', 'N', '50.00', b'0', '0.00'),
(27, 'Ferrera', 'Stéphane', '12 rue de la gare', '57680', 'Vichebro', '2014-08-17', 's.ferrera', 'caCGroland', 'stephane.ferrera@grocom.gr', 'N', '50.00', b'0', '0.00'),
(28, 'Gautrin', 'Corine', '57 route de Metz', '57640', 'Poudaille-sur-Gro', '2014-08-20', 'c.gautrin', 'caCGroland', 'corine.gautrin@grocom.gr', 'N', '50.00', b'0', '0.00'),
(29, 'Parmentier', 'Valérie', '31 rue Saint-Rémy', '57000', 'Groville', '2014-08-20', 'v.parmentier', 'caCGroland', 'valerie.parmentier@grocom.gr', 'N', '50.00', b'0', '0.00'),
(30, 'Santerne', 'Hélène', '4 rue Saint Barthélémy', '57140', 'Mufflins', '2014-08-21', 'h.santerne', 'caCGroland', 'helene.santerne@grocom.gr', 'N', '50.00', b'0', '0.00'),
(31, 'Legrand', 'Alexandre', '30 rue de Macédoine', '57000', 'Groville', '2014-08-21', 'a.legrand', 'caCGroland', 'alexandre.legrand@grocom.gr', 'N', '50.00', b'0', '0.00'),
(32, 'Cornuez', 'Bérénice', '7 rue Jeanne d\'Arc', '57130', 'Maroufle', '2014-08-22', 'b.cornuez', 'caCGroland', 'berenice.cornuez@grocom.gr', 'N', '50.00', b'0', '0.00'),
(33, 'Bailly', 'Thierry', '10 rue des oeillets', '57158', 'Chichigneux', '2014-08-23', 't.bailly', 'caCGroland', 'thierry.bailly@grocom.gr', 'N', '50.00', b'0', '0.00'),
(34, 'Guerin', 'Nathalie', '13 rue Saint-Georges', '57000', 'Groville', '2014-08-23', 'n.guerin', 'caCGroland', 'nathalie.guerin@grocom.gr', 'N', '50.00', b'0', '0.00'),
(35, 'Carpentier', 'Georges', '29 rue Henri Bazin', '57300', 'Albichon-le-Maresque', '2014-08-23', 'g.carpentier', 'caCGroland', 'georges.carpentier@grocom.gr', 'N', '50.00', b'0', '0.00'),
(36, 'Aubert', 'Julie', '5 allée du Morvan', '57860', 'Bouzin-les-Roustilles', '2014-08-24', 'j.aubert', 'caCGroland', 'julie.aubert@grocom.gr', 'N', '50.00', b'0', '0.00'),
(37, 'Colson', 'Daniel', '9 rue Saint-Livier', '57000', 'Groville', '2014-08-24', 'd.colson', 'caCGroland', 'daniel.colson@grocom.gr', 'N', '50.00', b'0', '0.00'),
(38, 'Perceval', 'Martin', '20 rue de la Mairie', '57420', 'Caillebotte', '2014-08-27', 'm.perceval', 'caCGroland', 'martin.perceval@grocom.gr', 'N', '50.00', b'0', '0.00'),
(39, 'Kempf', 'Frédéric', '3 place Lafayette', '57000', 'Groville', '2014-08-28', 'f.kempf', 'caCGroland', 'frederic.kempf@grocom.gr', 'N', '50.00', b'0', '0.00'),
(40, 'Baudy', 'Simon', '30 rue Saint-Jean', '57157', 'Glumotte', '2014-08-28', 's.baudy', 'caCGroland', 'simon.baudy@grocom.gr', 'N', '50.00', b'0', '0.00'),
(41, 'Mathieu', 'Estelle', '3 rue de Verdun', '57000', 'Groville', '2014-08-31', 'e.mathieu', 'caCGroland', 'estelle.mathieu@grocom.gr', 'N', '50.00', b'0', '0.00'),
(42, 'Bertolo', 'Denis', '6 rue Diderot', '57140', 'Mufflins', '2014-09-03', 'd.bertolo', 'caCGroland', 'denis.bertolo@grocom.gr', 'N', '50.00', b'0', '0.00'),
(43, 'Pacci', 'Mario', '48 avenue André Malraux', '57000', 'Groville', '2014-09-04', 'm.pacci', 'caCGroland', 'mario.pacci@grocom.gr', 'N', '50.00', b'0', '0.00'),
(44, 'Ruiz', 'Sébastien', '2 place de la Justice', '57157', 'Glumotte', '2014-09-05', 's.ruiz', 'caCGroland', 'sebastien.ruiz@grocom.gr', 'N', '50.00', b'0', '0.00'),
(45, 'Weiss', 'Marie-Claire', '8 rue de l\'église', '57117', 'Perdrons-la-Louvrette', '2014-09-06', 'm.weiss', 'caCGroland', 'marie-claire.weiss@grocom.gr', 'N', '50.00', b'0', '0.00'),
(46, 'Geoffroy', 'Pascal', '68 rue des Vosges', '57000', 'Groville', '2014-09-07', 'p.geoffroy', 'caCGroland', 'pascal.geoffroy@grocom.gr', 'N', '50.00', b'0', '0.00'),
(47, 'Perrey', 'Josianne', '11 rue Joffre', '57157', 'Glumotte', '2014-09-07', 'j.perrey', 'caCGroland', 'josianne.perrey@grocom.gr', 'B', '50.00', b'1', '0.00'),
(48, 'Pillot', 'Antonin', '47 rue de la Commanderie', '57000', 'Groville', '2014-09-07', 'a.pillot', 'caCGroland', 'antonin.pillot@grocom.gr', 'N', '50.00', b'0', '0.00'),
(49, 'Stein', 'Camille', '20 placette des cœurs fendus', '57000', 'Groville', '2014-09-07', 'c.stein', 'caCGroland', 'camille.stein@grocom.gr', 'N', '50.00', b'0', '0.00'),
(50, 'Vautrin', 'Gérard', '14 rue des érables', '57000', 'Groville', '2014-09-10', 'g.vautrin', 'caCGroland', 'gerard.vautrin@grocom.gr', 'N', '50.00', b'0', '0.00'),
(51, 'Bertrand', 'Eric', '12 rue des bosquets', '57117', 'Perdrons-la-Louvrette', '2014-09-10', 'e.bertrand', 'caCGroland', 'eric.bertrand@grocom.gr', 'N', '50.00', b'0', '0.00'),
(52, 'Tessier', 'Albert', '2 place Joliot-Curie', '57000', 'Groville', '2014-09-10', 'a.tessier', 'caCGroland', 'albert.tessier@grocom.gr', 'N', '50.00', b'0', '0.00'),
(53, 'Aubry', 'Claire', '85 rue des Tiercelins', '57300', 'Albichon-le-Maresque', '2014-09-10', 'c.aubry', 'caCGroland', 'claire.aubry@grocom.gr', 'N', '50.00', b'0', '0.00'),
(54, 'Kanter', 'Ralph', '25 rue Pasteur', '57160', 'Bourinne-Léfion', '2014-09-10', 'r.kanter', 'caCGroland', 'ralph.kanter@grocom.gr', 'N', '50.00', b'0', '0.00'),
(55, 'Cordier', 'Louise', '45 rue Lavoisier', '57000', 'Groville', '2014-09-11', 'l.cordier', 'caCGroland', 'louise.cordier@grocom.gr', 'N', '50.00', b'0', '0.00'),
(56, 'Jendel', 'Catherine', '31 rue Oberlin', '57640', 'Poudaille-sur-Gro', '2014-09-11', 'c.jendel', 'caCGroland', 'catherine.jendel@grocom.gr', 'N', '50.00', b'0', '0.00'),
(57, 'Martini', 'René', '7 rue C. de Foucauld', '57157', 'Glumotte', '2014-09-13', 'r.martini', 'caCGroland', 'rene.martini@grocom.gr', 'N', '50.00', b'0', '0.00'),
(58, 'Tardieu', 'André', '50 rue Poincaré', '57158', 'Chichigneux', '2014-09-13', 'a.tardieu', 'caCGroland', 'andre.tardieu@grocom.gr', 'N', '50.00', b'0', '0.00'),
(59, 'Rochfeld', 'Carine', '8 rue Anatole France', '57000', 'Groville', '2014-09-13', 'c.rochfeld', 'caCGroland', 'carine.rochfeld@grocom.gr', 'N', '50.00', b'0', '0.00'),
(60, 'Collotti', 'Serge', '56 rue de la République', '57000', 'Groville', '2014-09-13', 's.collotti', 'caCGroland', 'serge.collotti@grocom.gr', 'N', '50.00', b'0', '0.00'),
(61, 'Penaud', 'Sylvie', '31 avenue de la gare', '57000', 'Groville', '2014-09-14', 's.penaud', 'caCGroland', 'sylvie.penaud@grocom.gr', 'N', '50.00', b'0', '0.00'),
(62, 'Rollin', 'Eric', '1 boulevard de Lorraine', '57700', 'Groville', '2014-09-14', 'e.rollin', 'caCGroland', 'eric.rollin@grocom.gr', 'N', '50.00', b'0', '0.00'),
(63, 'Lang', 'Béatrice', '15 rue Fontaine', '57158', 'Chichigneux', '2014-09-14', 'b.lang', 'caCGroland', 'beatrice.lang@grocom.gr', 'N', '50.00', b'0', '0.00'),
(64, 'Chauviere', 'Guy', '35 allée des peupliers', '57300', 'Albichon-le-Maresque', '2014-09-14', 'g.chauviere', 'caCGroland', 'guy.chauviere@grocom.gr', 'N', '50.00', b'0', '0.00'),
(65, 'Deroye', 'Christianne', '52 rue Gambetta', '57000', 'Groville', '2014-09-17', 'c.deroye', 'caCGroland', 'christianne.deroye@grocom.gr', 'N', '50.00', b'0', '0.00'),
(66, 'Aumont', 'Serge', '18 rue Jean Jaurès', '57160', 'Bourinne-Léfion', '2014-09-17', 's.aumont', 'caCGroland', 'serge.aumont@grocom.gr', 'N', '50.00', b'0', '0.00'),
(67, 'Veltin', 'Stéphane', '12 rue Allende', '57700', 'Egrillard', '2014-09-17', 's.veltin', 'caCGroland', 'stephane.veltin@grocom.gr', 'N', '50.00', b'0', '0.00'),
(68, 'Ham', 'Eric', '1 place de la statue de la Liberté', '57158', 'Chichigneux', '2014-09-19', 'e.ham', 'caCGroland', 'eric.ham@grocom.gr', 'N', '50.00', b'0', '0.00'),
(69, 'Fauteau', 'Thomas', '20 rue Nièpce', '57400', 'Grobourg', '2014-10-25', 't.fauteau', 'caCGroland', 'thomas.fauteau@grocom.gr', 'N', '50.00', b'0', '0.00'),
(70, 'Lipp', 'Hans', '2 place du caleçon percé', '57270', 'Chamfouette', '2014-10-30', 'h.lipp', 'caCGroland', 'hans.lipp@grocom.gr', 'N', '50.00', b'0', '0.00'),
(71, 'Toutenvrac', 'Georgette', 'Allée du rejet', '57120', 'Clerbin-lès-Mouilleuses', '2014-11-05', 'g.toutenvrac', 'caCGroland', 'georgette.toutenvrac@grocom.gr', 'N', '50.00', b'0', '0.00'),
(72, 'Dalors', 'Homer', '30 rue des surpris', '57157', 'Glumotte', '2014-11-06', 'h.dalors', 'caCGroland', 'homer.dalors@grocom.gr', 'N', '50.00', b'0', '0.00'),
(73, 'Perret', 'Inès', '6 rue des causes perdues', '57660', 'Golèse', '2014-11-10', 'i.perret', 'caCGroland', 'ines.perret@grocom.gr', 'N', '50.00', b'0', '0.00'),
(74, 'Bombeur', 'Jean', '20 rue Sandwich', '57080', 'Troudain', '2014-11-12', 'j.bonbeur', 'caCGroland', 'jean.bonbeur@grocom.gr', 'N', '50.00', b'0', '0.00'),
(75, 'Clessou-Laporte', 'Jémila', '44 avenue de l\'exil', '57000', 'Groville', '2014-11-13', 'j.clessou-laporte', 'caCGroland', 'jemila.clessou-laporte@grocom.gr', 'N', '50.00', b'0', '0.00'),
(76, 'Diocy', 'Kelly', 'Place des simplets', '57010', 'Bedrieux-les-Plumeurs', '2014-11-20', 'k.diocy', 'caCGroland', 'kelly.diocy@grocom.gr', 'N', '50.00', b'0', '0.00'),
(77, 'Comandman', 'Lydie', '10 rue de la Genèse', '54350', 'Prainpoil', '2014-12-01', 'l.comandman', 'caCGroland', 'lydie.comandman@grocom.gr', 'N', '50.00', b'0', '0.00'),
(78, 'Zettofrais', 'Mélanie', '2 route du soleil d\'été', '57660', 'Golèse', '2014-12-10', 'm.zettofrais', 'caCGroland', 'melanie.zettofrais@grocom.gr', 'N', '50.00', b'0', '0.00'),
(79, 'Dansonjus', 'Marine', '16 rue du graillon', '57160', 'Bourinne-Léfion', '2014-12-15', 'm.dansonjus', 'caCGroland', 'marine.dansonjus@grocom.gr', 'N', '50.00', b'0', '0.00'),
(80, 'Encorimpeux', 'Oreste', '4 place des greluches esseulées', '57020', 'Cornillard-sur-Flanche', '2015-01-06', 'o.encorimpeux', 'caCGroland', 'oreste.encorimpeux@grocom.gr', 'N', '50.00', b'0', '0.00'),
(81, 'Kiroul', 'Pierre', 'Rue du rocher', '57270', 'Chamfouette', '2015-01-15', 'p.kiroul', 'caCGroland', 'pierre.kiroul@grocom.gr', 'N', '50.00', b'0', '0.00'),
(82, 'Ouate', 'Sheila', 'CL quai Préfère', '57640', 'Poudaille-sur-Gro', '2015-01-18', 's.ouate', 'caCGroland', 'sheila.ouate@grocom.gr', 'N', '50.00', b'0', '0.00'),
(83, 'Ancheffe', 'Serge', '32 rue du 2ème régiment de Zouaves', '57300', 'Albichon-le-Maresque', '2015-01-22', 's.ancheffe', 'caCGroland', 'serge.ancheffe@grocom.gr', 'N', '50.00', b'0', '0.00'),
(84, 'Vigotte', 'Sarah', '1 place du chouchène', '57080', 'Troudain', '2015-01-22', 's.vigotte', 'caCGroland', 'sarah.vigotte@grocom.gr', 'N', '50.00', b'0', '0.00'),
(85, 'Rifumeuse', 'Théo', '45 rue des savants fous', '57700', 'Egrillard', '2015-02-03', 't.rifumeuse', 'caCGroland', 'theo.rifumeuse@grocom.gr', 'N', '50.00', b'0', '0.00'),
(86, 'Dicule', 'Thierry', '5 rue de l\'avatar des Denis', '57015', 'Grottentrou', '2015-02-15', 't.dicule', 'caCGroland', 'thierry.dicule@grocom.gr', 'N', '50.00', b'0', '0.00'),
(87, 'Enchorte-Monfisse', 'Thibaud', '20 rue des mères juives', '57660', 'Golèse', '2015-02-20', 't.enchorte-monfisse', 'caCGroland', 'thibaud.enchorte-monfisse@grocom.gr', 'N', '50.00', b'0', '0.00'),
(88, 'Ponsabe de Ryen', 'Thérèse', '15 rue des innocents', '54350', 'Prainpoil', '2015-02-22', 't.ponsabe-de-ryen', 'caCGroland', 'therese.ponsabederyen@grocom.gr', 'N', '50.00', b'0', '0.00'),
(89, 'Kafergaf', 'Xavier', '2 avenue Prudence', '57140', 'Mufflins', '2015-03-01', 'x.kafergaf', 'caCGroland', 'xavier.kafergaf@grocom.gr', 'N', '50.00', b'0', '0.00'),
(90, 'Capet', 'Andy', '36 rue des éclopés', '57015', 'Grottentrou', '2015-03-05', 'a.capet', 'caCGroland', 'andy.capet@grocom.gr', 'N', '50.00', b'0', '0.00'),
(91, 'Delune', 'Claire', '2 rue des soirs tristes', '57000', 'Groville', '2015-03-06', 'c.delune', 'caCGroland', 'claire.delune@grocom.gr', 'N', '50.00', b'0', '0.00'),
(92, 'Mindan-Lagueul', 'Emma', '25 rue des irrités', '57420', 'Caillebotte', '2015-03-12', 'e.mindan-lagueul', 'caCGroland', 'emma.mindan-lagueul@grocom.gr', 'N', '50.00', b'0', '0.00'),
(93, 'Bel-Etétoy', 'François', '4 rue des jolis minois', '57001', 'Mouflard', '2015-03-25', 'f.bel-etetoy', 'caCGroland', 'françois.bel-etetoy@grocom.gr', 'N', '50.00', b'0', '0.00'),
(94, 'Héparbal', 'Gilles', '1 quai des orfèvres', '57000', 'Groville', '2015-03-26', 'g.heparbal', 'caCGroland', 'gilles.heparbal@grocom.gr', 'N', '50.00', b'0', '0.00'),
(95, 'Astarac', 'Chantal', '8 place des complaintes', '57890', 'Facquet-le-Breu', '2015-04-01', 'c.astarac', 'caCGroland', 'chantal.astarac@grocom.gr', 'N', '50.00', b'0', '0.00'),
(96, 'Razeh', 'Moussa', '15 rue des poilus', '57220', 'Gromette-en-Gleu', '2015-04-08', 'm.razeh', 'caCGroland', 'moussa.razeh@grocom.gr', 'N', '50.00', b'0', '0.00'),
(97, 'Nihouy', 'Ninon', '47 quai des indécis', '57020', 'Cornillard-sur-Flanche', '2015-04-20', 'n.nihouy', 'caCGroland', 'ninon.nihouy@grocom.gr', 'N', '50.00', b'0', '0.00'),
(98, 'Pudbiere', 'Roger', '2 rue de la dèche', '57010', 'Bedrieux-les-Plumeurs', '2015-04-25', 'r.pudbiere', 'caCGroland', 'roger.pudbiere@grocom.gr', 'N', '50.00', b'0', '0.00'),
(99, 'Austair', 'Paterne', ' 5 rue de l\'église en ruine', '57815', 'Moulard-le-Paquet', '2015-04-30', 'p.austair', 'caCGroland', 'paterne.austair@grocom.gr', 'N', '50.00', b'0', '0.00'),
(100, 'Ouilda', 'Rachid', '10 rue du moulin', '57220', 'Gromette-en-Gleu', '2015-05-05', 'r.ouilda', 'caCGroland', 'rachid.ouilda@grocom.gr', 'N', '50.00', b'0', '0.00'),
(101, 'De Sayssandre', 'René', 'Place du Phénix', '57159', 'Théophrigne-les-Gaulards', '2015-05-11', 'r.de-sayssandre', 'caCGroland', 'rene.desayssandre@grocom.gr', 'N', '50.00', b'0', '0.00'),
(102, 'Courci', 'Sarah', '512 rue de traverse', '57000', 'Groville', '2015-05-12', 's.courci', 'caCGroland', 'sarah.courci@grocom.gr', 'N', '50.00', b'0', '0.00'),
(103, 'Taite-Yanapa', 'Tatiana', '60 rue de la Loterie', '57140', 'Muflins', '2015-05-18', 't.taite-yanapas', 'caCGroland', 'tatiana.taite-yanapas@grocom.gr', 'N', '50.00', b'0', '0.00'),
(104, 'Quileur', 'Cyrielle', '17 rue Landru', '57080', 'Troudain', '2015-06-02', 'c.quileur', 'caCGroland', 'cyrielle.quileur@grocom.gr', 'N', '50.00', b'0', '0.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
