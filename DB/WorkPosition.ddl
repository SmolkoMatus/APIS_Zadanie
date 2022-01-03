-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: localhost:3306
-- Čas generovania: Pi 31.Dec 2021, 12:08
-- Verzia serveru: 10.3.31-MariaDB-0+deb10u1
-- Verzia PHP: 7.3.29-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `sl267qr`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `WorkPosition`
--

CREATE TABLE `WorkPosition` (
  `ID` int(11) NOT NULL,
  `WorkPositionName` text DEFAULT NULL,
  `ActivityCosts` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `WorkPosition`
--

INSERT INTO `WorkPosition` (`ID`, `WorkPositionName`, `ActivityCosts`) VALUES
(1, 'Skladnik', 5.43),
(2, 'Sekretarka', 8.55);

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `WorkPosition`
--
ALTER TABLE `WorkPosition`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `WorkPosition`
--
ALTER TABLE `WorkPosition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
