-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2017. Máj 09. 11:06
-- Kiszolgáló verziója: 10.1.21-MariaDB
-- PHP verzió: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `practice_app`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `db_post`
--

CREATE TABLE `db_post` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `db_post`
--

INSERT INTO `db_post` (`id`, `author`, `text`, `date`) VALUES
(14, 'John', 'I had a great time today.', '2017-05-07 09:31:18'),
(15, 'Mark', 'I did\'nt', '2017-05-07 09:31:18'),
(16, 'Anonymous', 'I really like this forum.', '2017-05-07 09:32:18'),
(17, 'Jessica', 'My dog just ate poop.', '2017-05-07 09:32:18'),
(18, 'asd', 'Can you see my post?', '2017-05-07 09:40:14'),
(19, 'Valaki', 'Yes.', '2017-05-07 09:40:33'),
(20, 'Valaki', 'werweio', '2017-05-08 08:08:41'),
(21, 'Valaki', 'asd', '2017-05-09 09:01:33');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1494074827),
('m130524_201442_init', 1494074836);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'anoQWLYIgvk1K3VblMZPHwBdRje0AyBc', '$2y$13$YeinS3s0PHsaJJ21USR.YOo5MG6UwLxPadlEDmq/zxy3WrLbcPVVy', NULL, 'asd@asd.hu', 10, 1494074926, 1494074926),
(2, 'Valaki', 'OKizE_eSIHLgJoUy8xVnq1YTaVYmNIKs', '$2y$13$tmYmRIBovzfJmsOhDMXYKuySu7SgWS3U/xvQB8g16ZTNbe0eX0vv.', NULL, 'valaki@valaki.hu', 10, 1494149665, 1494149665);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `db_post`
--
ALTER TABLE `db_post`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `db_post`
--
ALTER TABLE `db_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
