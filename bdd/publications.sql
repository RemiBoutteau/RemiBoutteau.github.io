-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 sep. 2025 à 07:22
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `publications`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles_conferences_internationales`
--

CREATE TABLE `articles_conferences_internationales` (
  `id_publication` int(11) NOT NULL,
  `id_conference_int` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles_conferences_internationales`
--

INSERT INTO `articles_conferences_internationales` (`id_publication`, `id_conference_int`) VALUES
(30, 'ACPR'),
(51, 'CASE'),
(50, 'CSTI'),
(5, 'EST'),
(41, 'EUSIPCO'),
(57, 'ICIEA'),
(39, 'ICPR'),
(47, 'ICRA'),
(55, 'ICRA'),
(59, 'ICRA'),
(52, 'ICSCC'),
(44, 'IPIN'),
(37, 'IPTA'),
(33, 'IROS'),
(34, 'IROS'),
(46, 'IROS'),
(58, 'IROS'),
(79, 'IROS'),
(29, 'ISDG'),
(36, 'ISDG'),
(31, 'ITSC'),
(45, 'ITSC'),
(48, 'ITSC'),
(54, 'ITSC'),
(56, 'ITSC'),
(32, 'IV'),
(35, 'IV'),
(4, 'ROSE'),
(53, 'SSD'),
(40, 'VISAPP'),
(43, 'VISAPP'),
(49, 'VISAPP'),
(42, 'WSCG');

-- --------------------------------------------------------

--
-- Structure de la table `articles_conferences_nationales`
--

