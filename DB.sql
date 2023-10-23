-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 14 juin 2022 à 00:51
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfe_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `motDePasse` varchar(50) NOT NULL,
  `role` varchar(25) NOT NULL DEFAULT 'administrateur'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`id`, `nom`, `prenom`, `email`, `motDePasse`, `role`) VALUES
(1, 'admin1', 'admin1', 'admin1@gmail.com', 'admin1pass', 'administrateur'),
(2, 'az', 'az', 'az@gmail.com', 'az', 'administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `coordinateur`
--

CREATE TABLE `coordinateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `motDePasse` varchar(30) DEFAULT NULL,
  `role` varchar(25) NOT NULL DEFAULT 'coordinateur',
  `filliere_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `coordinateur`
--

INSERT INTO `coordinateur` (`id`, `nom`, `prenom`, `email`, `motDePasse`, `role`, `filliere_id`) VALUES
(10, 'coordinateur1', 'coordinateur1', 'coordinateur1@gmail.com', 'coordinateur1pass', 'coordinateur', NULL),
(11, 'coordinateur2', 'coordinateur2', 'coordinateur2@gmail.com', 'coordinateur2pass', 'coordinateur', NULL),
(12, 'coordinateur3', 'coordinateur3', 'coordinateur3@gmail.com', 'NULL', 'coordinateur', 3),
(4, 'ER', 'DF', 'DFGHJ', 'NULL', 'coordinateur', 1);

-- --------------------------------------------------------

--
-- Structure de la table `delai`
--

CREATE TABLE `delai` (
  `date_finale` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `delai`
--

INSERT INTO `delai` (`date_finale`) VALUES
('2022-06-01'),
('2022-05-01'),
('2022-05-07'),
('5677-12-14'),
('1999-09-19');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `nom` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `nom`) VALUES
(1, 'INFORMATIQUE'),
(2, 'MATHEMATIQUE'),
(3, 'PHYSIQUE'),
(4, 'AZERRTY'),
(7, 'GHJ');

-- --------------------------------------------------------

--
-- Structure de la table `encadrant`
--

CREATE TABLE `encadrant` (
  `ppr` int(11) NOT NULL,
  `skill` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `motDePasse` varchar(30) DEFAULT NULL,
  `role` varchar(25) NOT NULL DEFAULT 'etudiant',
  `skill` varchar(25) DEFAULT NULL,
  `groupe_id` int(11) DEFAULT NULL,
  `isresponsable` tinyint(1) NOT NULL DEFAULT 0,
  `fil_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `email`, `motDePasse`, `role`, `skill`, `groupe_id`, `isresponsable`, `fil_id`) VALUES
(1000, 'ayman', 'etudiant1', 'etudiant1@gmail.com', 'aa', 'administrateur', NULL, 1, 0, 0),
(1001, 'etudiant2', 'etudiant2', 'etudiant2@gmail.com', '123', 'coordinateur', NULL, 1, 0, 0),
(1002, 'etudiant3', 'etudiant3', 'etudiant3@gmail.com', 'etudiant3pass', 'etudiant', NULL, 2, 0, 0),
(1003, 'etudiant4', 'etudiant4', 'etudiant4@gmail.com', 'etudiant4pass', 'etudiant', NULL, 6, 0, 0),
(1004, 'etudiant5', 'etudiant5', 'etudiant5@gmail.com', 'etudiant5pass', 'etudiant', NULL, 6, 0, 0),
(1005, 'etudiant6', 'etudiant6', 'etudiant6@gmail.com', 'etudiant6pass', 'etudiant', NULL, 5, 0, 0),
(1006, 'etudiant7', 'etudiant7', 'etudiant7@gmail.com', 'etudiant7pass', 'etudiant', NULL, 5, 0, 0),
(1007, 'etudiant8', 'etudiant8', 'etudiant8@gmail.com', 'etudiant8pass', 'etudiant', NULL, 4, 0, 0),
(1008, 'etudiant9', 'etudiant9', 'etudiant9@gmail.com', 'etudiant9pass', 'etudiant', NULL, 4, 0, 0),
(1009, 'etudiant10', 'etudiant10', 'etudiant10@gmail.com', 'etudiant10pass', 'etudiant', NULL, 3, 0, 0),
(1010, 'etudiant11', 'etudiant11', 'etudiant11@gmail.com', 'NULL', 'etudiant', 'NULL', 3, 0, 3),
(1011, 'etudiant12', 'etudiant12', 'etudiant12@gmail.com', 'NULL', 'etudiant', 'NULL', 2, 0, 3),
(1012, 'etudiant13', 'etudiant13', 'etudiant13@gmail.com', 'NULL', 'etudiant', 'NULL', 2, 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `filliere`
--

CREATE TABLE `filliere` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `coordinateur_id` int(11) DEFAULT NULL,
  `departement_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `filliere`
--

INSERT INTO `filliere` (`id`, `nom`, `coordinateur_id`, `departement_id`) VALUES
(1, 'SMI', NULL, 1),
(2, 'SMA', NULL, 2),
(3, 'pc', NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id` int(11) NOT NULL,
  `nombreMembre` int(11) NOT NULL,
  `skill` varchar(25) NOT NULL,
  `encadrant_id` int(11) DEFAULT NULL,
  `jure_id` int(11) DEFAULT NULL,
  `etat` tinyint(1) NOT NULL,
  `responsable_id` int(11) DEFAULT NULL,
  `planTravail_id` int(11) DEFAULT NULL,
  `rapport_id` int(11) DEFAULT NULL,
  `sujet_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id`, `nombreMembre`, `skill`, `encadrant_id`, `jure_id`, `etat`, `responsable_id`, `planTravail_id`, `rapport_id`, `sujet_id`) VALUES
(1, 3, 'a', 1, 1, 0, NULL, NULL, NULL, NULL),
(5, 2, 'b', 1, NULL, 0, NULL, NULL, NULL, NULL),
(4, 2, 'c', 2, NULL, 0, NULL, NULL, NULL, NULL),
(3, 2, 'd', 2, NULL, 0, NULL, NULL, NULL, NULL),
(2, 2, 'a', 102, 1, 0, NULL, NULL, NULL, NULL),
(6, 2, 'e', 102, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `jure`
--

CREATE TABLE `jure` (
  `ppr` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `plantravail`
--

CREATE TABLE `plantravail` (
  `id` int(11) NOT NULL,
  `groupe_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `motDePasse` varchar(30) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `skill` varchar(30) DEFAULT NULL,
  `fill_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id`, `nom`, `prenom`, `email`, `motDePasse`, `role`, `grade`, `skill`, `fill_id`) VALUES
(1, 'ayman', 'professeur1', 'professeur1@gmail.com', 'professeur1pass', 'encadrant', NULL, '', 1),
(2, 'professeur2', 'professeur2', 'professeur2@gmail.com', 'professeur2pass', 'encadrant', NULL, '', 1),
(102, 'all', 'professeur3', 'professeur3@gmail.com', 'professeur3pass', 'encadrant', NULL, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `rapport`
--

CREATE TABLE `rapport` (
  `id` int(11) NOT NULL,
  `groupe_id` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `size` double DEFAULT NULL,
  `fichier` binary(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `id` int(11) NOT NULL,
  `Groupe_id` int(11) DEFAULT NULL,
  `professeur_id` int(11) NOT NULL,
  `titre` varchar(25) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `skill` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

CREATE TABLE `tache` (
  `id` int(11) NOT NULL,
  `titre` varchar(25) NOT NULL,
  `description` varchar(500) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFinProvisoire` date NOT NULL,
  `delegue_id` int(11) DEFAULT NULL,
  `dateFinOfficiel` date DEFAULT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  `plan_id` int(11) NOT NULL,
  `groupe_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `users`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `users` (
`id` int(11)
,`email` varchar(50)
,`motDePasse` varchar(30)
,`role` varchar(25)
);

-- --------------------------------------------------------

--
-- Structure de la vue `users`
--
DROP TABLE IF EXISTS `users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users`  AS SELECT `etudiant`.`id` AS `id`, `etudiant`.`email` AS `email`, `etudiant`.`motDePasse` AS `motDePasse`, `etudiant`.`role` AS `role` FROM `etudiant` ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `coordinateur`
--
ALTER TABLE `coordinateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `encadrant`
--
ALTER TABLE `encadrant`
  ADD PRIMARY KEY (`ppr`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `groupe_id` (`groupe_id`);

--
-- Index pour la table `filliere`
--
ALTER TABLE `filliere`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `coordinateur_id` (`coordinateur_id`,`departement_id`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `responsable_id` (`responsable_id`),
  ADD UNIQUE KEY `rapport_id` (`rapport_id`),
  ADD KEY `encadrant_id` (`encadrant_id`,`jure_id`,`responsable_id`);

--
-- Index pour la table `jure`
--
ALTER TABLE `jure`
  ADD PRIMARY KEY (`ppr`);

--
-- Index pour la table `plantravail`
--
ALTER TABLE `plantravail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `rapport`
--
ALTER TABLE `rapport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `groupe_id` (`groupe_id`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `Groupe_id` (`Groupe_id`,`professeur_id`);

--
-- Index pour la table `tache`
--
ALTER TABLE `tache`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `groupe_id` (`groupe_id`),
  ADD KEY `delegue_id` (`delegue_id`,`plan_id`,`groupe_id`),
  ADD KEY `groupe_id_2` (`groupe_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
