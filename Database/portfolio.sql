-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Kas 2020, 14:25:48
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `portfolio`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

CREATE TABLE `anasayfa` (
  `id` int(11) NOT NULL,
  `yazi1` varchar(255) NOT NULL,
  `yazi2` varchar(255) NOT NULL,
  `yazi3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `anasayfa`
--

INSERT INTO `anasayfa` (`id`, `yazi1`, `yazi2`, `yazi3`) VALUES
(1, 'can112', 'candeneme222', 'deneme');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `sitebaslik` varchar(255) NOT NULL,
  `sitekeywords` varchar(255) NOT NULL,
  `sitedescription` varchar(255) NOT NULL,
  `sitedurum` varchar(255) NOT NULL,
  `sitegithub` varchar(255) NOT NULL,
  `siteinstagram` varchar(255) NOT NULL,
  `sitemail` varchar(255) NOT NULL,
  `siteuser` varchar(255) NOT NULL,
  `sitepass` varchar(255) NOT NULL,
  `siteadsoyad` varchar(255) NOT NULL,
  `sitemeslek` varchar(255) NOT NULL,
  `siteresim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `sitebaslik`, `sitekeywords`, `sitedescription`, `sitedurum`, `sitegithub`, `siteinstagram`, `sitemail`, `siteuser`, `sitepass`, `siteadsoyad`, `sitemeslek`, `siteresim`) VALUES
(0, 'deneme1222', 'Portfolio sitesi ', 'portfolio', '1', 'www.github.com', 'www.instagram.com', 'deneme6', 'canyksl', '8304424asd', 'Can Yüksel', 'Web Developer', 'pp-3asd.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calismalar`
--

CREATE TABLE `calismalar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `aciklama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `calismalar`
--

INSERT INTO `calismalar` (`id`, `baslik`, `resim`, `aciklama`) VALUES
(13, 'deneme2222', 'IMG-20161119-WA0000.jpg', 'deneme222'),
(14, 'deneme5678', 'pp-3asd.png', 'deneme5678'),
(15, 'deneme5', 'cokyakinda.png', 'deneme5'),
(16, 'deneme', 'sosyal.png', 'dedede');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `yazi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `resim`, `yazi`) VALUES
(1, '591x591.tif', 'espiritüel');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `isim` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mesaj` varchar(255) NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `durum` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `isim`, `email`, `mesaj`, `tarih`, `durum`) VALUES
(1, 'deneme', 'deneme@deneme.com', 'deneme', '2020-10-16 12:20:41', '1'),
(3, 'Can Yüksel', 'deneme', 'deeneme', '2020-10-16 12:21:42', '1'),
(4, 'hasan', 'hasan@hasan.com', 'hasan naber', '2020-10-17 18:08:29', '1'),
(5, 'hasan', 'hasan@hasan.com', 'hasan naber', '2020-10-17 13:49:42', '0');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anasayfa`
--
ALTER TABLE `anasayfa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `calismalar`
--
ALTER TABLE `calismalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `calismalar`
--
ALTER TABLE `calismalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