CREATE TABLE `articles_conferences_nationales` (
  `id_publication` int(11) NOT NULL,
  `id_conference_nat` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles_conferences_nationales`
--

INSERT INTO `articles_conferences_nationales` (`id_publication`, `id_conference_nat`) VALUES
(64, 'GRETSI'),
(69, 'GRETSI'),
(74, 'GRETSI'),
(65, 'ORASIS'),
(66, 'ORASIS'),
(71, 'ORASIS'),
(72, 'ORASIS'),
(73, 'ORASIS'),
(62, 'RFIA'),
(63, 'RFIA'),
(67, 'RFIA'),
(68, 'RFIA'),
(70, 'URSI');

-- --------------------------------------------------------

--
-- Structure de la table `articles_journaux_internationaux`
--

CREATE TABLE `articles_journaux_internationaux` (
  `id_publication` int(11) NOT NULL,
  `id_journal_int` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles_journaux_internationaux`
--

INSERT INTO `articles_journaux_internationaux` (`id_publication`, `id_journal_int`) VALUES
(28, 'APIN'),
(7, 'CVIU'),
(24, 'IEEE Access'),
(15, 'IEEE-RAM'),
(8, 'IVC'),
(11, 'JFR'),
(14, 'JINT'),
(16, 'JINT'),
(20, 'JINT'),
(27, 'JINT'),
(10, 'JMIV'),
(19, 'JournalOfImaging'),
(21, 'JRTIP'),
(6, 'PAMI'),
(13, 'RA-L'),
(12, 'Sci'),
(2, 'Sensors'),
(3, 'Sensors'),
(9, 'Sensors'),
(17, 'Sensors'),
(18, 'Sensors'),
(23, 'Sensors'),
(25, 'Sensors'),
(26, 'Sensors'),
(1, 'SensorsTra'),
(22, 'T-ITS');

-- --------------------------------------------------------

--
-- Structure de la table `conferences_internationales`
--

CREATE TABLE `conferences_internationales` (
  `id_conference_int` char(20) NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `conferences_internationales`
--

INSERT INTO `conferences_internationales` (`id_conference_int`, `nom`) VALUES
('ACPR', 'IAPR Asian Conference on Pattern Recognition (ACPR)'),
('CASE', 'IEEE International Conference on Automation Science and Engineering (CASE)'),
('CSTI', 'Colloque Francophone des Systèmes de Transports Intelligents (CSTI)'),
('EST', 'IEEE International Conference on Emerging Security Technologies'),
('EUSIPCO', 'European Signal Processing Conference (EUSIPCO)'),
('ICIEA', 'International Conference on Industrial Engineering and Applications (ICIEA)'),
('ICIP', 'IEEE International Conference on Image Processing (ICIP)'),
('ICPR', 'International Conference on Pattern Recognition (ICPR)'),
('ICRA', 'IEEE International Conference on Robotics and Automation (ICRA)'),
('ICSCC', 'International Conference on Smart Computing and Communications (ICSCC)'),
('IPIN', 'International Conference on Indoor Positioning and Indoor Navigation (IPIN)'),
('IPTA', 'International Conference on Image Processing Theory, Tools and Applications (IPTA)'),
('IROS', 'IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)'),
('ISDG', 'International Symposium on Dynamic Games and Applications (ISDG)'),
('ITSC', 'IEEE International Conference on Intelligent Transportation Systems (ITSC)'),
('IV', 'IEEE Intelligent Vehicles Symposium (IV)'),
('ROSE', 'IEEE International Workshop on RObotic and Sensors Environments (ROSE)'),
('SSD', 'IEEE International Multi-Conference on Systems, Signals & Devices (SSD)'),
('VISAPP', 'International Conference on Computer Vision Theory and Applications (VISAPP)'),
('WSCG', 'International Conference on Computer Graphics, Visualization and Computer Vision (WSCG)');

-- --------------------------------------------------------

--
-- Structure de la table `conferences_nationales`
--

CREATE TABLE `conferences_nationales` (
  `id_conference_nat` char(20) NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `conferences_nationales`
--

INSERT INTO `conferences_nationales` (`id_conference_nat`, `nom`) VALUES
('GRETSI', 'Colloque GRETSI (GRETSI)'),
('ORASIS', 'ORASIS, journées francophones des jeunes chercheurs en vision par ordinateur (ORASIS)'),
('RFIA', 'Reconnaissance de Formes et Intelligence Artificielle (RFIA)'),
('URSI', 'Journées scientifiques d\'URSI-France (URSI)');

-- --------------------------------------------------------

--
-- Structure de la table `journaux_internationaux`
--

CREATE TABLE `journaux_internationaux` (
  `id_journal_int` char(20) NOT NULL,
  `nom` text NOT NULL,
  `ImpactFactor` float DEFAULT NULL,
  `Quartile` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `journaux_internationaux`
--

INSERT INTO `journaux_internationaux` (`id_journal_int`, `nom`, `ImpactFactor`, `Quartile`) VALUES
('APIN', 'Applied Intelligence', 3.5, 'Q2'),
('CVIU', 'Computer Vision and Image Understanding (CVIU)', 3.6, 'Q1'),
('IEEE Access', 'IEEE Access', 3.6, 'Q1'),
('IEEE-RAM', 'IEEE Robotics & Automation Magazine (IEEE-RAM)', 7.1, 'Q1'),
('IVC', 'Image and Vision Computing (IVC)', 4.2, 'Q1'),
('JFR', 'Journal of Field Robotics (JFR)', 5.2, 'Q1'),
('JINT', 'Journal of Intelligent & Robotic Systems (JINT)', 2.8, 'Q1'),
('JMIV', 'Journal of Mathematical Imaging and Vision (JMIV)', 1.5, 'Q2'),
('JournalOfImaging', 'Journal of Imaging', 3.3, 'Q1'),
('JRTIP', 'Journal of Real-Time Image Processing (JRTIP)', 3, 'Q2'),
('PAMI', 'IEEE Transactions on Pattern Analysis and Machine Intelligence (PAMI)', 18.6, 'Q1'),
('RA-L', 'IEEE Robotics and Automation Letters (RA-L)', 5.3, 'Q1'),
('Sci', 'Sci', 0, ''),
('Sensors', 'Sensors', 3.5, 'Q1'),
('SensorsTra', 'Sensors & Transducers Journal', 0, ''),
('T-ITS', 'IEEE Transactions on Intelligent Transportation Systems (T-ITS)', 8.4, 'Q1');

-- --------------------------------------------------------

--
-- Structure de la table `publications`
--

CREATE TABLE `publications` (
  `id_publication` int(11) NOT NULL,
  `titre` text NOT NULL,
  `auteurs` text NOT NULL,
  `annee` year(4) NOT NULL,
  `type_publi` enum('JOURINT','JOURNAT','CONFINT','CONFNAT','CHAPT','BOOK','THESIS') NOT NULL,
  `details` text NOT NULL,
  `pdf` text NOT NULL,
  `hal` text NOT NULL,
  `lien` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `publications`
--

INSERT INTO `publications` (`id_publication`, `titre`, `auteurs`, `annee`, `type_publi`, `details`, `pdf`, `hal`, `lien`) VALUES
(1, 'An Omnidirectional Stereoscopic System for Mobile Robot Navigation', 'Boutteau, R., Savatier, X., Ertaud, J.-Y., Mazari, B.', '2009', 'JOURINT', 'Special Issue on Robotic and Sensors Environments, vol. 5, pp 3-17', 'https://www.sensorsportal.com/HTML/DIGEST/march_09/P_SI_61.pdf', 'https://hal.archives-ouvertes.fr/hal-01710395', 'https://www.sensorsportal.com/HTML/DIGEST/P_SI_61.htm'),
(2, 'A Study of Vicon System Positioning Performance', 'Merriaux, P., Dupuis, Y., Boutteau, R., Vasseur, P., Savatier, X.', '2017', 'JOURINT', '17, 1591', 'https://www.mdpi.com/1424-8220/17/7/1591/pdf', 'https://hal.archives-ouvertes.fr/hal-01710399', 'https://www.mdpi.com/1424-8220/17/7/1591'),
(3, 'PHROG: A multimodal Feature for Place Recognition', 'Bonardi, F. , Ainouz, S., Boutteau, R., Dupuis, Y., Savatier, X., Vasseur, P.', '2017', 'JOURINT', '17, 1167', 'https://www.mdpi.com/1424-8220/17/5/1167/pdf', 'https://hal.archives-ouvertes.fr/hal-01535910', 'https://www.mdpi.com/1424-8220/17/5/1167'),
(4, 'An omnidirectional stereoscopic system for mobile robot navigation', 'Boutteau, R., Savatier, X., Ertaud, J.-Y., Mazari, B.', '2008', 'CONFINT', 'Ottawa, Canada', 'https://hal.archives-ouvertes.fr/hal-01710400/document', 'https://hal.archives-ouvertes.fr/hal-01710400', 'https://ieeexplore.ieee.org/document/4669195'),
(5, 'Fusion of Omnidirectional and PTZ cameras for face detection & tracking', 'Iraqui, A., Dupuis, Y., Boutteau, R., Ertaud, J. Y., Savatier, X.', '2010', 'CONFINT', 'Canterbury, United Kingdom', 'https://hal.archives-ouvertes.fr/hal-01710402/document', 'https://hal.archives-ouvertes.fr/hal-01710402', 'https://ieeexplore.ieee.org/document/5600047'),
(6, 'Homography Based Egomotion Estimation with a Common Direction', 'Saurer, O., Vasseur, P., Boutteau, R., Demonceaux, C., Pollefeys, M., Fraundorfer, F.', '2017', 'JOURINT', 'February 2017, vol. 39, Issue 2, pp 327-341', 'https://hal.archives-ouvertes.fr/hal-01466853/document', 'https://hal.archives-ouvertes.fr/hal-01466853', 'https://ieeexplore.ieee.org/document/7439820'),
(7, 'An extension of kernel learning methods using a modified Log-Euclidean distance for fast and accurate skeleton-based Human Action Recognition', 'Ghorbel, E., Boonaert, J., Boutteau, R., Lecoeuche, S., Savatier, X.', '2018', 'JOURINT', 'vol. 175, October 2018, pp 32-43', 'https://hal.archives-ouvertes.fr/hal-01957644/file/Ghorbel2018.pdf', 'https://hal.archives-ouvertes.fr/hal-01957644', 'https://www.sciencedirect.com/science/article/abs/pii/S1077314218302649'),
(8, 'Kinematic Spline Curves: A temporal invariant descriptor for fast action recognition', 'Ghorbel, E., Boutteau, R., Boonaert, J., Savatier, X., Lecoeuche, S.', '2018', 'JOURINT', 'vol. 77, September 2018', 'https://hal.archives-ouvertes.fr/hal-01860250/document', 'https://hal.archives-ouvertes.fr/hal-01860250', 'https://www.sciencedirect.com/science/article/abs/pii/S0262885618301008'),
(9, 'Visual Odometry and Place Recognition Fusion for Vehicle Position Tracking in Urban Environments', 'Ouerghi, S., Boutteau, R., Tlili, F., Savatier, X.', '2018', 'JOURINT', 'vol. 18, Issue 4, 939', 'https://www.mdpi.com/1424-8220/18/4/939/pdf', 'https://hal.archives-ouvertes.fr/hal-01741007', 'https://www.mdpi.com/1424-8220/18/4/939'),
(10, 'Circular Laser/Camera-based attitude and altitude estimation: minimal and robust solutions', 'Boutteau, R., Sturm, P., Vasseur, P., Demonceaux, C.', '2018', 'JOURINT', 'vol. 60, Issue 3, pp 382-400', 'https://hal.inria.fr/hal-01684031/document', 'https://hal.archives-ouvertes.fr/hal-01684031', 'https://link.springer.com/article/10.1007/s10851-017-0764-y'),
(11, 'Robust Robot Localization in a Complex Oil and Gas Industrial Environment', 'Merriaux, P., Dupuis, Y., Boutteau, R., Vasseur, P., Savatier, X.', '2018', 'JOURINT', 'vol. 35, Issue 2, March 2018, pp 213-230', 'https://hal.archives-ouvertes.fr/hal-01535781/document', 'https://hal.archives-ouvertes.fr/hal-01535781', 'https://onlinelibrary.wiley.com/doi/abs/10.1002/rob.21735'),
(12, 'Static and dynamic evaluation of an UWB localization system for industrial applications', 'Delamare, M., Boutteau, R., Savatier, X., Iriart, N.', '2019', 'JOURINT', '1(3), 62', 'https://www.mdpi.com/2413-4155/2/2/23/pdf', 'https://hal.archives-ouvertes.fr/hal-02351169', 'https://www.mdpi.com/2413-4155/2/2/23'),
(13, 'Camera pose estimation based on PnL with a known vertical direction', 'Lecrosnier, L., Boutteau, R., Vasseur, P., Fraundorfer, F., Savatier, X', '2019', 'JOURINT', 'vol. 4, Issue 4, October 2019, pp 3852-3859', 'https://hal.archives-ouvertes.fr/hal-02286139/document', 'https://hal.archives-ouvertes.fr/hal-02286139', 'https://ieeexplore.ieee.org/document/8768032'),
(14, 'Asynchronous Structure from Motion at Scale', 'Mhiri, R., Ouerghi, S., Boutteau, R., Vasseur, P., Mousset, S., Bensrhair, A', '2019', 'JOURINT', 'vol. 96, Issue 2, November 2019, pp 159-177', 'https://hal.archives-ouvertes.fr/hal-01986330/document', 'vol. 96, Issue 2, November 2019, pp 159-177', 'https://link.springer.com/article/10.1007/s10846-018-0974-6'),
(15, 'The VIKINGS Autonomous Inspection Robot: Competing in the ARGOS Challenge', 'Merriaux, P., Rossi, R., Boutteau, R., Vauchey, V., Qin, L., Chanuc, P., Rigaud, F., Roger, F., Decoux, B., Savatier', '2019', 'JOURINT', 'vol. 26, Issue 1, March 2019, pp 21-34', 'https://hal.archives-ouvertes.fr/hal-01985234/document', 'https://hal.archives-ouvertes.fr/hal-01985234', 'https://ieeexplore.ieee.org/document/8577020'),
(16, 'A vision-based system for robot localization in large industrial environments', 'Boutteau, R., Rossi, R., Qin, L., Merriaux, P. , Savatier, X.', '2020', 'JOURINT', 'vol. 99, Issue 2, pp 359-370', 'https://hal.archives-ouvertes.fr/hal-02388672/document', 'https://hal.archives-ouvertes.fr/hal-02388672', 'https://link.springer.com/article/10.1007/s10846-019-01114-x'),
(17, 'Deep Learning for Real Time 3D Multi-Object Detection', 'Mauri, A., Khemmar, R., Decoux, B., Ragot, N., Rossi, R., Trabelsi, R., Boutteau, R., Ertaud, J.Y., Savatier, X.', '2020', 'JOURINT', '20(2)', 'https://www.mdpi.com/1424-8220/20/2/532/pdf', 'https://hal.archives-ouvertes.fr/hal-02446258', 'https://www.mdpi.com/1424-8220/20/2/532'),
(18, 'A New Dataset of People Flow in an Industrial Site with UWB and Motion Capture Systems', 'Delamare, M., Duval, F., Boutteau, R.', '2020', 'JOURINT', '20(16), 4511', 'https://www.mdpi.com/1424-8220/20/16/4511/pdf', 'https://hal.archives-ouvertes.fr/hal-02937349', 'https://www.mdpi.com/1424-8220/20/16/4511'),
(19, 'Real-Time 3D Multi-Object Detection and Localization Based on Deep Learning for Road and Railway Smart Mobility', 'Mauri, A., Khemmar, R., Decoux, B., Haddad, M., Boutteau, R.', '2021', 'JOURINT', '7(8), 145, Special Issue on Visual Localization', 'https://www.mdpi.com/2313-433X/7/8/145/pdf', 'https://hal.archives-ouvertes.fr/hal-03324039', 'https://www.mdpi.com/2313-433X/7/8/145'),
(20, 'LiDAR-based Structure Tracking for Agricultural Robots: Application to Autonomous Navigation in Vineyards', 'Nehme, H., Aubry, C, Solatges, T., Savatier, X., Rossi, R., Boutteau, R.', '2021', 'JOURINT', '103, 61', 'https://hal.archives-ouvertes.fr/hal-03424546/document', 'https://hal.archives-ouvertes.fr/hal-03424546/', 'https://link.springer.com/article/10.1007/s10846-021-01519-7'),
(21, 'Lightweight Convolutional Neural Network for Real-Time 3D Object Detection in Road and Railway Environments', 'Mauri, A., Khemmar, R., Decoux, B., Haddad, M., Boutteau, R.', '2022', 'JOURINT', '19, 499–516', 'https://link.springer.com/content/pdf/10.1007/s11554-022-01202-6.pdf', 'https://hal.archives-ouvertes.fr/hal-03592337/', 'https://link.springer.com/article/10.1007/s11554-022-01202-6'),
(22, 'Survey on Cooperative Perception in an Automotive Context', 'Caillot, A., Ouerghi, S., Vasseur, P., Boutteau, R., Dupuis, Y.', '2022', 'JOURINT', 'vol. 23, Issue 9', 'https://hal.archives-ouvertes.fr/hal-03608119/document', 'https://hal.archives-ouvertes.fr/hal-03608119v1', 'https://ieeexplore.ieee.org/document/9732063'),
(23, 'Recent Advances in Vision-Based On-Road Behaviors Understanding: A Critical Survey', 'Trabelsi, R., Khemmar, R., Decoux, B., Ertaud, J.Y., Boutteau, R.', '2022', 'JOURINT', 'Special Issue Perception Sensors for Road Applications', 'https://www.mdpi.com/1424-8220/22/7/2654/pdf', 'https://hal.archives-ouvertes.fr/hal-03630603', 'https://www.mdpi.com/1424-8220/22/7/2654'),
(24, 'STAF: Spatio-Temporal Attention Framework for Understanding Road Agents Behaviors', 'Trabelsi, R., Khemmar, R., Decoux, B., Ertaud, J.Y., Boutteau, R.', '2022', 'JOURINT', 'vol. 10, pp. 55794-55804', 'https://ieeexplore.ieee.org/ielx7/6287639/6514899/09779713.pdf', 'https://hal.archives-ouvertes.fr/hal-03685947', 'https://ieeexplore.ieee.org/document/9779713'),
(25, 'Road and Railway Smart Mobility: A High-definition Ground Truth Hybrid Dataset', 'Khemmar, R., Mauri, A., Dulompont, C., Gajula, j., Vauchey, V., Haddad, M., Boutteau, R.', '2022', 'JOURINT', '22(10), 3922', 'https://www.mdpi.com/1424-8220/22/10/3922/pdf?version=1653210266', 'https://hal.archives-ouvertes.fr/hal-03685898', 'https://www.mdpi.com/1424-8220/22/10/3922'),
(26, 'Improving the Efficiency of 3D Monocular Object Detection and Tracking for Road and Railway Smart Mobility', 'Evain, A., Mauri, A., Garnier, F., Kounouho, M., Khemmar, R., Haddad, M., Boutteau, R., Breteche, S., Ahmedali, S.', '2023', 'JOURINT', '23(6), 3197', 'https://www.mdpi.com/1424-8220/23/6/3197/pdf?version=1679017440', 'https://hal.science/hal-04097585', 'https://www.mdpi.com/1424-8220/23/6/3197'),
(27, 'Multi-Agent Cooperative Camera-Based Semantic Grid Generation', 'Caillot, A., Ouerghi, S., Dupuis, Y., Vasseur, P., Boutteau, R.', '2024', 'JOURINT', '110, 64', 'https://link.springer.com/content/pdf/10.1007/s10846-024-02093-4.pdf', 'https://hal.science/hal-04554636', 'https://link.springer.com/article/10.1007/s10846-024-02093-4?utm_source=rct_congratemailt&utm_medium=email&utm_campaign=oa_20240422&utm_content=10.1007/s10846-024-02093-4'),
(28, 'Overview on evidential fusion approaches in the context of collaborative perception for occupancy modeling', 'Ben Ayed, S., Dachraoui, J., Laghmara, H., Boutteau, R.', '2025', 'JOURINT', '55, 822', '', 'https://hal.science/hal-05133177v1', 'https://link.springer.com/article/10.1007/s10489-025-06670-4'),
(29, 'Demonstration of the Salvo Enhanced No Escape Zone Concept using ground mobile robots', 'Savatier, X., Boutteau, R., Merriaux, P., Le Ménec, S.', '2012', 'CONFINT', 'Byšice, Czech Republic', '', '', 'https://hal.archives-ouvertes.fr/hal-01713897'),
(30, 'A dynamic programming algorithm applied to omnidirectional vision for dense 3D reconstruction', 'Boutteau, R., Savatier, X., Ertaud, J.Y.', '2013', 'CONFINT', 'Naha, Okinawa, Japan', 'https://hal.archives-ouvertes.fr/hal-01710409/document', 'https://hal.archives-ouvertes.fr/hal-01710409', 'https://ieeexplore.ieee.org/document/6778466'),
(31, 'Road-line detection and 3D reconstruction using fisheye cameras', 'Boutteau, R., Savatier, X., Bonardi, F., Ertaud, J.Y.', '2013', 'CONFINT', 'The Hague, The Netherlands', 'https://hal.archives-ouvertes.fr/hal-01710406/document', 'https://hal.archives-ouvertes.fr/hal-01710406', 'https://ieeexplore.ieee.org/document/6728376'),
(32, 'From Autonomous Robotics Toward Autonomous Cars', 'Belbachir, A., Boutteau, R., Merriaux, P., Blosseville, J.M., Savatier, X.', '2013', 'CONFINT', 'Gold Coast, Australia', 'https://hal.archives-ouvertes.fr/hal-01710403/document', 'https://hal.archives-ouvertes.fr/hal-01710403', 'https://ieeexplore.ieee.org/document/6629656'),
(33, 'IMU/LIDAR based positioning of a gangway for maintenance operations on wind farms', 'Merriaux, P., Boutteau, R., Vasseur, P., Savatier, X.', '2014', 'CONFINT', 'Chicago, Illinois, USA', 'https://hal.archives-ouvertes.fr/hal-01710416/document', 'https://hal.archives-ouvertes.fr/hal-01710416', 'https://ieeexplore.ieee.org/document/6943156'),
(34, 'GPS-based Preliminary Map Estimation for Autonomous Vehicle Mission Preparation', 'Dupuis, Y., Merriaux, P., Subirats, P., Boutteau, R., Savatier, X., Vasseur, P.', '2014', 'CONFINT', 'Chicago, Illinois, USA', 'https://hal.archives-ouvertes.fr/hal-01710415/document', 'https://hal.archives-ouvertes.fr/hal-01710415', 'https://ieeexplore.ieee.org/abstract/document/6943160'),
(35, 'Visual odometry with unsynchronized multi-cameras setup for intelligent vehicle application', 'Mhiri, R., Vasseur, P., Mousset, S., Boutteau, R., Bensrhair, A.', '2014', 'CONFINT', 'Dearborn, Michigan, USA', 'https://hal.archives-ouvertes.fr/hal-01710411/document', 'https://hal.archives-ouvertes.fr/hal-01710411', 'https://ieeexplore.ieee.org/document/6856533'),
(36, 'Robotic Demonstration of Collision Avoidance Based on Differential Games', 'Le Ménec, S., Lecointre, V., Boutteau, R., Savatier, X., Jaulin, L.', '2014', 'CONFINT', 'Amsterdam, The Netherlands', '', 'https://hal.archives-ouvertes.fr/hal-01713912', ''),
(37, '3D real-time human action recognition using a spline interpolation approach', 'Ghorbel, E., Boutteau, R., Boonaert, J., Savatier, X., Lecoeuche, S.', '2015', 'CONFINT', 'Orléans, France', 'https://hal.archives-ouvertes.fr/hal-01710419/document', 'https://hal.archives-ouvertes.fr/hal-01710419', 'https://ieeexplore.ieee.org/document/7367097'),
(38, 'Accurate Scale estimation based on unsynchronized camera network', 'Mhiri, R., Vasseur, P., Mousset, S., Boutteau, R., Bensrhair, A.', '2015', 'CONFINT', 'Québec City, Canada', 'https://hal.archives-ouvertes.fr/hal-01710819/document', 'https://hal.archives-ouvertes.fr/hal-01710819', 'https://ieeexplore.ieee.org/document/7351593'),
(39, 'A Fast and Accurate Motion Descriptor for Human Action Recognition Applications', 'Ghorbel, E., Boutteau, R., Boonaert, J., Savatier, X., Lecoeuche, S.', '2016', 'CONFINT', 'Cancun, Mexico', 'https://hal.archives-ouvertes.fr/hal-01712327/document', 'https://hal.archives-ouvertes.fr/hal-01712327', 'https://ieeexplore.ieee.org/document/7899753'),
(40, 'Absolute Localization Using Visual Data for Autonomous Vehicles', 'Ouerghi, S., Boutteau, R., Merriaux, P., Ragot, N., Savatier, X., Vasseur, P.', '2016', 'CONFINT', 'Rome, Italy', 'https://www.scitepress.org/Papers/2016/56821/56821.pdf', 'https://hal.archives-ouvertes.fr/hal-01710421', 'https://www.scitepress.org/Papers/2016/56821/'),
(41, 'A novel Global Image Description approach for Long Term Vehicle Localization', 'Bonardi, F. , Ainouz, S., Boutteau, R., Dupuis, Y., Savatier, X., Vasseur, P.', '2017', 'CONFINT', 'Kos Island, Greece', 'https://www.eurasip.org/Proceedings/Eusipco/Eusipco2017/papers/1570342020.pdf', 'https://hal.archives-ouvertes.fr/hal-01592116', 'https://www.eurasip.org/Proceedings/Eusipco/Eusipco2017/'),
(42, 'CUDA-based SeqSLAM for Real-Time Place Recognition', 'Ouerghi, S., Boutteau, R., Tlili, F., Savatier, X.', '2017', 'CONFINT', 'Plzen, Czech Republic', 'https://hal.archives-ouvertes.fr/hal-01712346/document', 'https://hal.archives-ouvertes.fr/hal-01712346', 'http://www.wscg.eu/'),
(43, 'CUDA Accelerated Visual Egomotion Estimation for Robotic Navigation', 'Ouerghi, S., Boutteau, R., Savatier, X., Tlili, F.', '2017', 'CONFINT', 'Porto, Portugal', 'https://hal.archives-ouvertes.fr/hal-01712334/document', 'https://hal.archives-ouvertes.fr/hal-01712334', 'https://www.scitepress.org/Link.aspx?doi=10.5220/0006171501070114'),
(44, 'Evaluation of an UWB localization system in Static/Dynamic', 'Delamare, M., Boutteau, R., Savatier, X., Iriart, N.', '2019', 'CONFINT', 'Pisa, Italy', 'https://hal.archives-ouvertes.fr/hal-02351568/document', 'https://hal.archives-ouvertes.fr/hal-02351568', 'http://ceur-ws.org/Vol-2498/'),
(45, 'Vision based vehicle relocalization in 3D line-feature map using Perspective-n-Line with a known vertical direction', 'Lecrosnier, L., Boutteau, R., Vasseur, P., Savatier, X., Fraundorfer, F.', '2019', 'CONFINT', 'Auckland, New Zealand', 'https://hal.archives-ouvertes.fr/hal-02388633/document', 'https://hal.archives-ouvertes.fr/hal-02388633', 'https://ieeexplore.ieee.org/document/8916886'),
(46, 'Camera pose estimation based on PnL with a known vertical direction', 'Lecrosnier, L., Boutteau, R., Vasseur, P., Fraundorfer, F., Savatier, X.', '2019', 'CONFINT', 'Macau, China', 'https://hal.archives-ouvertes.fr/hal-02401918/document', 'https://hal.archives-ouvertes.fr/hal-02401918', 'https://ieeexplore.ieee.org/document/8768032'),
(47, 'VIKINGS: An Autonomous Inspection Robot for the ARGOS Challenge', 'Merriaux, P., Rossi, R., Boutteau, R., Vauchey, V., Qin, L., Chanuc, P., Rigaud, F., Roger, F., Decoux, B., Savatier, X.', '2019', 'CONFINT', 'Montreal, Canada', 'https://hal.archives-ouvertes.fr/hal-02143413/document', 'https://hal.archives-ouvertes.fr/hal-02143413', 'https://ieeexplore.ieee.org/document/8577020'),
(48, 'A new Evaluation Approach for Deep Learning-based Monocular Depth Estimation Methods', 'Mauri, A., Khemmar, R., Boutteau, R., Decoux, B., Ertaud, J.Y., Haddad, M.', '2020', 'CONFINT', 'Rhodes, Greece', 'https://hal.archives-ouvertes.fr/hal-02978149/document', 'https://hal.archives-ouvertes.fr/hal-02978149v1', 'https://ieeexplore.ieee.org/abstract/document/9294620'),
(49, 'Comparative Study of a commercial tracking camera and ORB-SLAM2 for person localization', 'Ouerghi, S., Ragot, N., Boutteau, R., Savatier, X.', '2020', 'CONFINT', 'Valletta, Malta', 'https://hal.archives-ouvertes.fr/hal-02567816/document', 'https://hal.archives-ouvertes.fr/hal-02567816', 'https://www.scitepress.org/ProceedingsDetails.aspx?ID=14n+aNKQFO0=&t=1'),
(50, 'Toward Comprehensive Road Agents Behavior Understanding', 'Trabelsi, R., Khemmar, R., Boutteau, R., Decoux, B., Ertaud, J.Y.', '2020', 'CONFINT', 'Tunis, Tunisie', '', 'https://hal.archives-ouvertes.fr/hal-03016779', ''),
(51, 'An anomaly detection approach to monitor the structure-based navigation in agricultural robotics', 'Nehme, H., Aubry, C, Rossi, R., Boutteau, R.', '2021', 'CONFINT', 'Lyon, France', 'https://hal.archives-ouvertes.fr/hal-03255483/document', 'https://hal.archives-ouvertes.fr/hal-03255483', 'https://ieeexplore.ieee.org/document/9551568'),
(52, 'A Comparative Study of Deep Learning-based Depth Estimation Approaches: Application to Smart Mobility', 'Mauri, A., Khemmar, R., Decoux, B., Ben Moumen, T., Haddad, M., Boutteau, R.', '2021', 'CONFINT', 'Kochi, India, Best paper Award', 'https://hal.archives-ouvertes.fr/hal-03277346/document', 'https://hal.archives-ouvertes.fr/hal-03277346', 'https://ieeexplore.ieee.org/document/9528220'),
(53, 'Deep Multi-modal object detection for Autonomous Driving', 'Ennajar, A., Khouja, N., Boutteau, R., Tlili, F.', '2021', 'CONFINT', 'Monastir, Tunisia', 'https://hal.archives-ouvertes.fr/hal-03255470/document', 'https://hal.archives-ouvertes.fr/hal-03255470', 'https://ieeexplore.ieee.org/document/9429355'),
(54, 'Multi-Agent Cooperative Camera-Based Evidential Occupancy Grid Generation', 'Caillot, A., Ouerghi, S., Vasseur, P., Dupuis, Y., Boutteau, R.', '2022', 'CONFINT', 'Macau, China', 'https://hal.science/hal-03870700v1/document', 'https://hal.science/hal-03870700v1', 'https://ieeexplore.ieee.org/document/9921855'),
(55, 'RGB-Event Fusion for Moving Object Detection in Autonomous Driving', 'Zhou, Z., Wu, Z., Boutteau, R., Yang, F., Demonceaux, C., Ginhac, D.', '2023', 'CONFINT', 'London, United Kingdom', 'https://arxiv.org/pdf/2209.08323', 'https://ieeexplore.ieee.org/document/10161563', 'https://hal-insep.archives-ouvertes.fr/VIBOT/hal-04048853v1'),
(56, 'An Event-based Stereo 3D Mapping and Tracking Pipeline for Autonomous Vehicles', 'El Moudni, A., Morbidi, F., Kramm, S., Boutteau, R.', '2023', 'CONFINT', 'Bilbao, Spain', 'https://hal.science/hal-04211637v1/file/ITSC2023.pdf', 'https://hal.science/hal-04211637', 'https://ieeexplore.ieee.org/document/10422404'),
(57, 'Industrial Object Detection: Leveraging Synthetic Data for Training Deep Learning Models', 'Ouarab, S., Boutteau, R., Roméo, K., Lecomte, C., Laignel, A., Ragot, N., Duval, F.', '2024', 'CONFINT', 'Nice, France', '', 'https://hal.science/hal-04389189/', 'https://link.springer.com/chapter/10.1007/978-3-031-58113-7_17'),
(58, 'Event-Free Moving Object Segmentation from Moving Ego Vehicle', 'Zhou, Z., Wu, Z., Danda, D.P., Boutteau, R., Yang, F., Van Gool, L., Timofte, R., Ginhac, D.', '2024', 'CONFINT', 'Abu Dhabi, United Arab Emirates', 'https://arxiv.org/pdf/2305.00126', 'https://hal.science/hal-04763949', 'https://ieeexplore.ieee.org/document/10801383'),
(59, 'Steering Prediction via a Multi-Sensor System for Autonomous Racing', 'Zhou, Z., Wu, Z., Bolli, F., Boutteau, R., Yang, F., Timofte, R., Ginhac, D., Delbruck, T.', '2025', 'CONFINT', 'Atlanta, USA', 'https://hal.science/hal-04915921/document', 'https://hal.science/hal-04915921', ''),
(60, 'CUDA-accelerated Feature-based Egomotion Estimation', 'Ouerghi, S., Boutteau, R., Savatier, X., Tlili, F.', '2019', 'CHAPT', 'Computer Vision, Imaging and Computer Graphics – Theory and Applications, 12th International Joint Conference, VISIGRAPP 2017, Porto, Portugal, February 27 – March 1, 2017, Revised Selected Papers, Communications in Computer and Information Science, Springer', 'https://hal.archives-ouvertes.fr/hal-02001134/document', 'https://hal.archives-ouvertes.fr/hal-02001134', 'https://www.springer.com/fr/book/9783030122089?utm_campaign=bookpage_about_buyonpublisherssite&utm_medium=referral&utm_source=springerlink'),
(61, 'Chapter 1 : A 3D Omnidirectional Sensor For Mobile Robot Applications', 'Boutteau, R., Savatier, X., Ertaud, J. Y., Mazari, B.', '2010', 'CHAPT', 'In-Tech Book. ISBN : 978-953-307-076-6', 'https://hal.archives-ouvertes.fr/hal-01713170/document', 'https://hal.archives-ouvertes.fr/hal-01713170', 'https://www.intechopen.com/books/mobile-robots-navigation/a-3d-omnidirectional-sensor-for-mobile-robot-applications'),
(62, 'Estimation à l\'échelle du mouvement d\'un réseau multi-caméras non synchronisées', 'Mhiri, R., Vasseur, P., Mousset, S., Boutteau, R., Bensrhair, A.', '2014', 'CONFNAT', 'Rouen, France', 'https://hal.archives-ouvertes.fr/hal-00989061/document', 'https://hal.archives-ouvertes.fr/hal-00989061', ''),
(63, 'Algorithme de positionnement d\'une passerelle à mouvements compensés à partir de mesures inertielles et lidar pour les opérations de maintenance des parcs éoliens offshore', 'Merriaux, P., Boutteau, R., Vasseur, P., Savatier, X.', '2014', 'CONFNAT', 'Rouen, France', 'https://hal.archives-ouvertes.fr/hal-00989108/document', 'https://hal.archives-ouvertes.fr/hal-00989108', ''),
(64, 'Localisation robuste en milieu industriel complexe', 'Merriaux, P., Dupuis, Y., Boutteau, R., Vasseur, P., Savatier, X.', '2015', 'CONFNAT', 'Lyon, France', 'https://hal.archives-ouvertes.fr/hal-01875375/document', 'https://hal.archives-ouvertes.fr/hal-01875375', ''),
(65, 'Estimation du mouvement et de la structure à l\'échelle absolue à partir d\'un réseau multi-caméras non synchronisées', 'Mhiri, R., Vasseur, P., Mousset, S., Boutteau, R., Bensrhair, A.', '2015', 'CONFNAT', 'Amiens, France', 'https://hal.archives-ouvertes.fr/hal-01161830/document', 'https://hal.archives-ouvertes.fr/hal-01161830', ''),
(66, 'Odométrie visuelle par vision omnidirectionnelle pour la navigation autonome d\'une chaise roulante motorisée', 'Datondji, R., Ragot, N., Nasri, Y., Khemmar, R., Boutteau, R.', '2015', 'CONFNAT', 'Amiens, France', 'https://hal.archives-ouvertes.fr/hal-01161916/document', 'https://hal.archives-ouvertes.fr/hal-01161916', ''),
(67, 'Correction de nuages de points lidar embarqué sur véhicule pour la reconstruction d\'environnement 3D vaste', 'Merriaux, P., Dupuis, Y., Boutteau, R., Vasseur, P., Savatier, X.', '2016', 'CONFNAT', 'Clermont Ferrand, France', 'https://hal.archives-ouvertes.fr/hal-01906323/document', 'https://hal.archives-ouvertes.fr/hal-01906323', ''),
(68, 'Vers une reconnaissance en ligne d\'actions à partir de caméras RGB-D', 'Ghorbel, E., Boutteau, R., Boonaert J., Savatier, X., Lecoeuche, S.', '2016', 'CONFNAT', 'Clermont Ferrand, France', 'https://hal.archives-ouvertes.fr/hal-01713922/document', 'https://hal.archives-ouvertes.fr/hal-01713922', ''),
(69, 'Localisation visuelle multimodale à long terme', 'Bonardi, F. , Ainouz, S., Boutteau, R., Dupuis, Y., Savatier, X., Vasseur, P.', '2017', 'CONFNAT', 'Juan-Les-Pins, France', 'https://hal.archives-ouvertes.fr/hal-01592113/document', 'https://hal.archives-ouvertes.fr/hal-01592113', ''),
(70, 'Synchronisation et calibrage entre un Lidar 3D et une centrale inertielle pour la localisation précise d\'un véhicule autonome', 'Merriaux, P., Boutteau, R., Rossi, R., Coru, G., Vauchey, V., Savatier, X.', '2018', 'CONFNAT', 'Meudon, France', 'https://hal.archives-ouvertes.fr/hal-01757933/document', 'https://hal.archives-ouvertes.fr/hal-01757933', 'https://ursi-france.sciencesconf.org/193645/'),
(71, 'Une nouvelle approche pour l\'évaluation des méthodes monoculaires d\'estimation de la profondeur basées sur l\'apprentissage profond', 'Mauri, A., Khemmar, R., Decoux, B., Ertaud, J.Y., Haddad, M., Boutteau, R.', '2021', 'CONFNAT', 'Lac de Saint-Ferréol, France', 'https://hal.archives-ouvertes.fr/hal-03339671/document', 'https://hal.archives-ouvertes.fr/hal-03274474', 'https://orasis2021.sciencesconf.org/resource/page/id/16'),
(72, 'Suivi et estimation de profondeur avec un banc stéréo événementiel embarqué sur un véhicule autonome', 'El Moudni, A., Kramm, S., Morbidi, F., Boutteau, R.', '2023', 'CONFNAT', 'Carqueiranne, France', 'https://hal.science/hal-04123389v1/file/ORASIS_15_02_23_v0-8.pdf', 'https://hal.science/hal-04123389', 'https://hal.science/hal-04123389'),
(73, 'Détection et suivi temps-réel d’objets 3D pour la smart mobilité routière et ferroviaire', 'Evain, A., Mauri, A., Garnier, F., Kounouho, M., Khemmar, R., Haddad, M., Boutteau, R., Breteche, S., Ahmedali, S.', '2023', 'CONFNAT', 'Carqueiranne, France', 'https://hal.science/hal-04112499v1/file/Orasis_2023_KHEMMAR.pdf', 'https://hal.science/hal-04112499v1', ''),
(74, 'Détection d\'objets en mouvement dans un milieu urbain par fusion de données RVB et événementielles', 'Zhou, Z., Wu, Z., Boutteau, R., Yang, F., Demonceaux, C., Ginhac, D.', '2023', 'CONFNAT', 'Grenoble, France', 'https://gretsi.fr/data/colloque/pdf/2023_yang1239.pdf', 'https://ephe.hal.science/CORES/hal-04320908v1', 'https://gretsi.fr/data/colloque/pdf/2023_yang1239.pdf'),
(75, 'Étude des méthodes d\'estimation du mouvement dans des séquences d\'images prises par une caméra embarquée sur un véhicule', 'Boutteau, R.', '2006', 'THESIS', 'Rapport de stage Master 2 (Master Thesis), Université des Sciences et Technologies de Lille (USTL)', '', '', ''),
(76, 'Étude des méthodes d\'estimation du mouvement dans des séquences d\'images prises par une caméra embarquée sur un véhicule', 'Boutteau, R.', '2006', 'THESIS', 'Projet de Fin d\'Etudes (Graduation Project), Ecole des Mines de Douai', '', '', ''),
(77, 'Reconstruction tridimensionnelle de l\'environnement d\'un robot mobile, à partir d\'informations de vision omnidirectionnelle', 'Boutteau, R.', '2010', 'THESIS', 'Thèse de doctorat (PhD Thesis), Université de Rouen Normandie', 'https://tel.archives-ouvertes.fr/tel-00711922v2/document', 'https://hal.archives-ouvertes.fr/tel-00711922', ''),
(78, 'Contribution à la localisation pour le véhicule autonome', 'Boutteau, R.', '2018', 'THESIS', 'Habilitation à Diriger des Recherches (French Habilitation to supervise research), Université de Rouen Normandie', 'https://hal.archives-ouvertes.fr/tel-01963712/document', 'https://tel.archives-ouvertes.fr/tel-01963712/', ''),
(79, 'SPECTRA: Synchronized Stereo Event-Camera Driving Dataset for Diverse Perception Tasks', 'Dachraoui, J., El Moudni, A., Planterose, E., Kramm, S., Morbidi, F., Boutteau, R.', '2025', 'CONFINT', 'Workshop NeuRobots', '', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles_conferences_internationales`
--
ALTER TABLE `articles_conferences_internationales`
  ADD UNIQUE KEY `id_publication` (`id_publication`),
  ADD KEY `id_conference_int` (`id_conference_int`) USING BTREE;

--
-- Index pour la table `articles_conferences_nationales`
--
ALTER TABLE `articles_conferences_nationales`
  ADD UNIQUE KEY `id_publication` (`id_publication`),
  ADD KEY `id_conf_nat` (`id_conference_nat`) USING BTREE;

--
-- Index pour la table `articles_journaux_internationaux`
--
ALTER TABLE `articles_journaux_internationaux`
  ADD UNIQUE KEY `id_publication` (`id_publication`),
  ADD KEY `id_journal` (`id_journal_int`) USING BTREE;

--
-- Index pour la table `conferences_internationales`
--
ALTER TABLE `conferences_internationales`
  ADD PRIMARY KEY (`id_conference_int`);

--
-- Index pour la table `conferences_nationales`
--
ALTER TABLE `conferences_nationales`
  ADD PRIMARY KEY (`id_conference_nat`);

--
-- Index pour la table `journaux_internationaux`
--
ALTER TABLE `journaux_internationaux`
  ADD PRIMARY KEY (`id_journal_int`);

--
-- Index pour la table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id_publication`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `publications`
--
ALTER TABLE `publications`
  MODIFY `id_publication` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles_conferences_internationales`
--
ALTER TABLE `articles_conferences_internationales`
  ADD CONSTRAINT `articles_conferences_internationales_ibfk_1` FOREIGN KEY (`id_publication`) REFERENCES `publications` (`id_publication`),
  ADD CONSTRAINT `articles_conferences_internationales_ibfk_2` FOREIGN KEY (`id_conference_int`) REFERENCES `conferences_internationales` (`id_conference_int`);

--
-- Contraintes pour la table `articles_conferences_nationales`
--
ALTER TABLE `articles_conferences_nationales`
  ADD CONSTRAINT `articles_conferences_nationales_ibfk_1` FOREIGN KEY (`id_publication`) REFERENCES `publications` (`id_publication`),
  ADD CONSTRAINT `articles_conferences_nationales_ibfk_2` FOREIGN KEY (`id_conference_nat`) REFERENCES `conferences_nationales` (`id_conference_nat`);

--
-- Contraintes pour la table `articles_journaux_internationaux`
--
ALTER TABLE `articles_journaux_internationaux`
  ADD CONSTRAINT `articles_journaux_internationaux_ibfk_1` FOREIGN KEY (`id_journal_int`) REFERENCES `journaux_internationaux` (`id_journal_int`),
  ADD CONSTRAINT `articles_journaux_internationaux_ibfk_2` FOREIGN KEY (`id_publication`) REFERENCES `publications` (`id_publication`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
