-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 29, 2020 alle 18:18
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flowershop`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `flowers`
--

CREATE TABLE `flowers` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `opportunity_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `flowers`
--

INSERT INTO `flowers` (`id`, `name`, `opportunity_id`, `price`, `quantity`, `created`, `modified`) VALUES
(1, 'dalia', 1, 3, 21, '2020-04-29 17:57:30', '2020-04-29 17:57:30'),
(2, 'tulipani', 3, 4, 20, '2020-04-29 17:59:15', '2020-04-29 17:59:15'),
(3, 'calle bianche', 2, 1, 12, '2020-04-29 17:59:30', '2020-04-29 17:59:30');

-- --------------------------------------------------------

--
-- Struttura della tabella `opportunities`
--

CREATE TABLE `opportunities` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `opportunities`
--

INSERT INTO `opportunities` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'compleanno', 'uno in piu, una volta ogni anno', '2020-04-29 17:59:49', '2020-04-29 17:59:49'),
(2, 'nascita', 'nuovi arrivati in famiglia', '2020-04-29 18:00:04', '2020-04-29 18:00:04'),
(3, 'matrimonio', 'un giorno o tutta la vita', '2020-04-29 18:00:15', '2020-04-29 18:00:15');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opportunity_id` (`opportunity_id`);

--
-- Indici per le tabelle `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `flowers`
--
ALTER TABLE `flowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `opportunities`
--
ALTER TABLE `opportunities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
