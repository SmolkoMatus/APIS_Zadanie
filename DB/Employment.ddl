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
-- Štruktúra tabuľky pre tabuľku `Employment`
--

CREATE TABLE `Employment` (
  `ID` int(11) NOT NULL,
  `AddressEmployment` text DEFAULT NULL,
  `EmailEmployment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `Employment`
--

INSERT INTO `Employment` (`ID`, `AddressEmployment`, `EmailEmployment`) VALUES
(1, 'Kosice', 'abc@abc.sk'),
(2, 'Bratislava', 'ac@ac.sk');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `Employment`
--
ALTER TABLE `Employment`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `Employment`
--
ALTER TABLE `Employment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
