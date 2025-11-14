-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 14 nov. 2025 à 13:31
-- Version du serveur : 8.0.39
-- Version de PHP : 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agence_location_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `catégorie1`
--

CREATE TABLE `catégorie1` (
  `id_categorie` int NOT NULL,
  `nom_catégorie` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int NOT NULL,
  `nom` text COLLATE utf8mb4_general_ci NOT NULL,
  `prénom` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `téléphone` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id_employé` int NOT NULL,
  `nom` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `prénom` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `poste` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `salaire` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id_location` int NOT NULL,
  `id_client` int NOT NULL,
  `id_voiture` int NOT NULL,
  `id_employe` int NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `montant` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE `voitures` (
  `id_voiture` int NOT NULL,
  `immatriculation` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `marque` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `modèle` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `année` int NOT NULL,
  `prix_jour` float NOT NULL,
  `id_categorie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `catégorie1`
--
ALTER TABLE `catégorie1`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id_employé`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id_location`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_voiture` (`id_voiture`),
  ADD KEY `id_employe` (`id_employe`);

--
-- Index pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD PRIMARY KEY (`id_voiture`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `location` (`id_client`);

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`id_voiture`) REFERENCES `voitures` (`id_voiture`),
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`id_employe`) REFERENCES `employes` (`id_employé`);

--
-- Contraintes pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD CONSTRAINT `voitures_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `catégorie1` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
