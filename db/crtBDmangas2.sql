SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mangas`
--
CREATE DATABASE IF NOT EXISTS `mangas2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `mangas2`;
grant all privileges on `mangas2`.* to 'epul'@'localhost' identified by 'secret';


-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `lib_genre` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `genre`:
--

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `lib_genre`) VALUES
(1, 'Aventure'),
(2, 'Tanche-de-vie'),
(3, 'Action'),
(4, 'Science-fiction'),
(5, 'Suspense'),
(6, 'Policier'),
(7, 'Sport');

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `id_manga` int(11) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `titre` varchar(250) COLLATE utf8_bin NOT NULL,
  `couverture` varchar(50) COLLATE utf8_bin NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `manga`:
--   `id_genre`
--       `genre` -> `id_genre`
--

--
-- Contenu de la table `manga`
--

INSERT INTO `manga` (`id_manga`,`prix`, `titre`, `couverture`, `id_genre`) VALUES
(1,'12.50', 'Akatsuki Vol.2', 'akatsuki-02.jpg', 1),
(2,'10.90', 'Collège Fou Fou Fou (le)', 'college-fou-fou-fou.jpg', 2),
(3,'8.75', 'Yu-Gi-Oh ! 5D''s Vol.9', 'yu-gi-oh-5d-jp-9_m.jpg', 1),
(4,'9.90', 'Hack - Le bracelet du crépuscule', 'hack_01_m.jpg', 1),
(5,'12.25', '7 Yakuzas', '7yakuzas_m.jpg', 3),
(6,'11.78', '7 milliards d''aiguilles', '7-milliards-aiguilles.jpg', 6);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id_manga`),
  ADD KEY `fk_manga_genre` (`id_genre`)
;

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `manga`
--
ALTER TABLE `manga`
  MODIFY `id_manga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `manga`
--
ALTER TABLE `manga`
  ADD CONSTRAINT `fk_manga_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
