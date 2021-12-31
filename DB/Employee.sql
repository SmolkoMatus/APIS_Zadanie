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
-- Štruktúra tabuľky pre tabuľku `Employee`
--

CREATE TABLE `Employee` (
  `ID` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  `Hours` float DEFAULT NULL,
  `WorkPositionID` int(11) DEFAULT NULL,
  `EmploymentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `Employee`
--

INSERT INTO `Employee` (`ID`, `Name`, `Hours`, `WorkPositionID`, `EmploymentID`) VALUES
(1, 'Jozef Mrkvicka', 400, 1, 1),
(2, 'Jana Skladna', 214, 2, 2),
(10, 'Adrian Mocný', 478, 2, 1),
(12, 'Adrian', 458, 2, 1),
(13, 'Adrian', 458, 2, 1),
(14, 'Adrian', 458, 2, 1);

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `WorkPositionEmployeeID` (`WorkPositionID`),
  ADD KEY `EmploymentEmployeeID` (`EmploymentID`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `Employee`
--
ALTER TABLE `Employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Obmedzenie pre exportované tabuľky
--

--
-- Obmedzenie pre tabuľku `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `EmploymentEmployeeID` FOREIGN KEY (`EmploymentID`) REFERENCES `Employment` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `WorkPositionEmployeeID` FOREIGN KEY (`WorkPositionID`) REFERENCES `WorkPosition` (`ID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
