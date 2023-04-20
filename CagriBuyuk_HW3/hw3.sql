-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 28 May 2022, 10:01:26
-- Sunucu sürümü: 10.3.12-MariaDB
-- PHP Sürümü: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `team` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `supervisor` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `likeit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`team`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `projects`
--

INSERT INTO `projects` (`team`, `name`, `supervisor`, `likeit`) VALUES
(1, 'Pet Care Application', 'Seyid Amjad Ali', 0),
(2, 'A Platform for Tournament Organization', 'Serkan Genç', 0),
(3, 'IoT Farming', 'Cüneyt Sevgi', 1),
(4, 'Mobile Application based on Reasonable Matchmaking ', 'Burcu Liman', 0),
(5, 'A Storage Rental Solution on P2P Business Model', 'Neşe Şahin', 0),
(6, 'Robot Wars Mobile Game', 'Murat Yıldırım', 0),
(7, 'Location-based neighbour interacting platform', 'Ceren Serim', 0),
(8, 'On demand location optimized work order distribution', 'Füsun Yürüten', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `team` int(11) NOT NULL,
  `tagName` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`team`,`tagName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `tags`
--

INSERT INTO `tags` (`team`, `tagName`) VALUES
(1, 'health'),
(1, 'social'),
(1, 'web'),
(2, 'ai'),
(2, 'broadcast'),
(2, 'game'),
(2, 'web'),
(3, 'hardware'),
(3, 'iot'),
(3, 'mobile'),
(4, 'ai'),
(4, 'mobile'),
(4, 'social'),
(5, 'p2p'),
(5, 'social'),
(5, 'web'),
(6, 'ai'),
(6, 'game'),
(6, 'multiuser'),
(7, 'mobile'),
(7, 'social'),
(8, 'ai'),
(8, 'mobile'),
(8, 'web');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
