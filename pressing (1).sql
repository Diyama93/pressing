-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 05 sep. 2018 à 20:10
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pressing`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

DROP TABLE IF EXISTS `achat`;
CREATE TABLE IF NOT EXISTS `achat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `livraison_id` int(11) DEFAULT NULL,
  `produit_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` double NOT NULL,
  `prixPachat` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_26A98456F55AE19E` (`numero`),
  KEY `IDX_26A984568E54FB25` (`livraison_id`),
  KEY `IDX_26A98456F347EFB` (`produit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `assurance`
--

DROP TABLE IF EXISTS `assurance`;
CREATE TABLE IF NOT EXISTS `assurance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_386829AEF55AE19E` (`numero`),
  UNIQUE KEY `UNIQ_386829AE5E237E06` (`name`),
  KEY `IDX_386829AEA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_497DD6345E237E06` (`name`),
  KEY `IDX_497DD634A76ED395` (`user_id`),
  KEY `IDX_497DD634C54C8C93` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `firstName`, `contact`) VALUES
(3, 'Jean-Claude', '99 87 65 43'),
(4, 'Jean-Claude', '90 90 87 98'),
(6, 'Jean-Claude', '97 87 98 65'),
(7, 'Jean', '90 76 54 32'),
(8, 'Alain', '90 90 09 09'),
(9, 'Jean', '90 56 43 76'),
(10, 'Jean-Claude', '98 98 89 89'),
(11, 'Jean-Claude', '99 76 88 76'),
(12, 'wala', '90 87 65 43'),
(13, 'Jean-Claude', '98 78 89 90'),
(14, 'Jean-Claude', '90 78 56 45'),
(15, 'Jean-Claude', '98 87 87 65'),
(16, 'Jean-Claude', '90 88 99 88'),
(18, 'Jean-Claude', '99 00 00 99'),
(21, 'Jean-Claude', '90 90 98 98'),
(22, 'Jean-Claude', '90 87 65 43'),
(23, 'Jean-Claude', '90 87 65 43'),
(24, 'Jean-Claude', '90 54 68 38'),
(25, 'fofo', '92548687'),
(26, 'Sogo', '90 24 54 87'),
(27, 'GOKA', '90133589'),
(35, 'ghuyt', '45789652'),
(36, 'saho', '45121245'),
(37, 'raza', '55889966'),
(38, 'claude', '44556699'),
(39, 'DAM', '2222412'),
(40, 'abalo', '96666258'),
(41, 'abalo', '98552222'),
(42, 'kossi', '91669270'),
(43, 'marc', '98221254'),
(44, 'AYEVA', '93087425'),
(45, 'AYEVA', '93087425'),
(46, 'AYEVA', '93087425'),
(47, 'AYEVA', '93087425'),
(48, 'AYEVA', '93087425'),
(49, 'AYEVA', '93087425'),
(50, 'AYEVA', '93087425'),
(51, 'AYEVA', '93087425'),
(52, 'AYEVA', '93087425'),
(53, 'Fidèle', '91426865'),
(54, 'Eyram', '90310403'),
(55, 'AJAVON', '90106915'),
(56, 'AKPAKA', '92524740'),
(57, 'IBRAHIMA', '92702408'),
(58, 'Imaculée', '98680334'),
(59, 'Bénida', '90537865'),
(60, 'ABEVI', '92'),
(61, 'ABEVI', '92'),
(62, 'ABEVI', '92'),
(63, 'ABEVI', '92'),
(64, 'ABEVI', '92'),
(65, 'ABEVI', '92'),
(66, 'ABEVI', '92'),
(67, 'ABEVI', '92'),
(68, 'DIEU EST GRAND', '99444410'),
(69, 'DIEU EST GRAND', '99444410'),
(70, 'AVOSSE', '22221212'),
(71, 'LASSEY', '90893717'),
(72, 'BLAOUDINA', '90069390'),
(73, 'GATO', '93969468'),
(74, 'AKAKPO', '90151427'),
(75, 'M.DAM', '90398177'),
(76, 'EYRAM', '90310403'),
(77, 'DOPE', '99346605'),
(78, 'AVOSSE', '22222230'),
(79, 'ANTOINETTE', '97926297'),
(80, 'DANIEL', '97796980'),
(81, 'SAM', '91167515'),
(82, 'SANVI', '92513216'),
(83, 'DAVID', '96349022'),
(84, 'DAVID', '91949891'),
(85, 'KOLA', '92021914'),
(86, 'LOUIS', '97439042'),
(87, 'DOPE', '99346605'),
(88, 'BILL', '90170445'),
(89, 'AGBOMLA', '90113081'),
(90, 'GAGNO', '99018579'),
(91, 'Wahid', '93990515'),
(92, 'HABIA', '90182324'),
(93, 'FRANCOIS', '90203935'),
(94, 'AYEVA', '93085125'),
(95, 'YOLANDE', '90254290'),
(96, 'EYRAM', '90310403'),
(97, 'NELSON', '91954756'),
(98, 'DJAO', '90117256'),
(99, 'SYLVESTRE', '222232332'),
(100, 'SYLVESTRE', '22223232'),
(101, 'NELSON', '91954756'),
(102, 'DAVID', '91834881'),
(103, 'BILIKI', '91711645'),
(104, 'M.DAM', '90398177'),
(105, 'EYRAM', '90310403'),
(106, 'FLORENT', '91698605'),
(107, 'SAMBIANI', '90009642'),
(108, 'ADAM', '90029334'),
(109, 'NOELIE', '90071460'),
(110, 'DEBORAH', '93284261'),
(111, 'BILL', '90170445'),
(112, 'ACTION', '99545759'),
(113, 'MECANO', '22222323'),
(114, 'MECANO', '22222323'),
(115, 'NOELIE', '90071460'),
(116, 'BETTY', '90034181'),
(117, 'TETE', '90014430'),
(118, 'EKLOU', '90851725'),
(119, 'EKLOU', '90851725'),
(120, 'EKLOU', '90851725'),
(121, 'SAM', '91167515'),
(122, 'BERENGER', '90102798'),
(123, 'BERENGER', '90102798'),
(124, 'AGBOMLA', '90113081'),
(125, 'SAM TG', '91800974'),
(126, 'MIMI', '91627127'),
(127, 'TAMAKA', '91346668'),
(128, 'BETTY', '90034181'),
(129, 'WIELFRID', '90003391'),
(130, 'EYRAM', '90310403'),
(131, 'ANTOINETTE', '97926297'),
(132, 'MARCEL', '90896426'),
(133, 'DZIDA', '97483837'),
(134, 'BODY', '90309185'),
(135, 'BETTY', '90034181'),
(136, 'TOUSSAINT', '22222323'),
(137, 'AJAVON', '22222323'),
(138, 'M', '22'),
(139, 'DADC', '90220950'),
(140, 'GOKA', '22222323'),
(141, 'BOYE', '90064624'),
(142, 'KODJO', '92619657'),
(143, 'MANZI', '90033341'),
(144, 'KODJO', '22222323'),
(145, 'Jean-Claude', '90 22 89 63'),
(146, 'Jean-Claude', '90 22 89 63'),
(147, 'Jean-Claude', '90 22 89 63'),
(148, 'Jean-Claude', '90 22 89 63'),
(149, 'Jean-Claude', '90 22 89 63'),
(150, 'Romeo', '95 25 48 74');

-- --------------------------------------------------------

--
-- Structure de la table `cmdline`
--

