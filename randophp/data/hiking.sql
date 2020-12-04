-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mysqldb
-- Généré le :  jeu. 03 déc. 2020 à 11:19
-- Version du serveur :  5.7.32
-- Version de PHP :  7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hiking`
--

-- --------------------------------------------------------

--
-- Structure de la table `hiking`
--

CREATE TABLE `hiking` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL,
  `difficulty` char(30) NOT NULL,
  `distance` int(11) NOT NULL,
  `duration` time NOT NULL,
  `height_difference` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hiking`
--

INSERT INTO `hiking` (`id`, `name`, `difficulty`, `distance`, `duration`, `height_difference`) VALUES
(1, 'Le sentier Sainte-Marguerite au Chemin de Ceinture', 'facile', 6, '02:15:00', 270),
(2, 'Le tour et la montée au Piton Darid à Bourg Murat', 'trés facile', 1, '05:30:00', 50),
(3, 'Le Piton d\'Anchain par l\'Îlet à Vidot depuis Hell Bourg', 'Difficile', 14, '05:30:00', 1000),
(4, 'Le tour de Maison Rouge et Macabit à Bellemène depuis le Tour des Roches', 'moyen', 11, '02:45:00', 420),
(5, 'Le tour des trois pitons au cœur du Cirque de Salazie', 'Difficile', 17, '07:00:00', 1420);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `hiking`
--
ALTER TABLE `hiking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `hiking`
--
ALTER TABLE `hiking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
