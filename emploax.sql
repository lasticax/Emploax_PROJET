-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 05 jan. 2021 à 16:18
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `emploax`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descritpion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `descritpion`) VALUES
(1, 'CDI', 'blablabla blablalblalblalblalblalbzdefqfeze dFEvlv vefwsv vez'),
(2, 'CDD', 'blablabla blablalblalblalblalblalbzdefqfeze dFEvlv vefwsv vez'),
(3, 'Contrat d\'apprentissage', 'blablabla blablalblalblalblalblalbzdefqfeze dFEvlv vefwsv vez'),
(4, 'Contrat de professionnalisation', 'blablabla blablalblalblalblalblalbzdefqfeze dFEvlv vefwsv vez'),
(5, 'Stage', 'blablabla blablalblalblalblalblalbzdefqfeze dFEvlv vefwsv vez');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offre_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C4CC8505A` (`offre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `offre_id`, `author`, `content`, `created_at`) VALUES
(2, 11, 'Lex luthor', 'trdytfghjhjhfioesjcn g ze buq hbk blkjb hefbl ???', '2020-10-22 11:13:18'),
(3, 11, 'JBZ', 'alros neoncpoznq tr hjhjg ze buq hbk blkjb hefbl !', '2020-10-22 11:13:18'),
(4, 11, 'Lior', 'très intéréssant', '2020-10-23 12:36:41'),
(5, 11, 'zer', 'fswdhfjgk', '2020-10-28 09:25:23'),
(6, 11, 'aa', 'jeteste', '2020-10-30 14:57:31'),
(7, 11, 'Lior', 'azert', '2020-11-04 08:04:37'),
(8, 11, 'Lior', 'jtb', '2020-11-04 08:08:31'),
(9, 11, 'Lior', 'fg', '2020-11-04 08:11:06'),
(11, 11, 'Lior', 'azertyuio qzertyh azertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyhazertyuio qzertyh', '2020-11-04 09:56:37');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20201020151239', '2020-10-20 15:13:39', 214),
('DoctrineMigrations\\Version20201022084415', '2020-10-22 08:46:07', 979),
('DoctrineMigrations\\Version20201022085430', '2020-10-22 08:54:50', 233),
('DoctrineMigrations\\Version20201022090113', '2020-10-22 09:01:22', 274),
('DoctrineMigrations\\Version20201022151136', '2020-10-22 15:12:05', 191),
('DoctrineMigrations\\Version20201205102146', '2020-12-22 17:44:10', 770),
('DoctrineMigrations\\Version20201222175113', '2020-12-22 17:51:27', 315);

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

DROP TABLE IF EXISTS `offre`;
CREATE TABLE IF NOT EXISTS `offre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `duree` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AF86866F12469DE2` (`category_id`),
  KEY `IDX_AF86866F98260155` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `title`, `content`, `image`, `created_at`, `start_date`, `category_id`, `duree`, `region_id`) VALUES
(11, 'Stage developpeur PHP', 'sdfghzbeqkbelv eflzqbfezi  ofzebO e EBFIbefpiejfbdk', 'http://placehold.it/350x150', '2020-10-22 11:10:21', '2020-10-22 11:10:21', 5, 3, 1),
(12, 'Alternance devollopeur web', 'sdfghdfghjkcbdjhvkdszbeqkbelv eflzqbfezi dsfdgfofzebO e EBFIbefpiejfbdk', 'http://placehold.it/350x150', '2020-10-22 11:10:21', '2020-10-22 11:10:21', 3, NULL, 6),
(13, 'Alternance developpeur Python', 'ssdfgfedsfzfghazertbelv eflzqbfezi azergBFIbefpiejfbdk', 'http://placehold.it/350x150', '2020-10-22 11:10:22', '2020-10-22 11:10:22', 3, NULL, 10),
(14, 'Manager réseau', 'sEBFIb dfg fghj cugjkgfckh iuftidhe jf vjbjkvufkv fiuyfd yrsyrdiefpiejfbdk', 'http://placehold.it/350x150', '2020-10-22 11:10:22', '2020-10-22 11:10:22', 1, NULL, 8),
(15, 'Offre de test', 'azertyuiop qertyuio', 'http://placehold.it/350x150', '2020-10-22 10:02:35', NULL, 5, 3, 8);

-- --------------------------------------------------------

--
-- Structure de la table `property_search`
--

DROP TABLE IF EXISTS `property_search`;
CREATE TABLE IF NOT EXISTS `property_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(1, 'Auvergne-Rhône-Alpes'),
(2, 'Bourgogne-Franche-Comté'),
(3, 'Bretagne'),
(4, 'Centre-Val de Loire'),
(5, 'Corse'),
(6, 'Grand-Est'),
(7, 'Hauts-de-France'),
(8, 'Ile-de-France'),
(9, 'Normandie'),
(10, 'Nouvelle-Aquitaine'),
(11, 'Occitanie'),
(12, 'Pays de la Loire'),
(13, 'Provence-Alpes-Côte d\'Azure');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`) VALUES
(3, 'lior@symfony.com', 'Lior', '$2y$13$EJc2d0LdAyypdaIl5tN7ouctAgfcfZXOEC1Yvx3BmPRcpY1XUj4uG'),
(4, 'lioar@symfony.com', 'Lior2', '$2y$13$kQ.4vi0TiUpCLKhbeYVH4.F1wxrqvYX8wAvcwncyvbr10zu2qH4pi');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4CC8505A` FOREIGN KEY (`offre_id`) REFERENCES `offre` (`id`);

--
-- Contraintes pour la table `offre`
--
ALTER TABLE `offre`
  ADD CONSTRAINT `FK_AF86866F12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_AF86866F98260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
