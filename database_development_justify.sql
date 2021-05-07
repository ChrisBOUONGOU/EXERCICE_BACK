-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 07 Mai 2021 à 14:15
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `database_development_justify`
--

-- --------------------------------------------------------

--
-- Structure de la table `sequelizemeta`
--

CREATE TABLE IF NOT EXISTS `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `SequelizeMeta_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210503070518-create-utilisateur.js'),
('20210503071153-create-texte.js');

-- --------------------------------------------------------

--
-- Structure de la table `textes`
--

CREATE TABLE IF NOT EXISTS `textes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUtilisateurs` int(11) NOT NULL,
  `valeur_texte` int(11) NOT NULL,
  `texte` text NOT NULL,
  `date` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `textes`
--

INSERT INTO `textes` (`id`, `idUtilisateurs`, `valeur_texte`, `texte`, `date`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1877, '', '2021-05-03 12:54:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1874, '', '2021-05-03 13:00:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 1878, '', '2021-05-03 13:01:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 1867, '', '2021-05-03 13:01:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 1867, '', '2021-05-04 10:51:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 1867, '', '2021-05-04 10:51:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 1867, '', '2021-05-04 10:51:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 1867, '', '2021-05-04 10:51:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 1867, '', '2021-05-04 10:52:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 1867, '', '2021-05-04 10:52:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 1867, '', '2021-05-04 10:52:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 1867, '', '2021-05-04 10:52:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 1867, '', '2021-05-04 10:53:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 1867, '', '2021-05-05 12:49:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 1868, '', '2021-05-05 12:56:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 1868, '', '2021-05-05 12:56:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 1868, '', '2021-05-05 13:05:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 1, 1877, '', '2021-05-07 13:59:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 1877, '', '2021-05-07 13:59:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 1877, '', '2021-05-07 13:59:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `date_creation` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `email`, `date_creation`, `createdAt`, `updatedAt`) VALUES
(1, 'cgris@yahoo.fr', '2021-05-02 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'chrisn@outl.fr', '2021-05-02 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'chrisboukongou@outlook.fr', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'bu@ol.fr', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'bubhjhhjghjg@ol.fr', '0000-00-00 00:00:00', '2021-05-06 09:24:45', '2021-05-06 09:24:45'),
(6, 'bubhjhhjgSDFSDFDSDSFhjg@ol.fr', '0000-00-00 00:00:00', '2021-05-06 09:49:36', '2021-05-06 09:49:36'),
(7, 'chb@olm.fr', '0000-00-00 00:00:00', '2021-05-06 09:50:22', '2021-05-06 09:50:22'),
(8, 'chsdfsdb@olm.', '0000-00-00 00:00:00', '2021-05-06 09:51:21', '2021-05-06 09:51:21'),
(9, 'chsdfsqsdqsddb@olm.fr', '0000-00-00 00:00:00', '2021-05-06 09:53:55', '2021-05-06 09:53:55'),
(10, 'chsdfssdfsdfsdfsdqsdqsddb@olm.fr', '0000-00-00 00:00:00', '2021-05-06 09:54:00', '2021-05-06 09:54:00'),
(11, 'chsdfssdfsdfssdfsdfdsfdfsdqsdqsddb@olm.fr', '0000-00-00 00:00:00', '2021-05-06 09:55:13', '2021-05-06 09:55:13'),
(12, 'polaire@icecream.fr', '0000-00-00 00:00:00', '2021-05-06 09:55:34', '2021-05-06 09:55:34'),
(13, 'polairfe@icecream.fr', '0000-00-00 00:00:00', '2021-05-06 09:56:27', '2021-05-06 09:56:27'),
(14, 'polairfhhe@icecream.fr', '0000-00-00 00:00:00', '2021-05-06 09:56:39', '2021-05-06 09:56:39'),
(15, 'ptrolairfhhe@icecream.fr', '0000-00-00 00:00:00', '2021-05-06 09:56:49', '2021-05-06 09:56:49'),
(16, 'ptrolairfhhedu95@icecream.fr', '0000-00-00 00:00:00', '2021-05-06 10:22:11', '2021-05-06 10:22:11'),
(17, 'boris@yahoo.fr', '0000-00-00 00:00:00', '2021-05-07 12:00:13', '2021-05-07 12:00:13'),
(18, 'borisdfsdfs@yahoo.fr', '0000-00-00 00:00:00', '2021-05-07 12:00:32', '2021-05-07 12:00:32'),
(19, 'borisdfsdfs@yahoo.frd', '0000-00-00 00:00:00', '2021-05-07 12:01:36', '2021-05-07 12:01:36'),
(20, 'mpk@outlook.fr', '0000-00-00 00:00:00', '2021-05-07 12:01:51', '2021-05-07 12:01:51'),
(21, 'mpdfgdfgk@outlook.fr', '0000-00-00 00:00:00', '2021-05-07 12:03:18', '2021-05-07 12:03:18'),
(22, 'mpdfgdfgk@outlook.frsdfsdf', '0000-00-00 00:00:00', '2021-05-07 12:03:28', '2021-05-07 12:03:28'),
(23, 'qsdqsdqsd@yahoo.fr', '0000-00-00 00:00:00', '2021-05-07 12:04:21', '2021-05-07 12:04:21'),
(24, 'qsdqsdqsd@yahoo.frsdfsdf', '0000-00-00 00:00:00', '2021-05-07 12:04:59', '2021-05-07 12:04:59'),
(25, 'qssdfsdfdqsdqsd@yahoo.frsdfsdf', '0000-00-00 00:00:00', '2021-05-07 12:05:04', '2021-05-07 12:05:04');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
