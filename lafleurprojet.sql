-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 03 avr. 2026 à 11:37
-- Version du serveur : 9.1.0
-- Version de PHP : 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lafleurprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nomcat_produit` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nom_produit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prix_produit` decimal(10,2) NOT NULL,
  `stock_produit` int NOT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nomcat_produit`, `nom_produit`, `prix_produit`, `stock_produit`) VALUES
('b01', 'Bulbes', '3 bulbes de bégonias', 5.00, 125),
('b02', 'Bulbes', '10 bulbes de dahlias', 12.00, 100),
('b03', 'Bulbes', '50 glaÏeuls', 9.00, 98),
('m01', 'Plantes à massif', 'Lot de 3 marguerites', 5.00, 52),
('m02', 'Plantes à massif', 'Pour un bouquet de 6 pensées', 6.00, 45),
('m03', 'Plantes à massif', 'Mélange varié de 10 plantes à massif', 15.00, 21),
('r01', 'Rosiers', '1 pied spécial grandes fleurs', 20.00, 35),
('r02', 'Rosiers', 'Une variété sélectionnée pour son parfum', 9.00, 78),
('r03', 'Rosiers', 'Rosier arbuste', 8.00, 29);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int NOT NULL AUTO_INCREMENT,
  `nom_utilisateur` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom_utilisateur` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mail_utilisateur` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
