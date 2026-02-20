-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 20 fév. 2026 à 08:53
-- Version du serveur : 8.0.45
-- Version de PHP : 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Animaux`
--

-- --------------------------------------------------------

--
-- Structure de la table `ANIMAUX`
--

CREATE TABLE `ANIMAUX` (
  `code_animal` int NOT NULL,
  `date_naissance` date NOT NULL,
  `date_achat` date NOT NULL,
  `code_espece` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `BASSINS`
--

CREATE TABLE `BASSINS` (
  `code_bassin` int NOT NULL,
  `numero_bassin` int NOT NULL,
  `code_piece` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ESPECE`
--

CREATE TABLE `ESPECE` (
  `code_espece` int NOT NULL,
  `nom_espece` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `code_genre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `FAMILLES`
--

CREATE TABLE `FAMILLES` (
  `code_famille` int NOT NULL,
  `nom_famille` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `code_ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `GENRES`
--

CREATE TABLE `GENRES` (
  `code_genre` int NOT NULL,
  `nom_genre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `code_famille` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ORDRES`
--

CREATE TABLE `ORDRES` (
  `code_ordre` int NOT NULL,
  `nom_ordre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `PIECES`
--

CREATE TABLE `PIECES` (
  `code_piece` int NOT NULL,
  `numero_piece` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `SOINS`
--

CREATE TABLE `SOINS` (
  `code_soin` int NOT NULL,
  `type_soin` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ANIMAUX`
--
ALTER TABLE `ANIMAUX`
  ADD PRIMARY KEY (`code_animal`),
  ADD KEY `ANIMAUX_code_espece_FK` (`code_espece`);

--
-- Index pour la table `BASSINS`
--
ALTER TABLE `BASSINS`
  ADD PRIMARY KEY (`code_bassin`),
  ADD KEY `BASSINS_code_piece_FK` (`code_piece`);

--
-- Index pour la table `ESPECE`
--
ALTER TABLE `ESPECE`
  ADD PRIMARY KEY (`code_espece`),
  ADD KEY `ESPECE_code_genre_FK` (`code_genre`);

--
-- Index pour la table `FAMILLES`
--
ALTER TABLE `FAMILLES`
  ADD PRIMARY KEY (`code_famille`),
  ADD KEY `FAMILLES_code_ordre_FK` (`code_ordre`);

--
-- Index pour la table `GENRES`
--
ALTER TABLE `GENRES`
  ADD PRIMARY KEY (`code_genre`),
  ADD KEY `GENRES_code_famille_FK` (`code_famille`);

--
-- Index pour la table `ORDRES`
--
ALTER TABLE `ORDRES`
  ADD PRIMARY KEY (`code_ordre`);

--
-- Index pour la table `PIECES`
--
ALTER TABLE `PIECES`
  ADD PRIMARY KEY (`code_piece`);

--
-- Index pour la table `SOINS`
--
ALTER TABLE `SOINS`
  ADD PRIMARY KEY (`code_soin`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ANIMAUX`
--
ALTER TABLE `ANIMAUX`
  ADD CONSTRAINT `ANIMAUX_code_espece_FK` FOREIGN KEY (`code_espece`) REFERENCES `ESPECE` (`code_espece`);

--
-- Contraintes pour la table `BASSINS`
--
ALTER TABLE `BASSINS`
  ADD CONSTRAINT `BASSINS_code_piece_FK` FOREIGN KEY (`code_piece`) REFERENCES `PIECES` (`code_piece`);

--
-- Contraintes pour la table `ESPECE`
--
ALTER TABLE `ESPECE`
  ADD CONSTRAINT `ESPECE_code_genre_FK` FOREIGN KEY (`code_genre`) REFERENCES `GENRES` (`code_genre`);

--
-- Contraintes pour la table `FAMILLES`
--
ALTER TABLE `FAMILLES`
  ADD CONSTRAINT `FAMILLES_code_ordre_FK` FOREIGN KEY (`code_ordre`) REFERENCES `ORDRES` (`code_ordre`);

--
-- Contraintes pour la table `GENRES`
--
ALTER TABLE `GENRES`
  ADD CONSTRAINT `GENRES_code_famille_FK` FOREIGN KEY (`code_famille`) REFERENCES `FAMILLES` (`code_famille`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