DROP TABLE IF EXISTS `cmdline`;
CREATE TABLE IF NOT EXISTS `cmdline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_id` int(11) DEFAULT NULL,
  `produit_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `prixPachat` double NOT NULL,
  `quantite` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_AF8880DBF55AE19E` (`numero`),
  KEY `IDX_AF8880DB82EA2E54` (`commande_id`),
  KEY `IDX_AF8880DBF347EFB` (`produit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6EEAA67DF55AE19E` (`numero`),
  KEY `IDX_6EEAA67DA76ED395` (`user_id`),
  KEY `IDX_6EEAA67D670C757F` (`fournisseur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `name`, `numero`) VALUES
(1, 'EAU', 1123),
(2, 'LOYER', 1234),
(3, 'CEET', 1322),
(4, 'Grasse col', 11),
(5, 'reparation', 22),
(6, 'Crédit', 33),
(7, 'Déplacement', 44),
(8, 'Ordure', 55),
(9, 'Enveloppe', 66),
(10, 'Bic', 77),
(11, 'Cahier', 88);

-- --------------------------------------------------------

--
-- Structure de la table `depense`
--

DROP TABLE IF EXISTS `depense`;
CREATE TABLE IF NOT EXISTS `depense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compte_id` int(11) DEFAULT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `quantite` double NOT NULL,
  `tva` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_34059757F55AE19E` (`numero`),
  KEY `IDX_34059757F2C56620` (`compte_id`),
  KEY `IDX_34059757670C757F` (`fournisseur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `depense`
--

INSERT INTO `depense` (`id`, `compte_id`, `fournisseur_id`, `date`, `designation`, `numero`, `prix`, `quantite`, `tva`) VALUES
(1, 1, 1, '2018-01-08', 'Eau acheter par metre cube', '5a52c16c7c04c', 250, 3, 0),
(2, 1, NULL, '2018-01-24', 'cintre', '5a68c74d2b7c1', 300, 10, 0),
(3, 10, NULL, '2018-02-24', 'BIC', '5a918a65469b7', 100, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` double NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `time` time NOT NULL,
  `remise` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FE866410F55AE19E` (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `date`, `price`, `numero`, `etat`, `time`, `remise`) VALUES
(1, '2018-01-06', 9400, '00001NB', 1, '08:09:28', 1000),
(2, '2018-01-09', 21000, '00002NB', 1, '09:44:37', 4000),
(3, '2018-01-07', 3500, '00003NB', 1, '10:01:04', 0),
(4, '2018-01-08', 12000, '00004NB', 1, '10:04:18', 0),
(6, '2018-01-12', 9000, '00005NB', 0, '09:42:28', 500),
(7, '2018-01-15', 13200, '00006NB', 0, '09:22:49', 0),
(8, '2018-01-19', 8700, '00007NB', 0, '13:36:38', 0),
(17, '2018-01-20', 13100, '00010NB', 1, '19:31:04', 0),
(18, '2018-01-22', 9500, '00011NB', 1, '18:26:37', 0),
(19, '2018-01-22', 8400, '00012NB', 0, '18:02:19', 0),
(20, '2018-01-22', 7500, '00013NB', 0, '18:08:04', 1000),
(21, '2018-01-23', 3000, '00014NB', 0, '09:04:35', 0),
(29, '2018-01-29', 1700, '00022NB', 0, '15:12:47', 0),
(30, '2018-01-29', 1450, '00030NB', 0, '15:22:15', 0),
(31, '2018-01-29', 8250, '00031NB', 0, '15:23:33', 2000),
(32, '2018-01-29', 17650, '00032NB', 1, '15:29:31', 3000),
(33, '2018-01-29', 26300, '00033NB', 0, '17:27:55', 300),
(74, '2018-02-15', 2700, '00074NB', 1, '16:46:55', 0),
(75, '2018-02-16', 1000, '00075NB', 1, '06:34:42', 0),
(76, '2018-02-16', 1700, '00076NB', 1, '07:16:52', 0),
(77, '2018-02-16', 2200, '00077NB', 1, '07:42:22', 0),
(78, '2018-02-16', 7200, '00078NB', 0, '10:16:14', 200),
(79, '2018-02-16', 1000, '00079NB', 1, '13:56:37', 0),
(80, '2018-02-16', 2000, '00080NB', 1, '16:44:58', 0),
(81, '2018-02-17', 1200, '00081NB', 1, '07:01:42', 0),
(82, '2018-02-17', 2200, '00082NB', 1, '07:10:09', 0),
(83, '2018-02-17', 1500, '00083NB', 1, '07:11:43', 0),
(84, '2018-02-17', 1000, '00084NB', 0, '09:48:42', 0),
(85, '2018-02-17', 3000, '00085NB', 1, '14:42:11', 0),
(86, '2018-02-17', 4400, '00086NB', 1, '14:45:35', 0),
(87, '2018-02-19', 1500, '00087NB', 1, '07:07:36', 0),
(88, '2018-02-19', 6500, '00088NB', 1, '08:26:12', 0),
(89, '2018-02-19', 1200, '00089NB', 0, '09:19:23', 0),
(90, '2018-02-20', 3000, '00090NB', 0, '08:17:59', 0),
(91, '2018-02-20', 4400, '00091NB', 1, '08:21:10', 0),
(92, '2018-02-20', 5200, '00092NB', 0, '10:29:28', 0),
(93, '2018-02-20', 0, '00093NB', 0, '14:00:56', 0),
(94, '2018-02-20', 2700, '00094NB', 0, '14:02:59', 0),
(95, '2018-02-20', 1200, '00095NB', 1, '17:43:39', 0),
(96, '2018-02-21', 1900, '00096NB', 0, '06:22:48', 0),
(97, '2018-02-21', 4000, '00097NB', 1, '06:39:22', 0),
(98, '2018-02-21', 10700, '00098NB', 0, '07:19:40', 200),
(99, '2018-02-21', 2000, '00099NB', 0, '07:50:22', 0),
(100, '2018-02-21', 800, '00100NB', 1, '09:54:34', 0),
(101, '2018-02-21', 800, '00101NB', 0, '12:24:25', 0),
(102, '2018-02-21', 700, '00102NB', 1, '16:26:03', 0),
(103, '2018-02-22', 10000, '00103NB', 1, '07:15:02', 0),
(104, '2018-02-22', 1800, '00104NB', 1, '16:14:10', 0),
(105, '2018-02-23', 1000, '00105NB', 1, '06:51:32', 0),
(106, '2018-02-23', 8400, '00106NB', 0, '07:06:45', 0),
(108, '2018-02-23', 500, '00108NB', 0, '17:04:42', 0),
(109, '2018-02-24', 9800, '00109NB', 0, '06:21:51', 500),
(111, '2018-02-24', 9400, '00111NB', 0, '06:57:31', 0),
(112, '2018-02-24', 8500, '00112NB', 1, '07:01:33', 0),
(113, '2018-02-24', 500, '00113NB', 1, '07:04:11', 0),
(114, '2018-02-24', 7500, '00114NB', 0, '07:48:16', 0),
(115, '2018-02-24', 1500, '00115NB', 0, '08:28:57', 0),
(116, '2018-02-24', 700, '00116NB', 0, '09:00:21', 0),
(117, '2018-02-24', 500, '00117NB', 0, '09:01:43', 0),
(118, '2018-02-24', 1500, '00118NB', 0, '09:39:27', 0),
(119, '2018-02-24', 3100, '00119NB', 0, '10:06:56', 100),
(120, '2018-02-24', 6700, '00120NB', 0, '14:34:10', 0),
(121, '2018-02-24', 800, '00121NB', 0, '15:39:46', 0),
(122, '2018-02-24', 700, '00122NB', 0, '15:47:37', 0),
(123, '2018-02-24', 800, '00123NB', 0, '16:03:57', 0),
(124, '2018-02-24', 1200, '00124NB', 0, '16:26:43', 0),
(125, '2018-02-26', 6400, '00125NB', 0, '08:39:23', 0),
(126, '2018-02-26', 1200, '00126NB', 0, '13:12:16', 0),
(127, '2018-02-26', 800, '00127NB', 1, '13:30:30', 0),
(128, '2018-02-26', 4500, '00128NB', 0, '15:31:54', 0),
(129, '2018-02-26', 700, '00129NB', 0, '17:40:13', 0),
(130, '2018-02-27', 1500, '00130NB', 0, '07:01:10', 0),
(131, '2018-02-27', 1000, '00131NB', 0, '07:02:32', 0),
(133, '2018-02-27', 51200, '00132NB', 1, '08:52:01', 0),
(134, '2018-02-27', 1000, '00134NB', 0, '09:34:59', 0),
(135, '2018-02-27', 1500, '00135NB', 0, '10:34:16', 0),
(136, '2018-02-27', 1500, '00136NB', 0, '16:58:19', 0),
(137, '2018-02-27', 4450, '00137NB', 0, '17:02:39', 50),
(138, '2018-02-28', 1000, '00138NB', 1, '08:55:58', 0),
(139, '2018-03-01', 3600, '00139NB', 0, '16:50:58', 0),
(140, '2018-03-01', 7500, '00140NB', 0, '16:55:44', 0),
(141, '2018-03-02', 2950, '00141NB', 1, '16:56:57', 0),
(142, '2018-03-03', 18000, '00142NB', 0, '00:12:45', 500),
(143, '2018-03-03', 9150, '00143NB', 0, '00:21:59', 1000),
(144, '2018-03-03', 9000, '00144NB', 0, '04:13:53', 0),
(145, '2018-03-03', 15500, '00145NB', 0, '04:15:28', 0),
(146, '2018-04-18', 4400, '00146NB', 0, '01:07:27', 0),
(147, '2018-05-13', 11600, '00147NB', 0, '11:44:55', 0);

-- --------------------------------------------------------

--
-- Structure de la table `fos_group`
--

DROP TABLE IF EXISTS `fos_group`;
CREATE TABLE IF NOT EXISTS `fos_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4B019DDB5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

DROP TABLE IF EXISTS `fos_user`;
CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'Admin', 'admin', 'panpankofi@gmail.fr', 'panpankofi@gmail.fr', 1, NULL, '$2y$13$xtsVG9c5wNCjsSUhtwBQ0.NW9J9RkzQlu7zq5M9aUKJop4LAzb5Ba', '2018-09-05 20:06:36', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}'),
(2, 'Sylvie', 'sylvie', 'claude@gmail.com', 'claude@gmail.com', 1, NULL, '$2y$13$24PI589RkeSckD67FJ5zku.AzaouB0W4imCDwD7ciFEA7gfrerBM.', '2018-02-28 06:16:23', NULL, NULL, 'a:1:{i:0;s:11:\"ROLE_GERANT\";}');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user_user_group`
--

DROP TABLE IF EXISTS `fos_user_user_group`;
CREATE TABLE IF NOT EXISTS `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `name`, `contact`, `adress`, `numero`) VALUES
(1, 'TDE', '22235566', 'Avenue Pya Totsi', '5a52bef46f8af'),
(2, 'CEET', '250254878', 'Cacavelie', '5a662971cdee0'),
(3, 'AGOGO/Ceintre', '92252512', 'Avédji/Limosine', '5a6c3dfcd8a17');

-- --------------------------------------------------------

--
-- Structure de la table `lab_categorie`
--

DROP TABLE IF EXISTS `lab_categorie`;
CREATE TABLE IF NOT EXISTS `lab_categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C71935E65E237E06` (`name`),
  KEY `IDX_C71935E6A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lab_cmdline`
--

DROP TABLE IF EXISTS `lab_cmdline`;
CREATE TABLE IF NOT EXISTS `lab_cmdline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_id` int(11) DEFAULT NULL,
  `produit_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `prixPachat` double NOT NULL,
  `quantite` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C31BCDB0F55AE19E` (`numero`),
  KEY `IDX_C31BCDB082EA2E54` (`commande_id`),
  KEY `IDX_C31BCDB0F347EFB` (`produit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lab_commande`
--

DROP TABLE IF EXISTS `lab_commande`;
CREATE TABLE IF NOT EXISTS `lab_commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B4E68DE0F55AE19E` (`numero`),
  KEY `IDX_B4E68DE0A76ED395` (`user_id`),
  KEY `IDX_B4E68DE0670C757F` (`fournisseur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lab_produit`
--

DROP TABLE IF EXISTS `lab_produit`;
CREATE TABLE IF NOT EXISTS `lab_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `prixPachat` double NOT NULL,
  `nbrParPaquet` int(11) NOT NULL,
  `nbr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4536A14C5E237E06` (`name`),
  UNIQUE KEY `UNIQ_4536A14C77153098` (`code`),
  KEY `IDX_4536A14CA76ED395` (`user_id`),
  KEY `IDX_4536A14CBCF5E72D` (`categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `commande_id` int(11) DEFAULT NULL,
  `facture_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `assurance` tinyint(1) NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `remise` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A60C9F1FF55AE19E` (`numero`),
  UNIQUE KEY `UNIQ_A60C9F1F82EA2E54` (`commande_id`),
  UNIQUE KEY `UNIQ_A60C9F1F7F2DEE08` (`facture_id`),
  KEY `IDX_A60C9F1FA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mouvement`
--

DROP TABLE IF EXISTS `mouvement`;
CREATE TABLE IF NOT EXISTS `mouvement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `facture_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `quantite` int(11) NOT NULL,
  `prixUnite` double NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `libele` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `entree` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5B51FC3EF55AE19E` (`numero`),
  UNIQUE KEY `UNIQ_5B51FC3E7F2DEE08` (`facture_id`),
  KEY `IDX_5B51FC3EC54C8C93` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `presc`
--

DROP TABLE IF EXISTS `presc`;
CREATE TABLE IF NOT EXISTS `presc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specialite_id` int(11) DEFAULT NULL,
  `traitement_id` int(11) DEFAULT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_60736CD9F55AE19E` (`numero`),
  KEY `IDX_60736CD92195E0F0` (`specialite_id`),
  KEY `IDX_60736CD9DDA344B6` (`traitement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `presc`
--

INSERT INTO `presc` (`id`, `specialite_id`, `traitement_id`, `time`, `date`, `numero`, `prix`, `quantite`) VALUES
(3, 2, 5, '08:09:29', '2018-01-06', '5a508439090c7', 3000, 1),
(4, 1, 5, '08:09:29', '2018-01-06', '5a5084390b498', 2000, 2),
(5, 2, 6, '09:44:38', '2018-01-09', '5a548f06a0f7a', 3000, 5),
(6, 1, 6, '09:44:38', '2018-01-09', '5a548f06a2d6f', 2000, 3),
(7, 5, 7, '10:01:04', '2018-01-07', '5a51efe0e561f', 1000, 2),
(8, 4, 7, '10:01:04', '2018-01-07', '5a51efe0e75f8', 1500, 1),
(9, 2, 8, '10:04:18', '2018-01-08', '5a534222f1a9f', 3000, 2),
(10, 4, 8, '10:04:18', '2018-01-08', '5a534222f3c53', 1500, 4),
(11, 3, 5, '10:30:44', '2018-01-10', '5a55eb5484e35', 1200, 2),
(12, 4, 10, '09:42:29', '2018-01-12', '5a5883056fa69', 1500, 2),
(13, 1, 10, '09:42:29', '2018-01-12', '5a58830571d91', 2000, 3),
(14, 4, 11, '09:22:50', '2018-01-15', '5a5c72ea5fbee', 1500, 2),
(15, 3, 11, '09:22:50', '2018-01-15', '5a5c72ea61879', 1200, 1),
(16, 2, 11, '09:22:50', '2018-01-15', '5a5c72ea6325c', 3000, 3),
(17, 5, 12, '13:36:39', '2018-01-19', '5a61f467445eb', 1000, 3),
(18, 4, 12, '13:36:39', '2018-01-19', '5a61f4674898d', 1500, 3),
(19, 3, 12, '13:36:39', '2018-01-19', '5a61f4674e686', 1200, 1),
(37, 13, 19, '19:31:05', '2018-01-20', '5a6398f92bcef', 300, 1),
(38, 12, 19, '19:31:05', '2018-01-20', '5a6398f92daa3', 600, 1),
(39, 11, 19, '19:31:05', '2018-01-20', '5a6398f92f6a4', 500, 1),
(40, 8, 19, '19:31:05', '2018-01-20', '5a6398f9311d4', 2000, 1),
(41, 7, 19, '19:31:05', '2018-01-20', '5a6398f932af6', 500, 1),
(42, 6, 19, '19:31:05', '2018-01-20', '5a6398f9348ea', 500, 1),
(43, 5, 19, '19:31:05', '2018-01-20', '5a6398f93632c', 1000, 1),
(44, 4, 19, '19:31:05', '2018-01-20', '5a6398f937e09', 1500, 1),
(45, 3, 19, '19:31:05', '2018-01-20', '5a6398f9397e1', 1200, 1),
(46, 2, 19, '19:31:05', '2018-01-20', '5a6398f93b2f3', 3000, 1),
(47, 1, 19, '19:31:05', '2018-01-20', '5a6398f93ce7a', 2000, 1),
(48, 11, 20, '18:26:37', '2018-01-22', '5a662cdda6616', 500, 2),
(49, 4, 20, '18:26:37', '2018-01-22', '5a662cdda859a', 1500, 3),
(50, 8, 20, '18:26:37', '2018-01-22', '5a662cddaa170', 2000, 2),
(51, 4, 21, '18:02:19', '2018-01-22', '5a66272b28492', 1500, 4),
(52, 3, 21, '18:02:19', '2018-01-22', '5a66272b293bc', 1200, 2),
(53, 14, 22, '18:08:04', '2018-01-22', '5a6628843feb7', 1500, 1),
(54, 2, 22, '18:08:04', '2018-01-22', '5a66288440d39', 3000, 2),
(55, 2, 23, '09:04:35', '2018-01-23', '5a66faa3b9a09', 3000, 1),
(56, 21, 24, '15:12:47', '2018-01-29', '5a6f39efbcb00', 350, 2),
(57, 15, 24, '15:12:47', '2018-01-29', '5a6f39efbddb2', 500, 2),
(58, 21, 25, '15:22:15', '2018-01-29', '5a6f3c27df17a', 350, 2),
(59, 37, 25, '15:22:15', '2018-01-29', '5a6f3c27e00a1', 250, 3),
(60, 15, 26, '15:23:33', '2018-01-29', '5a6f3c7551d73', 500, 2),
(61, 21, 26, '15:23:33', '2018-01-29', '5a6f3c7552c41', 350, 5),
(62, 37, 26, '15:23:33', '2018-01-29', '5a6f3c755392e', 250, 4),
(63, 11, 26, '15:23:33', '2018-01-29', '5a6f3c7554612', 1500, 3),
(64, 16, 27, '15:29:31', '2018-01-29', '5a6f3ddb29f2a', 400, 1),
(65, 41, 27, '15:29:31', '2018-01-29', '5a6f3ddb2ada7', 200, 2),
(66, 45, 27, '15:29:31', '2018-01-29', '5a6f3ddb2bafa', 1200, 3),
(67, 44, 27, '15:29:31', '2018-01-29', '5a6f3ddb2c7a6', 1000, 2),
(68, 43, 27, '15:29:31', '2018-01-29', '5a6f3ddb2d46b', 800, 3),
(69, 11, 27, '15:29:31', '2018-01-29', '5a6f3ddb2e0f8', 1500, 4),
(70, 37, 27, '15:29:31', '2018-01-29', '5a6f3ddb2ed6a', 250, 6),
(71, 15, 27, '15:29:31', '2018-01-29', '5a6f3ddb2f9ea', 500, 2),
(72, 21, 27, '15:29:31', '2018-01-29', '5a6f3ddb3065b', 350, 1),
(73, 24, 28, '17:27:55', '2018-01-29', '5a6f599bacab2', 500, 1),
(74, 5, 28, '17:27:55', '2018-01-29', '5a6f599bad906', 1200, 2),
(75, 21, 28, '17:27:55', '2018-01-29', '5a6f599bae61b', 350, 2),
(76, 35, 28, '17:27:55', '2018-01-29', '5a6f599baf2a9', 1000, 1),
(77, 13, 28, '17:27:55', '2018-01-29', '5a6f599baff39', 1200, 7),
(78, 20, 28, '17:27:55', '2018-01-29', '5a6f599bb0bf9', 500, 14),
(79, 16, 28, '17:27:55', '2018-01-29', '5a6f599bb1876', 400, 1),
(80, 27, 28, '17:27:55', '2018-01-29', '5a6f599bb24bf', 400, 1),
(81, 26, 28, '17:27:55', '2018-01-29', '5a6f599bb30f7', 500, 6),
(82, 14, 28, '17:27:55', '2018-01-29', '5a6f599bb3d61', 500, 5),
(171, 12, 69, '16:46:55', '2018-02-15', '5a85b97f6297b', 1200, 1),
(172, 42, 69, '16:46:55', '2018-02-15', '5a85b97f63802', 1500, 1),
(173, 37, 70, '06:34:42', '2018-02-16', '5a867b823cda0', 250, 2),
(174, 14, 70, '06:34:42', '2018-02-16', '5a867b823e454', 500, 1),
(175, 26, 71, '07:16:52', '2018-02-16', '5a868564817af', 500, 1),
(176, 13, 71, '07:16:52', '2018-02-16', '5a86856482a9a', 1200, 1),
(177, 28, 72, '07:42:22', '2018-02-16', '5a868b5e9612b', 700, 1),
(178, 14, 72, '07:42:22', '2018-02-16', '5a868b5e97404', 500, 3),
(179, 54, 73, '10:16:15', '2018-02-16', '5a86af6f048ea', 1200, 1),
(180, 15, 73, '10:16:15', '2018-02-16', '5a86af6f057c8', 500, 12),
(181, 35, 74, '13:56:37', '2018-02-16', '5a86e315820de', 1000, 1),
(182, 2, 75, '16:44:58', '2018-02-16', '5a870a8a37819', 1000, 2),
(183, 13, 76, '07:01:42', '2018-02-17', '5a87d35620a59', 1200, 1),
(184, 13, 77, '07:10:09', '2018-02-17', '5a87d551339d8', 1200, 1),
(185, 14, 77, '07:10:09', '2018-02-17', '5a87d55134979', 500, 2),
(186, 4, 78, '07:11:43', '2018-02-17', '5a87d5af20ac1', 1500, 1),
(187, 8, 79, '09:48:43', '2018-02-17', '5a87fa7b04f5a', 1000, 1),
(188, 67, 80, '14:42:11', '2018-02-17', '5a883f4398ea2', 1500, 2),
(189, 20, 81, '14:45:36', '2018-02-17', '5a884010066cf', 500, 1),
(190, 23, 81, '14:45:36', '2018-02-17', '5a884010076d9', 700, 2),
(191, 26, 81, '14:45:36', '2018-02-17', '5a88401008429', 500, 5),
(192, 38, 82, '07:07:36', '2018-02-19', '5a8a77b86f0ea', 250, 2),
(193, 37, 82, '07:07:36', '2018-02-19', '5a8a77b870061', 250, 4),
(194, 20, 83, '08:26:12', '2018-02-19', '5a8a8a2438847', 500, 2),
(195, 17, 83, '08:26:12', '2018-02-19', '5a8a8a24396ea', 300, 5),
(196, 14, 83, '08:26:12', '2018-02-19', '5a8a8a243a818', 500, 2),
(197, 4, 83, '08:26:12', '2018-02-19', '5a8a8a243b56f', 1500, 2),
(198, 52, 84, '09:19:23', '2018-02-19', '5a8a969b96816', 600, 2),
(199, 26, 85, '08:18:00', '2018-02-20', '5a8bd9b802aef', 500, 2),
(200, 20, 85, '08:18:00', '2018-02-20', '5a8bd9b803a0f', 500, 1),
(201, 14, 85, '08:18:00', '2018-02-20', '5a8bd9b804b8a', 500, 3),
(202, 13, 86, '08:21:10', '2018-02-20', '5a8bda7653a8a', 1200, 1),
(203, 57, 86, '08:21:10', '2018-02-20', '5a8bda7654eb4', 1200, 1),
(204, 20, 86, '08:21:10', '2018-02-20', '5a8bda7655fe0', 500, 1),
(205, 14, 86, '08:21:10', '2018-02-20', '5a8bda765712c', 500, 3),
(206, 28, 87, '10:29:28', '2018-02-20', '5a8bf88835c0b', 800, 2),
(207, 12, 87, '10:29:28', '2018-02-20', '5a8bf88837049', 1200, 3),
(208, 4, 89, '14:02:59', '2018-02-20', '5a8c2a9342a17', 1500, 1),
(209, 13, 89, '14:02:59', '2018-02-20', '5a8c2a9343a8a', 1200, 1),
(210, 54, 90, '17:43:39', '2018-02-20', '5a8c5e4b16328', 1200, 1),
(211, 26, 91, '06:22:48', '2018-02-21', '5a8d1038a4446', 500, 1),
(212, 23, 91, '06:22:48', '2018-02-21', '5a8d1038a52f4', 700, 2),
(213, 2, 92, '06:39:22', '2018-02-21', '5a8d141a5e396', 1000, 3),
(214, 14, 92, '06:39:22', '2018-02-21', '5a8d141a5f337', 500, 2),
(215, 27, 93, '07:19:40', '2018-02-21', '5a8d1d8c2d7c7', 400, 2),
(216, 35, 93, '07:19:40', '2018-02-21', '5a8d1d8c2e65b', 1000, 1),
(217, 20, 93, '07:19:40', '2018-02-21', '5a8d1d8c2f2ba', 500, 5),
(218, 26, 93, '07:19:40', '2018-02-21', '5a8d1d8c2ff03', 500, 5),
(219, 13, 93, '07:19:40', '2018-02-21', '5a8d1d8c3120d', 1200, 2),
(220, 15, 93, '07:19:40', '2018-02-21', '5a8d1d8c31f6c', 500, 3),
(221, 26, 94, '07:50:22', '2018-02-21', '5a8d24be4aca2', 500, 1),
(222, 67, 94, '07:50:22', '2018-02-21', '5a8d24be4bc5d', 1500, 1),
(223, 2, 95, '09:54:34', '2018-02-21', '5a8d41da33cdc', 800, 1),
(224, 28, 96, '12:24:25', '2018-02-21', '5a8d64f93ee73', 800, 1),
(225, 15, 97, '16:26:03', '2018-02-21', '5a8d9d9bd8313', 700, 1),
(226, 12, 98, '07:15:02', '2018-02-22', '5a8e6df648d61', 1000, 1),
(227, 20, 98, '07:15:02', '2018-02-22', '5a8e6df649d59', 500, 1),
(228, 28, 98, '07:15:02', '2018-02-22', '5a8e6df64aa31', 800, 10),
(229, 14, 98, '07:15:02', '2018-02-22', '5a8e6df64b821', 500, 1),
(230, 35, 99, '16:14:10', '2018-02-22', '5a8eec5266830', 1000, 1),
(231, 2, 99, '16:14:10', '2018-02-22', '5a8eec5267afc', 800, 1),
(232, 15, 100, '06:51:32', '2018-02-23', '5a8fb9f4e1af6', 500, 2),
(233, 55, 101, '07:06:45', '2018-02-23', '5a8fbd854d696', 700, 3),
(234, 20, 101, '07:06:45', '2018-02-23', '5a8fbd854e582', 500, 3),
(235, 17, 101, '07:06:45', '2018-02-23', '5a8fbd854f459', 300, 1),
(236, 4, 101, '07:06:45', '2018-02-23', '5a8fbd85506cc', 1500, 2),
(237, 14, 101, '07:06:45', '2018-02-23', '5a8fbd855156a', 500, 3),
(238, 40, 103, '17:04:42', '2018-02-23', '5a9049aab31a5', 500, 1),
(239, 27, 104, '06:21:51', '2018-02-24', '5a91047f5c868', 400, 4),
(240, 3, 104, '06:21:51', '2018-02-24', '5a91047f5dbbb', 800, 2),
(241, 20, 104, '06:21:51', '2018-02-24', '5a91047f5e8fb', 500, 1),
(242, 25, 104, '06:21:51', '2018-02-24', '5a91047f5f566', 400, 1),
(243, 12, 104, '06:21:51', '2018-02-24', '5a91047f601a1', 1200, 1),
(244, 28, 104, '06:21:51', '2018-02-24', '5a91047f60e20', 800, 5),
(245, 15, 104, '06:21:51', '2018-02-24', '5a91047f61a79', 500, 1),
(247, 11, 106, '06:57:31', '2018-02-24', '5a910cdb40b74', 1500, 1),
(248, 13, 106, '06:57:31', '2018-02-24', '5a910cdb419f9', 1200, 2),
(249, 8, 106, '06:57:31', '2018-02-24', '5a910cdb42766', 1300, 1),
(250, 55, 106, '06:57:31', '2018-02-24', '5a910cdb4356a', 700, 1),
(251, 20, 106, '06:57:31', '2018-02-24', '5a910cdb441f4', 500, 6),
(252, 15, 106, '06:57:31', '2018-02-24', '5a910cdb44f76', 500, 1),
(253, 20, 107, '07:01:33', '2018-02-24', '5a910dcdf11f2', 500, 5),
(254, 26, 107, '07:01:33', '2018-02-24', '5a910dcdf20c5', 500, 7),
(255, 15, 107, '07:01:33', '2018-02-24', '5a910dcdf2f9e', 500, 5),
(256, 20, 108, '07:04:11', '2018-02-24', '5a910e6bbcd5d', 500, 1),
(257, 26, 109, '07:48:16', '2018-02-24', '5a9118c036fbf', 500, 6),
(258, 20, 109, '07:48:16', '2018-02-24', '5a9118c037fc7', 500, 5),
(259, 15, 109, '07:48:16', '2018-02-24', '5a9118c038d90', 500, 4),
(260, 15, 110, '08:28:57', '2018-02-24', '5a912249f1e60', 500, 3),
(261, 23, 111, '09:00:21', '2018-02-24', '5a9129a53f4c7', 700, 1),
(262, 14, 112, '09:01:43', '2018-02-24', '5a9129f78bfff', 500, 1),
(263, 4, 113, '09:39:28', '2018-02-24', '5a9132d0077a2', 1500, 1),
(264, 33, 114, '10:06:56', '2018-02-24', '5a913940f241d', 600, 1),
(265, 26, 114, '10:06:56', '2018-02-24', '5a913940f32b1', 500, 1),
(266, 15, 114, '10:06:56', '2018-02-24', '5a913940f40f3', 500, 4),
(267, 20, 115, '14:34:10', '2018-02-24', '5a9177e24cf13', 500, 2),
(268, 4, 115, '14:34:10', '2018-02-24', '5a9177e24e3cb', 1500, 1),
(269, 13, 115, '14:34:10', '2018-02-24', '5a9177e24faa8', 1200, 1),
(270, 15, 115, '14:34:10', '2018-02-24', '5a9177e2508a0', 500, 6),
(271, 28, 116, '15:39:46', '2018-02-24', '5a9187423d31b', 800, 1),
(272, 15, 117, '15:47:37', '2018-02-24', '5a918919defb2', 700, 1),
(273, 28, 118, '16:03:58', '2018-02-24', '5a918cee0861d', 800, 1),
(274, 13, 119, '16:26:43', '2018-02-24', '5a9192439e2c6', 1200, 1),
(275, 15, 119, '16:26:43', '2018-02-24', '5a9192439f14f', 500, 0),
(276, 4, 120, '08:39:23', '2018-02-26', '5a93c7bb7ade4', 1500, 1),
(277, 20, 120, '08:39:23', '2018-02-26', '5a93c7bb7bc7d', 500, 3),
(278, 12, 120, '08:39:23', '2018-02-26', '5a93c7bb7c9d2', 1200, 2),
(279, 14, 120, '08:39:23', '2018-02-26', '5a93c7bb7d69a', 500, 1),
(280, 15, 120, '08:39:23', '2018-02-26', '5a93c7bb7e32b', 500, 1),
(281, 13, 121, '13:12:16', '2018-02-26', '5a9407b0c84d5', 1200, 1),
(282, 28, 122, '13:30:30', '2018-02-26', '5a940bf61364f', 800, 1),
(283, 20, 123, '15:31:54', '2018-02-26', '5a94286abb46c', 500, 4),
(284, 15, 123, '15:31:54', '2018-02-26', '5a94286abc43a', 500, 5),
(285, 15, 124, '17:40:13', '2018-02-26', '5a94467d81dcd', 700, 1),
(286, 20, 125, '07:01:11', '2018-02-27', '5a9502370c288', 500, 1),
(287, 14, 125, '07:01:11', '2018-02-27', '5a9502370d0b6', 500, 2),
(288, 15, 126, '07:02:32', '2018-02-27', '5a9502886245b', 500, 2),
(289, 69, 128, '08:52:01', '2018-02-27', '5a951c31e208e', 4600, 7),
(290, 68, 128, '08:52:01', '2018-02-27', '5a951c31e2f8d', 3800, 5),
(291, 20, 129, '09:34:59', '2018-02-27', '5a952643532d8', 500, 1),
(292, 15, 129, '09:34:59', '2018-02-27', '5a952643543e1', 500, 1),
(293, 4, 130, '10:34:16', '2018-02-27', '5a95342860a6d', 1500, 1),
(294, 15, 131, '16:58:19', '2018-02-27', '5a958e2b94bd4', 500, 3),
(295, 40, 132, '17:02:39', '2018-02-27', '5a958f2fd8332', 600, 2),
(296, 38, 132, '17:02:39', '2018-02-27', '5a958f2fd9344', 250, 5),
(297, 37, 132, '17:02:39', '2018-02-27', '5a958f2fda20c', 250, 8),
(298, 20, 133, '08:55:58', '2018-02-28', '5a966e9e8ad3d', 500, 2),
(299, 50, 134, '16:50:59', '2018-03-01', '5a9980f3934bc', 600, 2),
(300, 5, 134, '16:50:59', '2018-03-01', '5a9980f394da7', 1200, 2),
(301, 37, 135, '16:55:44', '2018-03-01', '5a998210bf383', 250, 2),
(302, 11, 135, '16:55:44', '2018-03-01', '5a998210c07b4', 1500, 3),
(303, 14, 135, '16:55:44', '2018-03-01', '5a998210c1d86', 500, 4),
(304, 15, 135, '16:55:44', '2018-03-01', '5a998210c3381', 500, 1),
(305, 21, 136, '16:56:57', '2018-03-02', '5a998259e8b8a', 350, 2),
(306, 37, 136, '16:56:57', '2018-03-02', '5a998259ea3c5', 250, 3),
(307, 11, 136, '16:56:57', '2018-03-02', '5a998259eb7df', 1500, 1),
(308, 11, 137, '00:12:46', '2018-03-03', '5a99e87e73f78', 1500, 8),
(309, 8, 137, '00:12:46', '2018-03-03', '5a99e87e755d1', 1200, 5),
(310, 14, 138, '00:22:00', '2018-03-03', '5a99eaa81e3b0', 500, 4),
(311, 45, 138, '00:22:00', '2018-03-03', '5a99eaa828fe7', 1200, 2),
(312, 44, 138, '00:22:00', '2018-03-03', '5a99eaa82a2e8', 1000, 4),
(313, 37, 138, '00:22:00', '2018-03-03', '5a99eaa82b890', 250, 3),
(314, 11, 139, '04:13:53', '2018-03-03', '5a9a210183262', 1500, 6),
(315, 8, 140, '04:15:28', '2018-03-03', '5a9a2160b2e37', 1200, 5),
(316, 11, 140, '04:15:28', '2018-03-03', '5a9a2160b4c0d', 1500, 6),
(317, 37, 140, '04:15:28', '2018-03-03', '5a9a2160bf153', 250, 2),
(318, 8, 141, '01:07:27', '2018-04-18', '5acc0e4f97a13', 1200, 2),
(319, 66, 141, '01:07:27', '2018-04-18', '5acc0e4fa04ed', 1000, 2),
(320, 66, 142, '11:44:55', '2018-05-13', '5af82537933a0', 1000, 2),
(321, 8, 142, '11:44:55', '2018-05-13', '5af825379458d', 1200, 3),
(322, 11, 142, '11:44:55', '2018-05-13', '5af8253794b2a', 1500, 4);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `prixAchat` double NOT NULL,
  `prixVente` double NOT NULL,
  `prixPachat` double NOT NULL,
  `prixPvente` double NOT NULL,
  `nbrParPaquet` int(11) NOT NULL,
  `nbr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_29A5EC275E237E06` (`name`),
  UNIQUE KEY `UNIQ_29A5EC2777153098` (`code`),
  KEY `IDX_29A5EC27A76ED395` (`user_id`),
  KEY `IDX_29A5EC27BCF5E72D` (`categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rebut`
--

DROP TABLE IF EXISTS `rebut`;
CREATE TABLE IF NOT EXISTS `rebut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `etat` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BB645BF55AE19E` (`numero`),
  KEY `IDX_7BB645BA76ED395` (`user_id`),
  KEY `IDX_7BB645BC54C8C93` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `function` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_57698A6A5E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `name`, `function`) VALUES
(1, 'ROLE_GERANT', 'ROLE_GERANT');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E19D9AD2F55AE19E` (`numero`),
  KEY `IDX_E19D9AD2A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `user_id`, `name`, `numero`) VALUES
(1, 1, 'Lavage', '5a436460355b3'),
(2, 1, 'Repassage', '5a436477814dc');

-- --------------------------------------------------------

--
-- Structure de la table `sortie`
--

DROP TABLE IF EXISTS `sortie`;
CREATE TABLE IF NOT EXISTS `sortie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produit_id` int(11) DEFAULT NULL,
  `vente_id` int(11) DEFAULT NULL,
  `rebut_id` int(11) DEFAULT NULL,
  `facture_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` double NOT NULL,
  `prixVente` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3C3FD3F2F55AE19E` (`numero`),
  UNIQUE KEY `UNIQ_3C3FD3F27F2DEE08` (`facture_id`),
  KEY `IDX_3C3FD3F2F347EFB` (`produit_id`),
  KEY `IDX_3C3FD3F27DC7170A` (`vente_id`),
  KEY `IDX_3C3FD3F25B8AC0C1` (`rebut_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
CREATE TABLE IF NOT EXISTS `specialite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E7D6FCC1F55AE19E` (`numero`),
  KEY `IDX_E7D6FCC1ED5CA9E6` (`service_id`),
  KEY `IDX_E7D6FCC1A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`id`, `service_id`, `user_id`, `name`, `prix`, `numero`) VALUES
(1, 1, 1, 'Veste en cuire', 2000, '5a43661369dbb'),
(2, 1, 1, 'Veste homme', 1000, '5a4366431c387'),
(3, 1, 1, 'Veste dame', 800, '5a51ee496babf'),
(4, 1, 1, 'Costume homme', 1500, '5a51ee65c46bc'),
(5, 1, 1, 'Costume dame', 1200, '5a51ee9964ba7'),
(6, 1, 1, 'Costume 3 pièces', 1800, '5a51eeb760d88'),
(7, 1, 1, 'Costume pour enfant', 1000, '5a51eed31c862'),
(8, 1, 1, 'Boubou 2 pièces', 1200, '5a63972bef368'),
(11, 1, 1, 'Boubou 3 pièces', 1500, '5a63977fd467d'),
(12, 1, 1, 'Ens/dame', 1200, '5a63987c4eab8'),
(13, 1, 1, 'Ens/homme', 1200, '5a6398a1348ce'),
(14, 1, 1, 'Chemise mche longue', 500, '5a66265b1871f'),
(15, 1, 2, 'Chemise mche   courte', 500, '5a670916b4690'),
(16, 1, 2, 'Culotte', 400, '5a670944d461d'),
(17, 1, 2, 'Cravatte', 300, '5a670975f15f7'),
(18, 1, 2, 'Gillet', 350, '5a6709a99e2c7'),
(19, 1, 2, 'Pullover', 700, '5a670a0c5a9a0'),
(20, 1, 2, 'Pantalon', 500, '5a670a8b7ffa4'),
(21, 1, 2, 'Chemise enfant', 350, '5a670c5118ad3'),
(22, 1, 2, 'Pantalon enfant', 350, '5a670c82c35d2'),
(23, 1, 2, 'Pantalon jean', 700, '5a670d07874a9'),
(24, 1, 2, 'Corsage', 500, '5a670d420d5c7'),
(25, 1, 2, 'Jupe', 500, '5a670d5a48257'),
(26, 1, 2, 'Lacoste', 500, '5a670d872d9da'),
(27, 1, 2, 'T-shirt', 400, '5a670db3a9c83'),
(28, 1, 2, 'Robe', 800, '5a670e3586573'),
(29, 1, 2, 'Robe(boubou)', 1000, '5a670ec59ff73'),
(30, 1, 2, 'Robe+foulard', 1000, '5a670ef17400b'),
(31, 1, 2, 'Robe mariage PM', 2000, '5a670f597b754'),
(32, 1, 2, 'Robe mariage GM', 4000, '5a670fc61cac5'),
(33, 1, 2, 'Serviette PM', 600, '5a67100de853d'),
(34, 1, 2, 'Serviette moyen', 800, '5a671051e1532'),
(35, 1, 2, 'Serviette GM', 1200, '5a67111cd99bf'),
(36, 2, 2, 'veste homme', 500, '5a6b4a0f72e46'),
(37, 2, 2, 'chemise', 250, '5a6b4a3bd7308'),
(38, 2, 2, 'pantalon', 250, '5a6b4a5b75959'),
(39, 2, 2, 'Ens/dame', 600, '5a6c3ed3e33a5'),
(40, 2, 2, 'Ens/homme', 600, '5a6c3ef986e99'),
(41, 2, 2, 'Culotte', 200, '5a6c3f207e90d'),
(42, 1, 2, 'Ens/habit tradit.', 1500, '5a6c3fb7e0814'),
(43, 1, 2, 'Chemise tradit PM', 800, '5a6c3ff40699d'),
(44, 1, 2, 'Chemise tradit Moy', 1000, '5a6c403ca28ab'),
(45, 1, 2, 'Chemise tradit GM', 1200, '5a6c406394bc2'),
(46, 1, 2, 'Pagne', 500, '5a6c4088c9b09'),
(47, 2, 2, 'Veste homme', 500, '5a6c40c24158f'),
(48, 2, 2, 'Veste dame', 400, '5a6c410f87f38'),
(49, 2, 2, 'Costume homme', 750, '5a6c413a0eec9'),
(50, 2, 2, 'Costume dame', 600, '5a6c415f415ce'),
(51, 2, 2, 'Robe', 400, '5a6c41a31e216'),
(52, 2, 2, 'Robe', 500, '5a6c41ba2590f'),
(53, 1, 2, 'Provisoire ML', 1400, '5a6f46af6b2de'),
(54, 1, 2, 'Provisoire MC', 1200, '5a6f46d8bfc9d'),
(55, 2, 2, 'Provisoire ML', 700, '5a6f46fc59953'),
(56, 2, 2, 'Provisoire MC', 600, '5a6f47227bef0'),
(57, 1, 2, 'Drap 2 places', 1200, '5a6f5cb11ae4f'),
(58, 1, 2, 'Drap 3 places', 1500, '5a6f5cdfbec9c'),
(59, 1, 2, 'Drap 2 places double', 1500, '5a6f5d2a8179c'),
(60, 1, 2, 'Drap 3 places double', 2000, '5a6f5d65f2cd2'),
(61, 1, 2, 'Drap lourd 1 place', 2000, '5a6f5d97ab0a8'),
(62, 1, 2, 'Drap lourd 2 places', 3000, '5a6f5e1de3ad1'),
(63, 1, 2, 'Drap lourd 3 places', 4000, '5a6f5e5694e51'),
(64, 1, 2, 'Pagne et Jupe Trad.', 1400, '5a83f7ba0e7b2'),
(65, 1, 2, 'Housse', 300, '5a8427406cf50'),
(66, 1, 2, 'Boubou 1 Pièce', 1000, '5a87fb3b579da'),
(67, 1, 2, 'Drap 1 Place', 1500, '5a883eece5b17'),
(68, 1, 1, 'Rideaux PM', 3800, '5a9519fb60dbf'),
(69, 1, 1, 'Rideaux GM', 4600, '5a951a29a9da2'),
(70, 1, 1, 'chemise haut', 500, '5af82471ebfdb');

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

DROP TABLE IF EXISTS `traitement`;
CREATE TABLE IF NOT EXISTS `traitement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `facture_id` int(11) DEFAULT NULL,
  `time` time NOT NULL,
  `rdvDate` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2A356D27F55AE19E` (`numero`),
  UNIQUE KEY `UNIQ_2A356D277F2DEE08` (`facture_id`),
  KEY `IDX_2A356D27A76ED395` (`user_id`),
  KEY `IDX_2A356D2719EB6921` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `traitement`
--

INSERT INTO `traitement` (`id`, `user_id`, `client_id`, `date`, `numero`, `facture_id`, `time`, `rdvDate`) VALUES
(5, 1, 6, '2018-01-06', '5a50843891447', 1, '08:09:28', '2018-01-09'),
(6, 1, 7, '2018-01-09', '5a548f05f4238', 2, '09:44:37', '2018-01-17'),
(7, 1, 8, '2018-01-07', '5a51efe079dcc', 3, '10:01:04', '2018-01-17'),
(8, 1, 9, '2018-01-08', '5a53422288002', 4, '10:04:18', '2018-01-16'),
(10, 1, 11, '2018-01-12', '5a588304b7cf0', 6, '09:42:28', '2018-01-19'),
(11, 1, 12, '2018-01-15', '5a5c72e9dcd4d', 7, '09:22:49', '2018-01-15'),
(12, 1, 13, '2018-01-19', '5a61f46631b75', 8, '13:36:38', '2018-01-19'),
(19, 1, 23, '2018-01-20', '5a6398f8b9a07', 17, '19:31:04', '2018-01-22'),
(20, 1, 24, '2018-01-22', '5a662cdd4bf37', 18, '18:26:37', '2018-01-24'),
(21, 2, 25, '2018-01-22', '5a66272b12efb', 19, '18:02:19', '2018-01-25'),
(22, 2, 26, '2018-01-22', '5a6628842fbf7', 20, '18:08:04', '2018-01-30'),
(23, 2, 27, '2018-01-23', '5a66faa38c203', 21, '09:04:35', '2018-01-23'),
(24, 1, 35, '2018-01-29', '5a6f39efa032c', 29, '15:12:47', '2018-02-02'),
(25, 1, 36, '2018-01-29', '5a6f3c27cc410', 30, '15:22:15', '2018-02-02'),
(26, 1, 37, '2018-01-29', '5a6f3c753f4a9', 31, '15:23:33', '2018-01-26'),
(27, 1, 38, '2018-01-29', '5a6f3ddb13617', 32, '15:29:31', '2018-02-02'),
(28, 2, 39, '2018-01-29', '5a6f599b93f1a', 33, '17:27:55', '2018-01-31'),
(69, 2, 80, '2018-02-15', '5a85b97f50588', 74, '16:46:55', '2018-02-17'),
(70, 2, 81, '2018-02-16', '5a867b8212ea2', 75, '06:34:42', '2018-02-17'),
(71, 2, 82, '2018-02-16', '5a8685646f27a', 76, '07:16:52', '2018-02-17'),
(72, 2, 83, '2018-02-16', '5a868b5e83d15', 77, '07:42:22', '2018-02-17'),
(73, 2, 84, '2018-02-16', '5a86af6ee5a2c', 78, '10:16:14', '2018-02-19'),
(74, 2, 85, '2018-02-16', '5a86e31570fdb', 79, '13:56:37', '2018-02-19'),
(75, 2, 86, '2018-02-16', '5a870a8a2441d', 80, '16:44:58', '2018-02-19'),
(76, 2, 87, '2018-02-17', '5a87d3560f4f0', 81, '07:01:42', '2018-02-19'),
(77, 2, 88, '2018-02-17', '5a87d5512132d', 82, '07:10:09', '2018-02-17'),
(78, 2, 89, '2018-02-17', '5a87d5af10ed8', 83, '07:11:43', '2018-02-19'),
(79, 2, 90, '2018-02-17', '5a87fa7ae7a95', 84, '09:48:42', '2018-02-19'),
(80, 2, 91, '2018-02-17', '5a883f438859c', 85, '14:42:11', '2018-02-19'),
(81, 2, 92, '2018-02-17', '5a88400fe7dba', 86, '14:45:35', '2018-02-19'),
(82, 2, 93, '2018-02-19', '5a8a77b85cee9', 87, '07:07:36', '2018-02-21'),
(83, 2, 94, '2018-02-19', '5a8a8a2424db5', 88, '08:26:12', '2018-02-21'),
(84, 2, 95, '2018-02-19', '5a8a969b84ae2', 89, '09:19:23', '2018-02-19'),
(85, 2, 96, '2018-02-20', '5a8bd9b7cbacd', 90, '08:17:59', '2018-02-22'),
(86, 2, 97, '2018-02-20', '5a8bda763a2ac', 91, '08:21:10', '2018-02-22'),
(87, 2, 98, '2018-02-20', '5a8bf8881ea1a', 92, '10:29:28', '2018-02-22'),
(88, 2, 99, '2018-02-20', '5a8c2a187a805', 93, '14:00:56', '2018-02-22'),
(89, 2, 100, '2018-02-20', '5a8c2a932bbd4', 94, '14:02:59', '2018-02-22'),
(90, 2, 101, '2018-02-20', '5a8c5e4b02736', 95, '17:43:39', '2018-02-22'),
(91, 2, 102, '2018-02-21', '5a8d10388f9f8', 96, '06:22:48', '2018-02-23'),
(92, 2, 103, '2018-02-21', '5a8d141a4b769', 97, '06:39:22', '2018-02-23'),
(93, 2, 104, '2018-02-21', '5a8d1d8c18575', 98, '07:19:40', '2018-02-23'),
(94, 2, 105, '2018-02-21', '5a8d24be365ff', 99, '07:50:22', '2018-02-23'),
(95, 2, 106, '2018-02-21', '5a8d41da225c9', 100, '09:54:34', '2018-02-23'),
(96, 2, 107, '2018-02-21', '5a8d64f92f509', 101, '12:24:25', '2018-02-23'),
(97, 2, 108, '2018-02-21', '5a8d9d9bc887d', 102, '16:26:03', '2018-02-23'),
(98, 2, 109, '2018-02-22', '5a8e6df633f28', 103, '07:15:02', '2018-02-24'),
(99, 2, 110, '2018-02-22', '5a8eec5254312', 104, '16:14:10', '2018-02-24'),
(100, 2, 111, '2018-02-23', '5a8fb9f4d0c80', 105, '06:51:32', '2018-02-24'),
(101, 2, 112, '2018-02-23', '5a8fbd8537f76', 106, '07:06:45', '2018-02-26'),
(103, 2, 114, '2018-02-23', '5a9049aaa20b9', 108, '17:04:42', '2018-02-24'),
(104, 2, 115, '2018-02-24', '5a91047f46339', 109, '06:21:51', '2018-02-26'),
(106, 2, 117, '2018-02-24', '5a910cdb29eec', 111, '06:57:31', '2018-02-26'),
(107, 2, 118, '2018-02-24', '5a910dcddf908', 112, '07:01:33', '2018-02-26'),
(108, 2, 119, '2018-02-24', '5a910e6badf9d', 113, '07:04:11', '2018-02-26'),
(109, 2, 120, '2018-02-24', '5a9118c0250c1', 114, '07:48:16', '2018-02-26'),
(110, 2, 121, '2018-02-24', '5a912249e0119', 115, '08:28:57', '2018-02-27'),
(111, 2, 122, '2018-02-24', '5a9129a52f631', 116, '09:00:21', '2018-02-26'),
(112, 2, 123, '2018-02-24', '5a9129f77af50', 117, '09:01:43', '2018-02-26'),
(113, 2, 124, '2018-02-24', '5a9132cfeb9b8', 118, '09:39:27', '2018-02-26'),
(114, 2, 125, '2018-02-24', '5a913940dec72', 119, '10:06:56', '2018-02-26'),
(115, 2, 126, '2018-02-24', '5a9177e2385c1', 120, '14:34:10', '2018-02-27'),
(116, 1, 127, '2018-02-24', '5a9187422bfc2', 121, '15:39:46', '2018-02-26'),
(117, 1, 128, '2018-02-24', '5a918919cdd71', 122, '15:47:37', '2018-02-26'),
(118, 2, 129, '2018-02-24', '5a918ceded36d', 123, '16:03:57', '2018-02-26'),
(119, 2, 130, '2018-02-24', '5a9192438dd73', 124, '16:26:43', '2018-02-26'),
(120, 2, 131, '2018-02-26', '5a93c7bb661f2', 125, '08:39:23', '2018-02-26'),
(121, 2, 132, '2018-02-26', '5a9407b0b5eaa', 126, '13:12:16', '2018-02-28'),
(122, 2, 133, '2018-02-26', '5a940bf60240e', 127, '13:30:30', '2018-02-27'),
(123, 2, 134, '2018-02-26', '5a94286aaa896', 128, '15:31:54', '2018-02-28'),
(124, 2, 135, '2018-02-26', '5a94467d702d8', 129, '17:40:13', '2018-02-28'),
(125, 2, 136, '2018-02-27', '5a950236f0752', 130, '07:01:10', '2018-03-01'),
(126, 2, 137, '2018-02-27', '5a9502885185e', 131, '07:02:32', '2018-03-01'),
(128, 1, 139, '2018-02-27', '5a951c31d040f', 133, '08:52:01', '2017-11-20'),
(129, 2, 140, '2018-02-27', '5a95264339931', 134, '09:34:59', '2018-03-01'),
(130, 2, 141, '2018-02-27', '5a9534284e76f', 135, '10:34:16', '2018-03-01'),
(131, 2, 142, '2018-02-27', '5a958e2b85bf7', 136, '16:58:19', '2018-03-01'),
(132, 2, 143, '2018-02-27', '5a958f2fc66be', 137, '17:02:39', '2018-03-01'),
(133, 2, 144, '2018-02-28', '5a966e9e7aad1', 138, '08:55:58', '2018-03-02'),
(134, 1, 145, '2018-03-01', '5a9980f272a41', 139, '16:50:58', '2018-03-07'),
(135, 1, 146, '2018-03-01', '5a99821089294', 140, '16:55:44', '2018-03-05'),
(136, 1, 147, '2018-03-02', '5a998259b2738', 141, '16:56:57', '2018-03-05'),
(137, 1, 148, '2018-03-03', '5a99e87db08bc', 142, '00:12:45', '2018-03-05'),
(138, 1, 149, '2018-03-03', '5a99eaa7c90bd', 143, '00:21:59', '2018-03-13'),
(139, 1, 41, '2018-03-03', '5a9a210160002', 144, '04:13:53', '2018-03-20'),
(140, 1, 150, '2018-03-03', '5a9a21608f5f6', 145, '04:15:28', '2018-03-03'),
(141, 1, 40, '2018-04-18', '5acc0e4f6d709', 146, '01:07:27', '2018-04-10'),
(142, 1, NULL, '2018-05-13', '5af82537685e8', 147, '11:44:55', '2018-05-13');

-- --------------------------------------------------------

--
-- Structure de la table `type_mouvement`
--

DROP TABLE IF EXISTS `type_mouvement`;
CREATE TABLE IF NOT EXISTS `type_mouvement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EF97BD2E5E237E06` (`name`),
  KEY `IDX_EF97BD2EA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type_presc`
--

DROP TABLE IF EXISTS `type_presc`;
CREATE TABLE IF NOT EXISTS `type_presc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6E7FEB2E5E237E06` (`name`),
  KEY `IDX_6E7FEB2EA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type_produit`
--

DROP TABLE IF EXISTS `type_produit`;
CREATE TABLE IF NOT EXISTS `type_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_18483D25E237E06` (`name`),
  KEY `IDX_18483D2A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type_rebut`
--

DROP TABLE IF EXISTS `type_rebut`;
CREATE TABLE IF NOT EXISTS `type_rebut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9B7E3AC5E237E06` (`name`),
  KEY `IDX_9B7E3ACA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2DE8C6A3A76ED395` (`user_id`),
  KEY `IDX_2DE8C6A3D60322AC` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

DROP TABLE IF EXISTS `vente`;
CREATE TABLE IF NOT EXISTS `vente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_888A2A4CF55AE19E` (`numero`),
  KEY `IDX_888A2A4CA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `versement`
--

DROP TABLE IF EXISTS `versement`;
CREATE TABLE IF NOT EXISTS `versement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facture_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `numero` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_716E9367F55AE19E` (`numero`),
  KEY `IDX_716E93677F2DEE08` (`facture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `versement`
--

INSERT INTO `versement` (`id`, `facture_id`, `date`, `numero`, `price`, `time`) VALUES
(1, 1, '2018-01-06', '5a5090c5ba239', 1000, '00:00:00'),
(2, 1, '2018-01-09', '5a548d026f85e', 5000, '00:00:00'),
(3, 2, '2018-01-09', '5a548f3036c37', 10000, '00:00:00'),
(4, 3, '2018-01-07', '5a51f009905e4', 3500, '00:00:00'),
(5, 4, '2018-01-08', '5a5342b9e7f24', 12000, '00:00:00'),
(6, 1, '2018-01-10', '5a55ed2012892', 1000, '10:38:24'),
(7, 1, '2018-01-12', '5a587db722eb8', 1400, '09:19:51'),
(8, 2, '2018-01-12', '5a587eb0e396d', 3000, '09:24:00'),
(12, 2, '2018-01-12', '5a5881c7b6ee7', 2000, '09:37:11'),
(13, 2, '2018-01-12', '5a588244a77e3', 2000, '09:39:16'),
(14, 6, '2018-01-12', '5a58832bb64e2', 4000, '09:43:07'),
(15, 6, '2018-01-12', '5a58894af08d9', 1000, '10:09:14'),
(16, 6, '2018-01-12', '5a5889d89066c', 1000, '10:11:36'),
(17, 6, '2018-01-12', '5a588a4f93429', 1000, '10:13:35'),
(18, 6, '2018-01-12', '5a588ae773eb0', 500, '10:16:07'),
(19, 6, '2018-01-12', '5a588bd1a81f5', 200, '10:20:01'),
(20, 6, '2018-01-12', '5a588c213829e', 200, '10:21:21'),
(21, 6, '2018-01-12', '5a588c22984b2', 200, '10:21:22'),
(22, 18, '2018-01-22', '5a662cf0000a5', 6000, '18:26:55'),
(23, 18, '2018-01-22', '5a662decb5d24', 3500, '18:31:08'),
(24, 19, '2018-01-22', '5a6627345614d', 5000, '18:02:28'),
(25, 20, '2018-01-22', '5a66289b0cc3d', 5000, '18:08:27'),
(26, 21, '2018-01-23', '5a66facce5a7b', 1000, '09:05:16'),
(27, 17, '2018-01-27', '5a6cac06df46a', 2000, '16:42:46'),
(28, 17, '2018-01-27', '5a6cac26b10be', 11100, '16:43:18'),
(29, 31, '2018-01-29', '5a6f3c884e8bf', 4500, '15:23:52'),
(30, 32, '2018-01-29', '5a6f3deca5e68', 10000, '15:29:48'),
(31, 32, '2018-01-29', '5a6f3f246975b', 4650, '15:35:00'),
(32, 33, '2018-01-29', '5a6f59ddd1222', 20000, '17:29:01'),
(43, 75, '2018-02-16', '5a867ba4a5a21', 1000, '06:35:16'),
(44, 76, '2018-02-16', '5a86857b3d8b6', 1700, '07:17:15'),
(45, 78, '2018-02-16', '5a86aff965f96', 2500, '10:18:33'),
(48, 80, '2018-02-16', '5a870aa85cae2', 1000, '16:45:28'),
(50, 82, '2018-02-17', '5a87d5612f9c7', 2000, '07:10:25'),
(53, 74, '2018-02-17', '5a8852a6b83ec', 2700, '16:04:54'),
(55, 87, '2018-02-19', '5a8a77d8b77fa', 1500, '07:08:08'),
(56, 80, '2018-02-19', '5a8b02011e744', 1000, '16:57:37'),
(59, 79, '2018-02-20', '5a8c504df1754', 1000, '16:43:57'),
(60, 85, '2018-02-20', '5a8c5982be6f7', 3000, '17:23:14'),
(61, 97, '2018-02-21', '5a8d142cb7ddc', 4000, '06:39:40'),
(63, 100, '2018-02-21', '5a8d42214c776', 800, '09:55:45'),
(64, 102, '2018-02-21', '5a8d9db7adeb0', 700, '16:26:31'),
(66, 95, '2018-02-22', '5a8e656605ac1', 1200, '06:38:30'),
(67, 91, '2018-02-22', '5a8e65879300b', 4400, '06:39:03'),
(68, 103, '2018-02-22', '5a8e6e0b35f59', 10000, '07:15:23'),
(69, 104, '2018-02-22', '5a8eec5ba5d9c', 1800, '16:14:19'),
(70, 105, '2018-02-23', '5a8fba020607c', 1000, '06:51:46'),
(71, 82, '2018-02-23', '5a8fba22ec5f4', 200, '06:52:18'),
(72, 106, '2018-02-23', '5a8fbe6e0d2bd', 5000, '07:10:38'),
(74, 88, '2018-02-23', '5a9004106c316', 5000, '12:07:44'),
(75, 90, '2018-02-23', '5a90048b15e4a', 2500, '12:09:47'),
(76, 94, '2018-02-23', '5a902276bc8d0', 1200, '14:17:26'),
(77, 77, '2018-02-23', '5a902c9de3fdb', 2200, '15:00:45'),
(78, 109, '2018-02-24', '5a9104a629596', 9300, '06:22:30'),
(79, 114, '2018-02-24', '5a9118e56fc73', 1000, '07:48:53'),
(80, 113, '2018-02-24', '5a91191e20441', 500, '07:49:50'),
(81, 112, '2018-02-24', '5a911930bcef7', 8500, '07:50:08'),
(82, 83, '2018-02-24', '5a913364772cd', 1500, '09:41:56'),
(83, 88, '2018-02-24', '5a91604941423', 1500, '12:53:29'),
(84, 89, '2018-02-24', '5a918f997720d', 1000, '16:15:21'),
(85, 86, '2018-02-26', '5a9443ed1fc72', 4400, '17:29:17'),
(86, 81, '2018-02-26', '5a94442aabd6d', 1200, '17:30:18'),
(87, 133, '2018-02-27', '5a951c6c30ad2', 51200, '08:53:00'),
(88, 127, '2018-02-27', '5a958f852eb94', 800, '17:04:05'),
(89, 138, '2018-02-28', '5a966ec61f87e', 1000, '08:56:38'),
(90, 139, '2018-03-02', '5a9981109a993', 2000, '16:51:28'),
(91, 140, '2018-03-02', '5a998220dad48', 6000, '16:56:00'),
(92, 141, '2018-03-02', '5a99826926118', 2950, '16:57:13'),
(93, 142, '2018-03-03', '5a99eeafad5ba', 2000, '00:39:11');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achat`
--
ALTER TABLE `achat`
  ADD CONSTRAINT `FK_26A984568E54FB25` FOREIGN KEY (`livraison_id`) REFERENCES `livraison` (`id`),
  ADD CONSTRAINT `FK_26A98456F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `assurance`
--
ALTER TABLE `assurance`
  ADD CONSTRAINT `FK_386829AEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `FK_497DD634A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_497DD634C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_produit` (`id`);

--
-- Contraintes pour la table `cmdline`
--
ALTER TABLE `cmdline`
  ADD CONSTRAINT `FK_AF8880DB82EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `FK_AF8880DBF347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67D670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `FK_6EEAA67DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `depense`
--
ALTER TABLE `depense`
  ADD CONSTRAINT `FK_34059757670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `FK_34059757F2C56620` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`);

--
-- Contraintes pour la table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_group` (`id`);

--
-- Contraintes pour la table `lab_categorie`
--
ALTER TABLE `lab_categorie`
  ADD CONSTRAINT `FK_C71935E6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `lab_cmdline`
--
ALTER TABLE `lab_cmdline`
  ADD CONSTRAINT `FK_C31BCDB082EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `lab_commande` (`id`),
  ADD CONSTRAINT `FK_C31BCDB0F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `lab_produit` (`id`);

--
-- Contraintes pour la table `lab_commande`
--
ALTER TABLE `lab_commande`
  ADD CONSTRAINT `FK_B4E68DE0670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `FK_B4E68DE0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `lab_produit`
--
ALTER TABLE `lab_produit`
  ADD CONSTRAINT `FK_4536A14CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_4536A14CBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `lab_categorie` (`id`);

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `FK_A60C9F1F7F2DEE08` FOREIGN KEY (`facture_id`) REFERENCES `facture` (`id`),
  ADD CONSTRAINT `FK_A60C9F1F82EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `FK_A60C9F1FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `mouvement`
--
ALTER TABLE `mouvement`
  ADD CONSTRAINT `FK_5B51FC3E7F2DEE08` FOREIGN KEY (`facture_id`) REFERENCES `facture` (`id`),
  ADD CONSTRAINT `FK_5B51FC3EC54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_mouvement` (`id`);

--
-- Contraintes pour la table `presc`
--
ALTER TABLE `presc`
  ADD CONSTRAINT `FK_60736CD92195E0F0` FOREIGN KEY (`specialite_id`) REFERENCES `specialite` (`id`),
  ADD CONSTRAINT `FK_60736CD9DDA344B6` FOREIGN KEY (`traitement_id`) REFERENCES `traitement` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_29A5EC27A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_29A5EC27BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `rebut`
--
ALTER TABLE `rebut`
  ADD CONSTRAINT `FK_7BB645BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_7BB645BC54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_rebut` (`id`);

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FK_E19D9AD2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `sortie`
--
ALTER TABLE `sortie`
  ADD CONSTRAINT `FK_3C3FD3F25B8AC0C1` FOREIGN KEY (`rebut_id`) REFERENCES `rebut` (`id`),
  ADD CONSTRAINT `FK_3C3FD3F27DC7170A` FOREIGN KEY (`vente_id`) REFERENCES `vente` (`id`),
  ADD CONSTRAINT `FK_3C3FD3F27F2DEE08` FOREIGN KEY (`facture_id`) REFERENCES `facture` (`id`),
  ADD CONSTRAINT `FK_3C3FD3F2F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD CONSTRAINT `FK_E7D6FCC1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_E7D6FCC1ED5CA9E6` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`);

--
-- Contraintes pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD CONSTRAINT `FK_2A356D2719EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_2A356D277F2DEE08` FOREIGN KEY (`facture_id`) REFERENCES `facture` (`id`),
  ADD CONSTRAINT `FK_2A356D27A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `type_mouvement`
--
ALTER TABLE `type_mouvement`
  ADD CONSTRAINT `FK_EF97BD2EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `type_presc`
--
ALTER TABLE `type_presc`
  ADD CONSTRAINT `FK_6E7FEB2EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `type_produit`
--
ALTER TABLE `type_produit`
  ADD CONSTRAINT `FK_18483D2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `type_rebut`
--
ALTER TABLE `type_rebut`
  ADD CONSTRAINT `FK_9B7E3ACA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_2DE8C6A3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_2DE8C6A3D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `FK_888A2A4CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `versement`
--
ALTER TABLE `versement`
  ADD CONSTRAINT `FK_716E93677F2DEE08` FOREIGN KEY (`facture_id`) REFERENCES `facture` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
