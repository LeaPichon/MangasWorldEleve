SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mangas`
--
CREATE DATABASE IF NOT EXISTS `mangas` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `mangas`;
grant all privileges on `mangas`.* to 'epul'@'localhost' identified by 'secret';

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `id_manga` int(11) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `titre` varchar(250) COLLATE utf8_bin NOT NULL,
  `couverture` varchar(50) COLLATE utf8_bin NOT NULL,
  `genre` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--


--
-- Contenu de la table `manga`
--

INSERT INTO `manga` (`id_manga`, `prix`, `titre`, `couverture`, `genre`) VALUES
(1, '12.50', 'Akatsuki Vol.2', 'akatsuki-02.jpg', 'Aventure'),
(2, '10.90', 'Collège Fou Fou Fou (le)', 'college-fou-fou-fou.jpg', 'Tranche-de-vie'),
(3, '8.75', 'Yu-Gi-Oh ! 5D''s Vol.9', 'yu-gi-oh-5d-jp-9_m.jpg', 'Aventure'),
(4, '9.90', 'Hack - Le bracelet du crépuscule', 'hack_01_m.jpg', 'Aventure'),
(5, '12.25', '7 Yakuzas', '7yakuzas_m.jpg', 'Action'),
(6, '11.78', '7 milliards d''aiguilles', '7-milliards-aiguilles.jpg', 'Policier');




--
-- Index pour les tables exportées
--

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id_manga`);



