-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 09 fév. 2018 à 11:14
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(25, 'Goti', '90255874'),
(26, 'Alain', '230548024'),
(27, 'Jean-Claude', '90 22 89 63'),
(28, 'Jean-Claude', '90 22 89 63');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `name`, `numero`) VALUES
(1, 'EAU', 1123),
(2, 'LOYER', 1234),
(3, 'CEET', 1322);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `depense`
--

INSERT INTO `depense` (`id`, `compte_id`, `fournisseur_id`, `date`, `designation`, `numero`, `prix`, `quantite`, `tva`) VALUES
(1, 1, 1, '2018-01-08', 'Eau acheter par metre cube', '5a52c16c7c04c', 250, 3, 0);

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
  `total` double NOT NULL,
  `reste` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FE866410F55AE19E` (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `date`, `price`, `numero`, `etat`, `time`, `remise`, `total`, `reste`) VALUES
(1, '2018-01-06', 9400, '00001NB', 1, '08:09:28', 1000, 8400, 0),
(2, '2018-01-09', 21000, '00002NB', 1, '09:44:37', 4000, 17000, 0),
(3, '2018-01-07', 3500, '00003NB', 1, '10:01:04', 0, 3500, 0),
(4, '2018-01-08', 12000, '00004NB', 1, '10:04:18', 0, 12000, 0),
(6, '2018-01-12', 9000, '00005NB', 0, '09:42:28', 500, 8500, 400),
(7, '2018-01-15', 13200, '00006NB', 0, '09:22:49', 0, 13200, 0),
(8, '2018-01-19', 8700, '00007NB', 0, '13:36:38', 0, 8700, 0),
(15, '2018-01-20', 5600, '00008NB', 0, '18:54:59', 0, 5600, 0),
(16, '2018-01-20', 14900, '00009NB', 0, '19:01:54', 0, 14900, 0),
(17, '2018-01-20', 13100, '00010NB', 0, '19:31:04', 0, 13100, 0),
(18, '2018-01-22', 9500, '00011NB', 1, '18:26:37', 0, 9500, 0),
(19, '2018-01-23', 7600, '00012NB', 0, '09:00:52', 2000, 5600, 1600),
(20, '2018-01-29', 11700, '00013NB', 0, '09:13:50', 0, 11700, 0),
(21, '2018-01-30', 9900, '00021NB', 0, '10:43:43', 0, 9900, 0),
(22, '2018-01-30', 54000, '00022NB', 0, '10:45:03', 0, 54000, 0);

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
(1, 'Jean-Claude', 'jean-claude', 'claude0680@gmail.com.com', 'claude0680@gmail.com.com', 1, NULL, '$2y$13$FS12pMa7vdsYIuRy9MMAX.OvJ.sUZzSBXSrd0bWISuRyKmGMDuGQq', '2018-02-09 11:12:32', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}'),
(2, 'Claude', 'claude', 'claude@gmail.com', 'claude@gmail.com', 1, NULL, '$2y$13$24PI589RkeSckD67FJ5zku.AzaouB0W4imCDwD7ciFEA7gfrerBM.', '2018-02-09 11:09:45', NULL, NULL, 'a:1:{i:0;s:11:\"ROLE_GERANT\";}');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `name`, `contact`, `adress`, `numero`) VALUES
(1, 'TDE', '22235566', 'Avenue Pya Totsi', '5a52bef46f8af');

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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(28, 3, 17, '18:55:00', '2018-01-20', '5a63908403f6f', 1200, 3),
(29, 1, 17, '18:55:00', '2018-01-20', '5a63908405efc', 2000, 1),
(30, 7, 18, '19:01:54', '2018-01-20', '5a639222c28e3', 500, 1),
(31, 6, 18, '19:01:54', '2018-01-20', '5a639222c4637', 500, 1),
(32, 1, 18, '19:01:54', '2018-01-20', '5a639222c61e5', 2000, 1),
(33, 2, 18, '19:01:54', '2018-01-20', '5a639222c81c3', 3000, 2),
(34, 3, 18, '19:01:54', '2018-01-20', '5a639222c9e22', 1200, 2),
(35, 4, 18, '19:01:54', '2018-01-20', '5a639222cb8a8', 1500, 1),
(36, 5, 18, '19:01:54', '2018-01-20', '5a639222cd18d', 1000, 2),
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
(51, 12, 21, '09:00:52', '2018-01-23', '5a66f9c4c48cf', 600, 2),
(52, 5, 21, '09:00:52', '2018-01-23', '5a66f9c4c8920', 1000, 1),
(53, 4, 21, '09:00:52', '2018-01-23', '5a66f9c4ca19c', 1500, 2),
(54, 3, 21, '09:00:52', '2018-01-23', '5a66f9c4cbbe4', 1200, 2),
(55, 13, 22, '09:13:51', '2018-01-29', '5a6ee5cf7cc0e', 300, 1),
(56, 5, 22, '09:13:51', '2018-01-29', '5a6ee5cf7ef59', 1000, 3),
(57, 3, 22, '09:13:51', '2018-01-29', '5a6ee5cf80ff6', 1200, 2),
(58, 4, 22, '09:13:51', '2018-01-29', '5a6ee5cf8301b', 1500, 4),
(59, 12, 23, '10:43:43', '2018-01-30', '5a704c5ff2922', 600, 4),
(60, 2, 23, '10:43:44', '2018-01-30', '5a704c60008e2', 3000, 2),
(61, 7, 23, '10:43:44', '2018-01-30', '5a704c60028f6', 500, 3),
(62, 2, 24, '10:45:03', '2018-01-30', '5a704caf7ecb2', 3000, 4),
(63, 6, 24, '10:45:03', '2018-01-30', '5a704caf80d53', 500, 5),
(64, 7, 24, '10:45:03', '2018-01-30', '5a704caf829ef', 500, 4),
(65, 11, 24, '10:45:03', '2018-01-30', '5a704caf848b6', 500, 3),
(66, 5, 24, '10:45:03', '2018-01-30', '5a704caf865b3', 1000, 5),
(67, 4, 24, '10:45:03', '2018-01-30', '5a704caf881b9', 1500, 6),
(68, 8, 24, '10:45:03', '2018-01-30', '5a704caf89e66', 2000, 8),
(69, 3, 24, '10:45:03', '2018-01-30', '5a704caf8bc3f', 1200, 5);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`id`, `service_id`, `user_id`, `name`, `prix`, `numero`) VALUES
(1, 1, 1, 'Veste en cuire', 2000, '5a43661369dbb'),
(2, 1, 1, 'Veste complet', 3000, '5a4366431c387'),
(3, 1, 1, 'Boubou 2 pièces', 1200, '5a51ee496babf'),
(4, 1, 1, 'Boubou 3 pièces', 1500, '5a51ee65c46bc'),
(5, 1, 1, 'Boubou trahi 1 pièce (lg)', 1000, '5a51ee9964ba7'),
(6, 1, 1, 'Chmise manche longue', 500, '5a51eeb760d88'),
(7, 1, 1, 'Chmise manche Courte', 500, '5a51eed31c862'),
(8, 1, 1, 'boubou', 2000, '5a63972bef368'),
(11, 2, 1, 'boubou2', 500, '5a63977fd467d'),
(12, 2, 1, 'boubou4', 600, '5a63987c4eab8'),
(13, 2, 1, 'chemise5', 300, '5a6398a1348ce'),
(14, 2, 1, 'Veste complet', 1500, '5a66265b1871f');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(17, 1, 21, '2018-01-20', '5a6390839fdba', 15, '18:54:59', '2018-01-23'),
(18, 1, 22, '2018-01-20', '5a63922260305', 16, '19:01:54', '2018-01-23'),
(19, 1, 23, '2018-01-20', '5a6398f8b9a07', 17, '19:31:04', '2018-01-22'),
(20, 1, 24, '2018-01-22', '5a662cdd4bf37', 18, '18:26:37', '2018-01-24'),
(21, 1, 25, '2018-01-23', '5a66f9c4680b1', 19, '09:00:52', '2018-01-25'),
(22, 1, 26, '2018-01-29', '5a6ee5cea43e5', 20, '09:13:50', '2018-01-31'),
(23, 1, 27, '2018-01-30', '5a704c5f83c9f', 21, '10:43:43', '2018-02-10'),
(24, 1, 28, '2018-01-30', '5a704caf147aa', 22, '10:45:03', '2018-02-10');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(24, 19, '2018-01-23', '5a66f9e5ca0c0', 4000, '09:01:25');

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
