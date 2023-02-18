-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2023 at 02:22 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notesapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'clothes'),
(2, 'electronic'),
(3, 'study'),
(4, 'cars');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `body`) VALUES
(2, 'zdzad', 'zdzadzad'),
(6, 'zdazd', 'zadz'),
(10, 'ddd', 'zzdz');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `paymentType` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `made_pays` varchar(100) NOT NULL,
  `guess_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `body`, `paymentType`, `category_id`, `date_order`, `made_pays`, `guess_price`) VALUES
(1, 'T-shirt', 'es these days have a system to notify users of specific actions that have been taken in relation to them, perhaps another user on your site has comme', 'cash', 1, '2023-02-16 22:26:41', 'china', 100),
(2, '10 Caps', 'ckable message to display in subscribed user’s web browsers like Chrome, Firefox, Safari etc.', 'virement', 2, '2023-02-16 22:26:41', 'china', 210),
(3, 'T-shirt', 'We will cover this tutorial step by step with live example to create notifications with push details by administrator and normal can login to ', 'cash', 3, '2023-02-16 22:26:41', 'china', 150),
(4, '10 Caps', 'I want it a computer', 'virement', 4, '2023-02-16 22:26:41', 'china', 250),
(5, 'pontalon', 'I want book', 'cash', 4, '2023-02-16 22:26:41', 'maroc', 1000),
(6, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' aI want book', 'virement', 3, '2023-02-16 22:26:41', 'china', 2000),
(7, 'car', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 1, '2023-02-15 18:50:02', 'germany', 4000),
(8, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 3, '2023-02-15 18:54:03', 'china', 2500),
(9, 'book', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'cash', 4, '2023-02-15 18:54:03', 'america', 6000),
(10, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 2, '2023-02-15 18:50:02', 'china', 1400),
(11, 'T-shirt', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'cash', 1, '2023-02-15 18:50:02', 'china', 2000),
(12, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 2, '2023-02-15 18:50:02', 'china', 3500),
(13, 'pontalon', 'I want pontalon with Green Color and size of X with name \'Ali\' and Happy Birthday', 'cash', 1, '2023-02-15 18:50:02', 'maroc', 5000),
(14, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 2, '2023-02-15 18:50:02', 'china', 470),
(15, 'bike', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 1, '2023-02-15 18:50:02', 'germany', 20000),
(16, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 2, '2023-02-15 18:50:02', 'china', 170);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
